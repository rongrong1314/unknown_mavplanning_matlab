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
                            'numsamples', 8 ...
                            );
        % Local Map parameters
        localmap = struct('width', 5, ...
                          'height', 5, ...
                          'resolution', 10);
                      
        hilbertmap = struct('enable', true, ...
                            'kernel', 'rbf', ...
                            'momentum', 0, ...%Momentum method flag for SGD
                            'num_samples', 100, ...
                            'resolution', 10, ...
                            'radius', 0.4, ...
                            'max_iteration', 20, ...
                            'learningrate', 0.3, ...
                            'render', true, ...
                            'render_resolution', 10, ...
                            'plot', true);
                            

        sensor = struct('fov', 0.7*pi(), ...
                        'maxrange', 1.5);
        
        mav = struct('size', 0.5);
        
        % Planner
        planner = 'informativechomp'
        plan_horizon = 5;
        update_rate = 1;        
        
        global_planner = 'optimistic';
        globalreplan = true;
        localgoal = 'nextbestview'
        
        start_point = [0.5 0.5];
        goal_point = [3.5 3.5];

        
    end 
    methods
    end
end