%-----------------------------------------------------------------
% This function computes the joint configuration for a given
% tool center point (TCP) position (nozzle) in the printing
% plate's coordinate frame
%-----------------------------------------------------------------
% input:
%  position         [3x1] column vector of requested TCP position as
%                         x,y,z coordinates in the printing plates's
%                         coordinate frame.
%  kinematicParams  [7x1] column vector containing the parameters
%                         l_a, l_b, l_c, l_d, o_x, o_y, o_z
%  jointLimits      [6x1] column vector containing the lower joint
%                         limits of each joint q1Min, q2Min, q3Min
%                         and corresponding upper joint limits
%                         q1Max, q2Max and q3Max:
%                         [q1Min; q2Min; q3Min; q1Max; q2Max; q3Max]
%-----------------------------------------------------------------
% return:
%  q                [3x1] column vector of needed joint configutations
%                         to reach the requested TCP position.
%                         Column vector is empty if requested position
%                         is outside the workspace.
%-----------------------------------------------------------------
function q = compute3DPrinterInverseKinematics(position, kinematicParams, jointLimits)
  % Default return value
  q = [];

%=========== Your implementation for task b) ===========
  
  rp3 = position;
  l_a = kinematicParams(1);
  l_b = kinematicParams(2);
  l_c = kinematicParams(3);
  l_d = kinematicParams(4);
  o_x = kinematicParams(5);
  o_y = kinematicParams(6);
  o_z = kinematicParams(7);
  
  eps = 1e-6;
  
  r03 = rp3 - [o_x, o_y, o_z];
  

  
  
  
  
  
  
  
  if ((q1Min - q1) > eps || (q2Min - q2) > eps || (q3Min - q3) > eps || (q1 - q1Max) > eps || (q2 - q2Max) > eps || (q3 - q3Max) > eps)
  
  else
  
  end
  
  
  function dhMat = buildDHMat(Theta, Alpha, a, d) {
      a11 = cos(Theta);
      a12 = -sin(Theta) * cos(Alpha);
      a13 = sin(Theta) * sin(Alpha);
      a14 = a * cos(Theta);
      
      a21 = sin(Theta);
      a22 = cos(Theta) * cos(Alpha);
      a23 = -cos(Theta) * sin(Alpha);
      a24 = a * sin(Theta);
      
      a32 = sin(Alpha);
      a33 = cos(Alpha);
      a34 = d;
      
      dhMat = [ a11, a12, a13, a14;
                a21, a22, a23, a24;
                0.0, a32, a33, a34;
                0.0, 0.0, 0.0, 1.0];
   end
%=========== End of your implementation ===========

end
