function [T, mavPath, failure] = navigate(params, binmap_true)
%% Initialize Parameters
plan_horizon = 10;
update_rate = 10;
dt = 0.1;
mavPath = [];
T = 0;
failure = false;

%% Plan Optimistic global trajectory 
global_start = params.start_point; % Set gloabl start and goal position
global_goal = params.goal_point;
init_yaw = atan2(global_goal(2)-global_start(2), global_goal(1)-global_start(1));
mavPose = [global_start, init_yaw]; % Current position starts from global start
mavVel = [0.0, 0.0];
% Initialize Local map
localmap_obs = robotics.OccupancyGrid(params.globalmap.width, params.globalmap.height, params.globalmap.resolution);

map_partial = get_localmap('increment', binmap_true, localmap_obs, params, mavPose); % 
opt_binmap = get_optimisticmap(map_partial, params, mavPose); % Optimistic binary occupancy grid

% Plan global trajectory
switch params.global_planner
    case 'optimistic'
        % Global plan based on optimistic map
        [~, globalpath] = plan_trajectory('polynomial', opt_binmap, global_start, global_goal);
     
    case 'true'
        % Global plan based on true map
        [~, globalpath] = plan_trajectory('polynomial', binmap_true, global_start, global_goal);

end
% Parse intermediate goal from global path
% local_start = globalpath(sum(T < update_rate), :);

%% Local replanning from global path
[localmap_obs, ~] = get_localmap('increment', binmap_true, localmap_obs, params, mavPose);     % Create a partial map based on observation

while true        
    % Replan Local trajectory from trajectory replanning rate
    cons_binmap = get_conservativemap(localmap_obs, params, mavPose);

    local_start = mavPose(1:2);
    local_goal = getLocalGoal(params, cons_binmap, mavPose, globalpath, global_goal, plan_horizon); % Parse intermediate goal from global path

    [localT, localpath] = plan_trajectory('chomp', cons_binmap, local_start, local_goal, mavVel);
    if detectLocalOptima(localpath)
        switch params.globalreplan
            case false
                failure = true;
                disp('Stuck in local goal!');
                break;
            case true
                opt_binmap = get_optimisticmap(map_partial, params, mavPose); % Optimistic binary occupancy grid
                % Global plan based on optimistic map
                [~, globalpath] = plan_trajectory('polynomial', opt_binmap, local_start, global_goal);
        end
    end
    %% Move along local trajectory
    for t = 1:dt:update_rate
        [mavPose, mavVel] = posefromtrajectoy(localpath, localT, t);
        %TODO: Collision Checking
        mavPath = [mavPath; mavPose(1:2)]; % Record trajectory
        T = T + dt;
        [localmap_obs, ~] = get_localmap('increment', binmap_true, localmap_obs, params, mavPose);     % Create a partial map based on observation
        
        if params.visualization
            plot_summary(params, binmap_true, localmap_obs, mavPath, localpath, globalpath, mavPose); % Plot MAV moving in environment
        end
        
        if goalreached(mavPose(1:2), global_goal)
            break;
        end
    end
    if goalreached(mavPose(1:2), global_goal)
        disp('Goal Reached!');
        break;
    end
end

end