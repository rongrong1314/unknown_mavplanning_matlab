classdef Param_LOCALTINYRANDOMFOREST
    properties
        
        visualization = 'summary';
        generate_data = true;
        
        map_type = 'randomforest';
        map_generate = true;
        mapping = 'local';
        
        % Gloabal Map parameters
        globalmap = struct('width', 4, ...
                            'height', 4, ...
                            'inflation', 0.4, ...
                            'resolution', 10, ...
                            'numsamples', 8 ...
                            );
        % Local Map parameters
        localmap = struct('width', 10, ...
                          'height', 10, ...
                          'resolution', 10);
                      
        hilbertmap = struct('enable', true, ...
                            'kernel', 'rbf', ...
                            'momentum', 0, ...%Momentum method flag for SGD
                            'num_samples', 100, ...
                            'resolution', 10, ...
                            'radius', 0.4, ...
                            'pattern', 'grid', ...
                            'max_iteration', 20, ...
                            'learningrate', 0.3, ...
                            'render', true, ...
                            'render_resolution', 10, ...
                            'plot', true);

        sensor = struct('fov', 0.7*pi(), ...
                        'maxrange', 1.5);
        
        mav = struct('size', 0.5);
        
        % Planner
        planner = struct('type', 'hilbertchomp', ...
                         'num_segments', 1, ...
                         'cost_der', 0.0001, ...
                         'cost_coll', 15, ...
                         'cost_goal', 20, ...
                         'cost_entropy', 0.1);
        plan_horizon = 5;
        update_rate = 1;        
        
        global_planner = 'optimistic';
        globalreplan = false;
        localgoal = 'nextbestview'
        
        start_point = [0.5 0.5];
        goal_point = [3.5 3.5];

        
    end 
    methods
    end
end