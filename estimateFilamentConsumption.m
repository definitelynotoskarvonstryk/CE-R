%-----------------------------------------------------------------
% This function estimates the used filament length in meter and
% accumulates the length in each function call.
%-----------------------------------------------------------------
% input:
%  position      [3x1] colums vector of the printer's tool center
%                      point (nozzle) containing x,y,z coordinate
%                      according the plate's coordinate frame.
%  extrusion     bool  A logical value (true, false) which is true
%                      if filament is currently extruded an false
%                      otherwise.
%  init          bool  A logical value (true, false) controlling
%                      if this function has to be initialized.
%-----------------------------------------------------------------
% return:
%  consuption    scalar value of the estimated filament lenght that
%                       is consumed during printing motion.
%  init          bool   Return init value for next iteration
%-----------------------------------------------------------------

function [consumption init] = estimateFilamentConsumption(position, extrusion, init)
  % Initialize variables
  persistent lastPosition = position;
  persistent length = 0.0;
  if init
    lastPosition = position;
    length = 0.0;
    init = false;
  end

%=========== Your implementation for task c) ===========

  if extrusion
    length = length + norm(position-lastPosition);
  end
  lastPosition = position;
%=========== End of your implementation ===========

  % Return estimation
  consumption = length;
end
