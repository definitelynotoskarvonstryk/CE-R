%-----------------------------------------------------------------
%  This function returns the waypoints and corresponding extrusion
%  commands for a given letter.
%-----------------------------------------------------------------
% input:
%  letter         char The letter for which the waypoints and extrusion
%                      commands are requested for printing.
%-----------------------------------------------------------------
% return:
%  path           [nx3] matrix containing the waypoints of the
%                       requested letter with each row consisting
%                       of the x,y,z waypoint coordinates
%  extruding      [nx1] column vector containing the extrusion
%                       commands, if extruding is startet (1) or
%                       stopped (0) after reaching the corresponding
%                       waypoint in the path variable.
%-----------------------------------------------------------------
function [path, extruding] = dictionary(letter)
  % Default return values
  path = [];
  extruding = [];

%=========== Your implementation for task a), b) and c) ===========

  if (letter == "C")
    path = [ 0,    0,    1;
            0,    0,    0;
            0,    2,    0; 
            1,    2,    0;
            1,    1.8,  0;
            0.2,  1.8,  0;
            0.2,  0.2,  0;
            1,    0.2,  0;
            1,    0,    0;
            0,    0,    0;
            0,    0,    1];
            
    extruding = [0; 1; 1; 1; 1; 1; 1; 1; 1; 0; 0];  
    
  elseif (letter == "E")
    path = [ 0,     0,    1;
            0,     0,    0;
            0,     2,    0; 
            1,     2,    0;
            1,     1.8,  0;
            0.2,   1.8,  0;
            0.2,   1.1,  0;
            1,     1.1,  0;
            1,     0.9,  0;
            0.2,   0.9,  0;
            0.2,   0.2,  0;
            1,     0.2,  0;
            1,     0,    0;
            0,     0,    0;
            0,     0,    1];

    extruding = [0; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 0; 0]; 
  
  elseif (letter == "R")
    path = [ 0,     0,    1;
            0,     0,    0;
            0,     2,    0; 
            1,     2,    0;
            1,     0.9,  0;
            0.6,   0.9,  0;
            1,     0,    0;
            0.8,   0,    0;
            0.4,   0.9,  0;
            0.4,   1.1,  0;
            0.8,   1.1,  0;
            0.8,   1.8,  0;
            0.2,   1.8,  0;
            0.2,   0,    0;
            0,     0,    0;
            0,     0,    1];
            
    extruding = [0; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 0; 0];  
  end
  
    
   
  
 


%=========== End of your implementation ===========
end
