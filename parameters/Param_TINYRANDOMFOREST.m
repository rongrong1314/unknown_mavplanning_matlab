classdef Param_TINYRANDOMFOREST
    properties
        
        visualization = 'summary';
        generate_data = false;
        
        map_type = 'randomforest';
        map_generate = true;
        mapping = 'increment';
        
        % Gloabal Map parameters
        globalmap = struct('width', 4, ...
                            'height', 4, ...
                            'inflation', 0.4, ...
                            'resolution', 10, ...
                            'numsamples', 4 ...
                            );
        % Local Map parameters
        localmap = struct('width', 5, ...
                          'height', 5, ...
                          'resolution', 10);
                      
        hilbertmap = struct('enable', true, ...
                            'kernel', 'sparse', ...
                            'momentum', 0.0, ...%Momentum method flag for SGD
                            'resolution', 10, ...
                            'radius', 0.4, ...
                            'max_iteration', 100, ...
                            'learningrate', 0.3, ...
                            'render', false, ...
                            'render_resolution', 20, ...
                            'plot', true);
                            

        sensor = struct('fov', 0.5*pi(), ...
                        'maxrange', 10);
        
        mav = struct('size', 0.5);
        
        % Planner
        planner = 'chomp'
        plan_horizon = 5;
        update_rate = 1;        
        
        global_planner = 'optimistic';
        globalreplan = true;
        localgoal = 'random'
        
        start_point = [1.0 1.0];
        goal_point = [3.0 3.0];

        
    end 
    methods
    end
end