classdef Param_LOCALRANDOMFOREST
    properties
        
        visualization = 'summary';
        generate_data = true;
        
        map_type = 'randomforest';
        map_generate = true;
        mapping = 'local';
        
        % Gloabal Map parameters
        globalmap = struct('width', 20, ...
                            'height', 20, ...
                            'inflation', 0.4, ...
                            'resolution', 10, ...
                            'numsamples', 20 ...
                            );
        % Local Map parameters
        localmap = struct('width', 10, ...
                          'height', 10, ...
                          'resolution', 10);
                      
        hilbertmap = struct('enable', true, ...
                            'kernel', 'rbf', ...
                            'momentum', 0, ...%Momentum method flag for SGD
                            'num_samples', 200, ...
                            'resolution', 2, ...
                            'radius', 1, ...
                            'pattern', 'grid', ...
                            'max_iteration', 400, ...
                            'learningrate', 0.3, ...
                            'render', true, ...
                            'render_resolution', 20, ...
                            'plot', true);

        sensor = struct('fov', 0.5*pi(), ...
                        'maxrange', 4);
        
        mav = struct('size', 0.5);
        
        % Planner
        planner = struct('type', 'hilbertchomp', ...
                         'num_segments', 1, ...
                         'cost_der', 0.0001, ...
                         'cost_coll', 15, ...
                         'cost_goal', 10, ...
                         'cost_entropy', 0.1);
        plan_horizon = 5;
        update_rate = 1;        
        
        global_planner = 'optimistic';
        globalreplan = false;
        localgoal = 'nextbestview'
        
        start_point = [2.0 2.0];
        goal_point = [18.0 18.0];

        
    end 
    methods
    end
end