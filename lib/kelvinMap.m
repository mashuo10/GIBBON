function cKelvin=kelvinMap(c)

% function cKelvin=kelvinMap(c)
% ------------------------------------------------------------------------
%
% This function creates the Kelvin mapped (6x6) tensor form of the 4-th
% order (3x3x3x3) input tensor. 
%
% ------------------------------------------------------------------------

%%

cVoigt=voigtMap(c);
x=[1 1 1 sqrt(2) sqrt(2) sqrt(2)]; %conversion Voigt to Kelvin form

if ~isvector(cVoigt) %assume that c is a 4th order tensor
    X=x.'*x;
    cKelvin=X.*cVoigt;
elseif isvector(cVoigt) %assume that c is a 2nd order tensor
    cKelvin=cVoigt.*x';
end
 
%% 
% _*GIBBON footer text*_ 
% 
% License: <https://github.com/gibbonCode/GIBBON/blob/master/LICENSE>
% 
% GIBBON: The Geometry and Image-based Bioengineering add-On. A toolbox for
% image segmentation, image-based modeling, meshing, and finite element
% analysis.
% 
% Copyright (C) 2006-2022 Kevin Mattheus Moerman and the GIBBON contributors
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
