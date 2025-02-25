% Rule to predict the water resource based on the given decision tree
find_optimal_water_resource(LakeDist, 
							RiverDist, 
							Rainfall, 
							SandyAquifer, 
							BeachDist, 
							Source) :-
	number(LakeDist),
	number(RiverDist),
	number(Rainfall),
	number(BeachDist),

    (
        % If Lake distance is less than 10 km, choose lake
        LakeDist < 10 -> Source = lake;
        
        % If Lake distance is >= 10 km, check river distance
        LakeDist >= 10, RiverDist < 8 ->
            (   
                % If river distance is < 8 km, check rainfall
                Rainfall >= 200 -> Source = rain;
                Rainfall < 200 -> Source = river
            );
        
        % If Lake distance is >= 10 km and River distance >= 8 km
        LakeDist >= 10, RiverDist >= 8 ->
            (
                % Check rainfall intensity
                Rainfall > 150 -> Source = rain;
                
                % If Rainfall <= 150, check sandy aquifer
                Rainfall =< 150, SandyAquifer = no ->
                    (
                        % If Sandy Aquifer is no, check Lake distance
                        LakeDist < 14 -> Source = lake;
                        LakeDist >= 14 -> Source = rain
                    );

                Rainfall =< 150, SandyAquifer = yes ->
                    (
                        % If Sandy Aquifer is yes, check beach distance
                        BeachDist >= 5 -> Source = groundwater;
                        BeachDist < 5 ->
                            (
                                % If BeachDist < 5, check river distance
                                RiverDist >= 20 -> Source = rain;
                                RiverDist < 20 -> Source = river
                            )
                    )
            )
    ).

% Prompting the user and predict the water source
optimal_water_source :-
    write('Enter distance to the lake (in km): '),
    read(LakeDist),
    number(LakeDist),  % Please enter the input as a number
    
    write('Enter distance to the river (in km): '),
    read(RiverDist),
    number(RiverDist),  % Please enter the input as a number
    
    write('Enter average rainfall (in mm/month): '),
    read(Rainfall),
    number(Rainfall),  % Please enter the input as a number
    
    write('Is the aquifer sandy (yes/no)? '),
    read(SandyAquiferInput),
    % Convert the string input 'yes/no' to atoms yes or no
    ( SandyAquiferInput = 'yes' -> SandyAquifer = yes;
      SandyAquiferInput = 'no' -> SandyAquifer = no;
      write('Invalid input for sandy aquifer!'), nl, fail  % Fail if invalid input
    ),
    
    write('Enter distance to the beach (in km): '),
    read(BeachDist),
    number(BeachDist),  % Please enter the input as a number
    
    % Call the decision tree rule to decide the water source
    find_optimal_water_resource(LakeDist, RiverDist, Rainfall, SandyAquifer, BeachDist, Source),
    format('The suitable water resource for this community as per the given inputs
			is: ~w', [Source]).

