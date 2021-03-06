function gen_observations(params, videoObj)

%% Generate Global Trajectory

switch params.map_type
    case 'randomforest'
        binmap_true = create_random_map(params.globalmap.width, params.globalmap.height, params.globalmap.resolution, params.globalmap.numsamples, params.globalmap.inflation);
        
    case 'image'
        binmap_true = create_image_map(params.map_path);
    
    otherwise
        print('map generation option is not valid');
end

setOccupancy(binmap_true, vertcat(params.start_point, params.goal_point, ...
  params.start_point+0.05, params.goal_point+0.05, params.start_point-0.05, params.goal_point-0.05), 0);

[~, path] = plan_trajectory(params.planner, binmap_true, params.start_point, params.goal_point);

%% Random sample pose inside the map
% Sample position and check if it is free

localmap_obs = robotics.OccupancyGrid(params.globalmap.width, params.globalmap.height, params.globalmap.resolution);

for j = 1:size(path, 1)-1
    position = path(j, :);
    velocity = path(j +1, :) - path(j, :);
    ram = atan2(velocity(2), velocity(1));
    
    mavPose = [position, ram];
    %% Generate Local map
    % Create a partial map based on observation
    [localmap_obs, localmap_full] = get_localmap(params.mapping, binmap_true, localmap_obs, params, mavPose);

    %% Plot
    switch params.visualization
        case 'summary'
            plot_summary(params, binmap_true, localmap_obs, path, path, mavPose, videoObj);
        case 'frequency'
            plot_fft(params, binmap_true, localmap_obs, path, mavPose, videoObj);
    end
    
    if params.generate_data
        directory = 'data';
        ffilepath = strcat(directory ,'/fullmap/', int2str(j),'.jpg');
        imwrite(1-localmap_full.occupancyMatrix, ffilepath);
        pfilepath = strcat(directory ,'/partialmap/', int2str(j),'.jpg');
        imwrite(1-localmap_obs.occupancyMatrix, pfilepath);
    end
end
end