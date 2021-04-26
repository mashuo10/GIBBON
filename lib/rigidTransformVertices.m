function [Vm]=rigidTransformVertices(V,T,v)

Vm=V; 
[I,J,K]=cart2im(V(:,1),V(:,2),V(:,3),v); %Convert to image coordinates
IJK=[I(:) J(:) K(:) ones(size(I(:)))]; %Prepare for mapping
IJK_mapped=(T*IJK')'; %Do mapping
[Vm(:,1),Vm(:,2),Vm(:,3)]=im2cart(IJK_mapped(:,1),IJK_mapped(:,2),IJK_mapped(:,3),v); %Convert mapped image coordinates back to "Cartesian" coordinates
 
%% 
% _*GIBBON footer text*_ 
% 
% License: <https://github.com/gibbonCode/GIBBON/blob/master/LICENSE>
% 
% GIBBON: The Geometry and Image-based Bioengineering add-On. A toolbox for
% image segmentation, image-based modeling, meshing, and finite element
% analysis.
% 
% Copyright (C) 2006-2021 Kevin Mattheus Moerman and the GIBBON contributors
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
