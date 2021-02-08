% /***************************************************************************
%  *   Copyright (C) 2006 by Leonid Livshitz and Yoram Rudy                  *
%  *   Email rudy@wustl.edu                                                  *
%  *                                                                         *
%  *   Modifications, Copyright (C) 2013 by Osman Villanueva Garcia          *
%  *   Email osman@educart.org                                               *
%  *                                                                         *
%  *   This program is free software: you can redistribute it and/or modify  *
%  *   it under the terms of the GNU General Public License as published by  *
%  *   the Free Software Foundation, either version 3 of the License, or     *
%  *   (at your option) any later version.                                   *
%  *                                                                         *
%  *   This program is distributed in the hope that it will be useful,       *
%  *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
%  *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
%  *   GNU General Public License for more details.                          *
%  *                                                                         *
%  *   You should have received a copy of the GNU General Public License     *
%  *   along with this program.  If not, see <https://www.gnu.org/licenses/> *
%  ***************************************************************************/
% Concentraciones ionicas estandares para celulas ventriculares
%data.K_o = 5.4;                 % mM
data.K_i = 145;                  % mM
%data.Na_o = 140;                % mM
data.Ca_o = 1.8;                 % mM
data.Na_i = 10;                  % mM
data.F = 96.5;                   % Constante de Faraday, coulombs/mmol
data.R = 8.314;                  % Constante de gas, J/K
data.T = 273+37; 		  % Temperatura absoluta, K 
data.RTF=(data.R*data.T/data.F);

data.PK = 1.66e-6;               % Permeabilidad del K 
data.PNa_K = 0.01833;            % Permeabilidad proporcion del Na con K

data.Isi_max=0.09;
data.IKp_max=0.0183;
data.Ib_max=0.03921;
data.INa_max=16;
data.IK1_max=0.6047;
data.IK_max=0.282;


data.Is=80; %% ESTIMULO
data.start=0;% Inicia
data.finish=0.5;% Duracion
%Las Condiciones Iniciales
% % Condiciones Iniciales de Compuerta */

 v_init=-84.5286 ;  
	m_init = 0.0017; 	% Corriente de activación de compuerta Sodio
	h_init =   0.9832;  	% Corriente rapida de inactivacion Sodio
	J_init = 0.995484;   	% Lenta inactivacion
	d_init = 0.000003; 	% Calcio activacion de compuerta
	f_init =  1.0000 ;  	% Calcio inactivacion de compuerta
	X_init =  0.0057 ; 	% Activacion de compuerta
	Ca_init = 0.0002; 	% Calcio


x0=[ v_init h_init m_init J_init d_init f_init X_init Ca_init];
