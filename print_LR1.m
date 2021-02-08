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
function currents=print_LR1(State,Ti,Stm,data)



EK1 = data.RTF*log(data.K_o/data.K_i);
ak1 = 1.02./(1+exp(0.2385*(State(:,1)-EK1-59.215)));
bk1 = (0.49124*exp(0.08032*(State(:,1)-EK1+5.476))+exp(0.06175*(State(:,1)-EK1-594.31)))./(1+exp(-0.5143*(State(:,1)-EK1+4.753)));
currents.G_IK1=ak1./(ak1+bk1);
currents.IK1 =data.IK1_max*data.sqrt.*(State(:,1)-EK1).*ak1./(ak1+bk1);

currents.IKp = data.IKp_max*(State(:,1)+87.8789)./(1+exp((7.488-State(:,1))/5.98));
currents.Ib=data.Ib_max*(State(:,1)+59.87);
EK =data.RTF*log((data.K_o+data.PNa_K*data.Na_o)/(data.K_i+data.PNa_K*data.Na_i));
Xi=1*(State(:,1)<=-100)+(State(:,1) > -100).*(2.837*(exp(0.04*(State(:,1)+77))-1)./((State(:,1)+77).*exp(0.04*(State(:,1)+35))));
currents.IK= data.IK_max*data.sqrt.*Xi.*State(:,7).*(State(:,1)-EK);
currents.G_IK=Xi.*State(:,7);
currents.G_INa=State(:,3).^3.*State(:,2).*State(:,4);
currents.I_Na=data.INa_max*State(:,3).^3.*State(:,2).*State(:,4).*(State(:,1)-data.RTF*log(data.Na_o/data.Na_i));
currents.G_Slowin=State(:,5).*State(:,6);
currents.Slowin=data.Isi_max*State(:,5).*State(:,6).*(State(:,1)-7.7+13.0287*log(State(:,8)));

return
figure(1)
subplot(2,1,1)
title('GUI - Modelo Luo-Rudy I ')
h=plot(Ti,State(:,1));
ylabel(' TMP [mV] ','FontSize',16)
set(h,'LineWidth',3')
set(gca,'FontSize',16)
subplot(2,1,2)
h=plot(Ti,State(:,8));
ylabel(' [Ca]^{2+}_i [mM] ','FontSize',16)
set(h,'LineWidth',3')
set(gca,'FontSize',16)
xlabel(' Tiempo [msec] ','FontSize',16)

figure(2)
h=plot(Ti,State(:,2:7));
legend('h','m','j','d','f','x')

ylabel(' Compuertas [a.u.] ','FontSize',16)
xlabel(' Tiempo [msec] ','FontSize',16)
set(h,'LineWidth',3')
set(gca,'FontSize',16)
%return








figure
subplot(2,2,1)
h=plot(Ti,State(:,1))     ;
suptitle('GUI - Modelo Luo-Rudy I ')
ylabel(' TMP ','FontSize',16)
set(h,'LineWidth',3')
set(gca,'FontSize',16)

subplot(2,2,2)
h=plot(Ti,Stm,'-')           ;
set(h,'LineWidth',3)

ylabel('input I [{\mu}A/\mu F]','FontSize',16)
set(gca,'FontSize',16)
grid
set(h,'LineWidth',3')
axis tight

subplot(2,2,3)
h=plot(Ti,IK1,Ti,IK,Ti,IKp,'-')           ;
set(h,'LineWidth',3)
set(gca,'FontSize',16)
axis tight
ylabel(' IK1,IK IKp','FontSize',16)
xlabel(' Tiempo [msec] ','FontSize',16)
%figure
subplot(2,2,4)
h=plot(Ti,I_Na)     ;

axis tight
xlabel(' Tiempo [msec] ','FontSize',16)
ylabel('INa [{\mu}A]','FontSize',16)
set(h,'LineWidth',3')
set(gca,'FontSize',16)
figure(2)
subplot(2,2,1)
h=plot(Ti,Sin,'-')           ;
set(h,'LineWidth',3)
ylabel(' Entrada lenta (Ca) ','FontSize',16)
set(gca,'FontSize',16)

grid
set(h,'LineWidth',3')

subplot(2,2,2)
h=plot(Ti,State(:,7),'-')           ;
set(h,'LineWidth',3)
set(gca,'FontSize',16)
grid

ylabel(' x','FontSize',16)
%return

subplot(2,2,3)
h=plot(Ti,State(:,2:4))     ;
suptitle('GUI - Modelo Luo-Rudy I ')
xlabel('Tiempo [msec]','FontSize',16)
ylabel('h,m,j ','FontSize',16)
set(h,'LineWidth',3')
set(gca,'FontSize',16)
axis tight
subplot(2,2,4)

h=plot(Ti,State(:,5:6),'-')           ;
set(h,'LineWidth',3)
ylabel('d,f ','FontSize',16)
set(gca,'FontSize',16)
xlabel(' Tiempo [msec] ','FontSize',16)
set(h,'LineWidth',3')
