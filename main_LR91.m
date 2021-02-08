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

function [currents,State,Ti]=main_LR91(data);

Constants_and_Initial91


data.K_o=data.k_o;
data.Na_o=data.na_o;
data.sqrt=sqrt(data.K_o/5.4); 
Ti=[];Stm=[];State=[];opts=[];
% data.bcl=50000; %% Expansión de tiempo (LCB)  

%data.freq=2; %% Número de pulsos
h4 = waitbar(0,' Matlab esta trabajando, por favor espera ...');

for p=1:data.freq
   
[t,X]=ode15s('fun_LR91',[0  data.bcl],x0,opts,data);
Ti=[Ti; t+(data.bcl*(p-1))];   % time concatenación de vectores

    State=[State; X];
    St=-data.Is*ones(1,length(t));
    St((find(t>data.finish)))=0;
    Stm=[Stm  St];
    x0=[X(end,1:end)];
   waitbar(p/data.freq,h4)
end
close(h4)
%%% IMPRIME RESULTADOS

currents=print_LR1(State,Ti,Stm,data);

currents.stm=Stm;
currents.DVDT=gradient(State(:,1),Ti,1);
