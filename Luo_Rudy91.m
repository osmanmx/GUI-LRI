function varargout = Luo_Rudy91(varargin)
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
% Last Modified by GUIDE v3.0 11-Oct-2013 03:23:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Luo_Rudy91_OpeningFcn, ...
    'gui_OutputFcn',  @Luo_Rudy91_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Luo_Rudy91 is made visible.
function Luo_Rudy91_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Luo_Rudy91 (see VARARGIN)

% Choose default command line output for Luo_Rudy91
handles.output = hObject;


% INITIAL DATA
bcl=0.400;
freq=1;
k_o=5.4;
na_o=140;
G_gap=0;
LastBCL=0.4;

handles.LastBCL =LastBCL;
set(handles.editLastBCL,'String',num2str(LastBCL));
% handles.LastBCL =LastBCL;
% % bcl=get(handles.sliderBCL, 'value');;
set(handles.editBCL,'String',num2str(bcl));
set(handles.sliderBCL,'Value', bcl);
%freq = get(handles.sliderFreq,'value');
set(handles.editFreq,'String',num2str(round(freq)));
set(handles.sliderFreq,'Value',freq);
%k_o  =  get(handles.sliderKo,'value') ;
set(handles.sliderKo,'Value',k_o) ;
set(handles.editKo,'String',num2str(k_o));


%na_o  =  get(handles.sliderSodium,'value') ;
set(handles.sliderSodium,'Value',na_o)
set(handles.editSodium,'String',num2str(na_o));


handles.freq=freq;
handles.bcl=bcl;
handles.k_o=k_o;
handles.v=0;
handles.na_o=na_o;
handles.G_gap=G_gap;
handles.LastBCL=LastBCL;

axes(handles.axes1); a= (imread('GUI-LRI-3.jpg'));
image(a);
set(handles.axes1,'Visible', 'off')

guidata(hObject, handles);
axes(handles.axes2)
text(0.1 ,0.5,'Bienvenid@ Interfaz GUI-LRI \newline Modelo iónico Luo-Rudy I \newline \newline Selecciona parámetros y presiona \newline botón <Inicio> para proceder \newline \newline Comparte-Disfruta-Aprende','FontSize',20,'FontWeight','bold')
set(handles.axes2,'Visible', 'off')
% UIWAIT makes Luo_Rudy91 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.axes3,'Visible', 'off')
% --- Outputs from this function are returned to the command line.
function varargout = Luo_Rudy91_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function sliderBCL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderBCL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function sliderBCL_Callback(hObject, eventdata, handles)
% hObject    handle to sliderBCL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


bcl=get(handles.sliderBCL, 'value');;
set(handles.editBCL,'String',num2str(round(bcl)));


handles.bcl=bcl;


% Update handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function sliderFreq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderFreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function sliderFreq_Callback(hObject, eventdata, handles)
% hObject    handle to sliderFreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
freq = get(handles.sliderFreq,'value');
set(handles.editFreq,'String',num2str(round(freq)));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.freq=freq;
% Update handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function sliderKo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderKo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function sliderKo_Callback(hObject, eventdata, handles)
% hObject    handle to sliderKo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
k_o  =  get(handles.sliderKo,'value') ;

set(handles.editKo,'String',num2str(k_o));
handles.k_o=k_o;

% Update handles structure
guidata(hObject, handles);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%The callback for the Ki Current value follows a similar approach.
data.freq=round(handles.freq);
data.bcl=1000*handles.bcl;
data.k_o=handles.k_o;
data.na_o=handles.na_o;
data.G_gap=handles.G_gap/20;
data.LastBCL=1000*handles.LastBCL ;

[currents,State,t]=main_LR91(data);

d=Import(State,currents,t,handles); %%RETURN SAVED OR CALCULATED CURRENTS

% --- Executes during object creation, after setting all properties.
function editBCL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editBCL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function editBCL_Callback(hObject, eventdata, handles)
% hObject    handle to editBCL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editBCL as text
%        str2double(get(hObject,'String')) returns contents of editBCL as a double
bcl = str2double(get(handles.editBCL,'String'));

if bcl >= get(handles.sliderBCL,'Min') & ...
        bcl <= get(handles.sliderBCL,'Max')
    set(handles.sliderBCL,'Value',bcl);
elseif  bcl >get(handles.sliderBCL,'Max')
    set(handles.sliderBCL,'Value',get(handles.sliderBCL,'Max'));
    set(handles.editBCL,'String',num2str(get(handles.sliderBCL,'Max')))
elseif  bcl < get(handles.sliderBCL,'Min')

    set(handles.sliderBCL,'Value',get(handles.sliderBCL,'Min'));
    set(handles.editBCL,'String',num2str(get(handles.sliderBCL,'Min')))
else
    set(handles.sliderBCL,'Value',get(handles.sliderBCL,'Min'));
    set(handles.editBCL,'String',num2str(get(handles.sliderBCL,'Min')))
end

handles.bcl=bcl;
guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function editFreq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function editFreq_Callback(hObject, eventdata, handles)
% hObject    handle to editFreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFreq as text
%        str2double(get(hObject,'String')) returns contents of editFreq as a double
freq = str2double(get(handles.editFreq,'String'));

if freq >= get(handles.sliderFreq,'Min') & ...
        freq <= get(handles.sliderFreq,'Max')
    set(handles.sliderFreq,'Value',freq);
elseif freq >get(handles.sliderFreq,'Max')
    set(handles.sliderFreq,'Value',get(handles.sliderFreq,'Max'));
    set(handles.editFreq,'String',num2str(get(handles.sliderFreq,'Max')))
elseif freq < get(handles.sliderFreq,'Min')

    set(handles.sliderFreq,'Value',get(handles.sliderFreq,'Min'));
    set(handles.editFreq,'String',num2str(get(handles.sliderFreq,'Min')))

else
    set(handles.sliderFreq,'Value',get(handles.sliderFreq,'Min'));
    set(handles.editFreq,'String',num2str(get(handles.sliderFreq,'Min')))

end

handles.freq=freq;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function editKo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function editKo_Callback(hObject, eventdata, handles)
% hObject    handle to editKo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKo as text
%        str2double(get(hObject,'String')) returns contents of editKo as a double

k_o = str2double(get(handles.editKo,'String'));

if k_o >= get(handles.sliderKo,'Min') & ...
        k_o <= get(handles.sliderKo,'Max')
    set(handles.sliderKo,'Value',k_o);
elseif k_o > get(handles.sliderKo,'Max')
    set(handles.sliderKo,'Value',get(handles.sliderKo,'Max'));
    set(handles.editKo,'String',num2str(get(handles.sliderKo,'Max')))
elseif k_o < get(handles.sliderKo,'Min')

    set(handles.sliderKo,'Value',get(handles.sliderKo,'Min'));
    set(handles.editKo,'String',num2str(get(handles.sliderKo,'Min')))
else
    set(handles.sliderKo,'Value',get(handles.sliderKo,'Min'));
    set(handles.editKo,'String',num2str(get(handles.sliderKo,'Min')))
end

handles.k_o=k_o;
guidata(hObject, handles);
% --- Executes on slider movement.
function sliderSodium_Callback(hObject, eventdata, handles)
% hObject    handle to sliderSodium (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

na_o=get(handles.sliderSodium, 'value');;
set(handles.editSodium,'String',num2str(na_o));


handles.na_o=na_o;


% Update handles structure
guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function sliderSodium_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderSodium (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function editSodium_Callback(hObject, eventdata, handles)
% hObject    handle to editSodium (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSodium as text
%        str2double(get(hObject,'String')) returns contents of editSodium as a double

na_o = str2double(get(handles.editSodium,'String'));

if  na_o >= get(handles.sliderSodium,'Min') & ...
        na_o <= get(handles.sliderSodium,'Max')
    set(handles.sliderSodium,'Value', na_o);
elseif na_o >get(handles.sliderSodium,'Max')
    set(handles.sliderSodium,'Value',get(handles.sliderSodium,'Max'));
    set(handles.editSodium,'String',num2str(get(handles.sliderSodium,'Max')))
elseif na_o < get(handles.sliderFreq,'Min')

    set(handles.sliderSodium,'Value',get(handles.sliderSodium,'Min'));
    set(handles.editSodium,'String',num2str(get(handles.sliderSodium,'Min')))

else

    set(handles.sliderSodium,'Value',get(handles.sliderSodium,'Min'));
    set(handles.editSodium,'String',num2str(get(handles.sliderSodium,'Min')))
end

handles.na_o =na_o ;
guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function editSodium_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSodium (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

val = get(hObject,'Value');
str = get(hObject,'String');

if handles.v==1
    axes(handles.axes2)
else
    axes(handles.axes3)
end

switch str{val};

    case 'Calcium (myoplasmic)' % User selects

        [h2]=plot(handles.t,1000*handles.Ca);grid on
        set(h2,'LineWidth',2')  ;ylabel(' Ca^{2+}_{i} [\mu M] ','FontSize',10,'FontWeight','bold') ;set(gca,'FontSize',10,'FontWeight','bold');
        xlabel('Tiempo (msec)','FontSize',10,'FontWeight','bold')
        zoom on

    
           case 'INa channel gates' %
        h2=plot(handles.t,handles.M,'g-',handles.t,handles.J,handles.t,handles.H,'r');

        legend('m','j','h',0);  grid on;set(h2,'LineWidth',2');
        ylabel(' m, j, h compuertas ','FontSize',10,'FontWeight','bold');zoom on ;
        set(gca,'FontSize',10,'FontWeight','bold')
 
    case 'IK channel gate'
        h2=plot(handles.t,handles.Xr); 
        ylabel(' xr compuerta ','FontSize',10,'FontWeight','bold');grid on;zoom on ;
        set(h2,'LineWidth',2')
        set(gca,'FontSize',10,'FontWeight','bold')
       case 'ICa channel gates' %
        h2=plot(handles.t,handles.d,handles.t,handles.f);grid on;zoom on ; set(h2,'LineWidth',2')
        ylabel(' I_{Ca(L)} compuertas ','FontSize',10,'FontWeight','bold')
        legend('d','f',0)
        set(gca,'FontSize',10,'FontWeight','bold')

 end
guidata(hObject,handles)
% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
val = get(hObject,'Value');
str = get(hObject,'String');
if handles.v==1
    axes(handles.axes2)
else
    axes(handles.axes3)
end
zoom on
switch str{val};
    case 'INa (Fast Na current)'
        %
        h2=plot(handles.t,handles.INa);
        grid on  ; set(h2,'LineWidth',2');zoom on;
        ylabel(' I_{Na} (\mu A/ \mu F)','FontSize',10,'FontWeight','bold'); set(gca,'FontSize',10,'FontWeight','bold') ;xlabel('Tiempo (msec)','FontSize',10,'FontWeight','bold');

    case 'INa normalized conductance' %
        h2=plot(handles.t,(handles.J).*(handles.H).*(handles.M).^3);
        ylabel(' G_{Na} (mS/\mu F)','FontSize',10,'FontWeight','bold');
        grid on;zoom on ; set(h2,'LineWidth',2');grid on;zoom on ;
        set(gca,'FontSize',10,'FontWeight','bold')
        case 'IK (Time-dependent K current)'
        h2=plot(handles.t,handles.ikr);grid on
        set(h2,'LineWidth',2'),  ylabel(' I_{Kr} (\mu A/ \mu F) ','FontSize',10,'FontWeight','bold'),
        set(gca,'FontSize',10,'FontWeight','bold')
        xlabel('Tiempo (msec)','FontSize',10,'FontWeight','bold');zoom on; grid on  ;

    case 'IK normalized conductance'
        h2=plot(handles.t,handles.G_Kr);grid on;zoom on
        ylabel(' G_{Kr}(mS/\mu F)','FontSize',10,'FontWeight','bold') ;
        set(h2,'LineWidth',2')
        set(gca,'FontSize',10,'FontWeight','bold')

    case 'ICa (Slow inward current)'
        h2=plot(handles.t,handles.ical);grid on
        set(h2,'LineWidth',2'),  ylabel(' I_{Ca}  (\mu A/ \mu F)','FontSize',10,'FontWeight','bold'), set(gca,'FontSize',10,'FontWeight','bold')
        xlabel('Tiempo (msec)','FontSize',10,'FontWeight','bold');zoom on;set(gca,'FontSize',10,'FontWeight','bold')
    case 'ICa normalized conductance'
        h2=plot(handles.t,handles.G_CaL);grid on
        set(h2,'LineWidth',2'),  ylabel('G_{ICa(L),Ca} (mS/ \mu F) ','FontSize',10,'FontWeight','bold'), set(gca,'FontSize',10,'FontWeight','bold')
        xlabel('Tiempo (msec)','FontSize',10,'FontWeight','bold');zoom on;set(gca,'FontSize',10,'FontWeight','bold')



      case 'Ib (background current)'
        h2=plot(handles.t,handles.Ib);  grid on;zoom on;
        set(h2,'LineWidth',2') ; ylabel('Estimulo (\mu A/ \mu F)','FontSize',10,'FontWeight','bold');
        set(gca,'FontSize',10,'FontWeight','bold');
  
   
    case 'Stimulus current'
        h2=plot(handles.t,handles.stm);  grid on;zoom on;
        set(h2,'LineWidth',2') ; ylabel('Estimulo (\mu A/ \mu F)','FontSize',10,'FontWeight','bold');
        set(gca,'FontSize',10,'FontWeight','bold');
    case 'IK1 (Time-independent K current)'
        h2=plot(handles.t,handles.IK1);  grid on;zoom on;
        set(h2,'LineWidth',2') ; ylabel('IK1 (\mu A/ \mu F)','FontSize',10,'FontWeight','bold'); set(gca,'FontSize',10,'FontWeight','bold')

    case 'IKp (Plateau K current)'
        h2=plot(handles.t,handles.IKp);  grid on;zoom on;

        set(h2,'LineWidth',2') ; ylabel('IKp (\mu A/ \mu F)','FontSize',10,'FontWeight','bold');

        set(gca,'FontSize',10,'FontWeight','bold')

    case 'IK1 normalized conductance'
        h2=plot(handles.t,handles.G_IK1);  grid on;zoom on;
        set(h2,'LineWidth',2') ; ylabel('G_{K1} (mS/\mu F)','FontSize',10,'FontWeight','bold');
        set(gca,'FontSize',10,'FontWeight','bold')

 
        case 'dVdt' %

        h2=plot(handles.t,handles.DVDT);grid on;zoom on
        ylabel('$\frac{\partial{V}}{\partial{t}}$ [mV/sec]','FontSize',14,'FontWeight','bold','interpreter','latex') ;
        set(h2,'LineWidth',2');set(gca,'FontSize',10,'FontWeight','bold')
       
   
        
        
end


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end





% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

%handles.axes1=handles.axes2;guidata(hObject, handles);

v=get(hObject,'Value');
if v==1
    axes(handles.axes1);
    handles.v=v;

else
    axes(handles.axes2)
    handles.v=v;

end
guidata(hObject, handles);



% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);








%


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2




% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2




% --- Executes on button press in checkMiddle.
function checkMiddle_Callback(hObject, eventdata, handles)
% hObject    handle to checkMiddle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkMiddle
axes(handles.axes2)
handles.v=1;


guidata(hObject, handles);

% --- Executes on button press in Bottom.
function Bottom_Callback(hObject, eventdata, handles)
% hObject    handle to Bottom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Bottom
axes(handles.axes3)
handles.v=0;


guidata(hObject, handles);

% --------------------------------------------------------------------
function uipanel1_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = get(hObject,'SelectedObject')
switch get(selection,'Tag')
    case 'Bottom'
        'botom'
    case 'checkMiddle'
        % code piece when radiobutton2 is selected goes here
        'middel'
end



% --- Executes on button press in pushbuttonClose.
function pushbuttonClose_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonClose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get the current position of the GUI from the handles
% to pass to the modal dialog.
pos_size = get(handles.figure1,'Position');
% Call modaldlg with the argument 'Position'.
user_response = modaldlg('Title','Confirma Salir GUI-LRI');
switch user_response
    case {'No'}
        % take no action
    case 'Si'
        % Prepare to close GUI application window
        % .
        % .
        % .
        delete(handles.figure1)
end

% --- Executes on button press in pushbuttonSave.
function pushbuttonSave_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
States=handles.State;
t=handles.Time;
currents=handles.Currents;
%save  DATA.mat  t States currents
% Get the Tag of the menu selected
Tag = get(hObject, 'Tag');
% Get the address array
% Addresses = handles.Addresses;
% Based on the item selected, take the appropriate action
switch Tag
    case 'Save'
        % Save to the default addrbook file
        %File = handles.LastFile;
        %save(File,'Addresses')
        %save  DATA.mat  t States currents
    case 'pushbuttonSave'
        % Allow the user to select the file name to save to
        [filename, pathname] = uiputfile( ...
            {'*.mat';'*.*'}, ...
            'Guardar como');
        % If 'Cancel' was selected then return
        if isequal([filename,pathname],[0,0])
            return
        else
            % Construct the full path and save
            File = fullfile(pathname,filename);
            save(File,'t','States','currents','-v6')
            % save(File,'Data')
            % save(File,currents)
            %handles.LastFile = File;
            guidata(hObject, handles)
        end
end


% --- Executes on button press in pushbuttonHelp.
function pushbuttonHelp_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonHelp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



HelpPath = which('Luo_Rudy91.html');
web(HelpPath);



function editLastBCL_Callback(hObject, eventdata, handles)
% hObject    handle to editLastBCL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLastBCL as text
%        str2double(get(hObject,'String')) returns contents of editLastBCL as a double
LastBCL = str2double(get(handles.editLastBCL,'String'));



if LastBCL >= 0.05 & ...
        LastBCL  <= 10
    set(handles.editLastBCL,'Value',LastBCL );
elseif LastBCL  > 10

    set(handles.editLastBCL,'String',num2str(10))

    LastBCL  = 10;
elseif LastBCL  <  0.05

    set(handles.editLastBCL,'String',num2str( 0.05))
    LastBCL  =  0.05;
else

    set(handles.editLastBCL,'String',num2str( 0.05))
end



handles.LastBCL =LastBCL;

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function editLastBCL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLastBCL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on button press in Load.
function Load_Callback(hObject, eventdata, handles)
%function pushbutton8_Callback(hObject, eventdata, handles)

% hObject    handle to Load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[file,path]=uigetfile('*.mat','Selecciona archivo-MAT');
%data = load(fullfile(file));
if isequal([file,path],[0,0])
    return
else
    load(file);

    Import(States,currents,t,handles);
end
function b=Import(State,currents,t,handles)

b=1;

handles.State=State;
handles.currents=currents;
handles.t=t;
handles.V=State(:,1);

handles.V2=zeros(size(t));
axes(handles.axes1)
h=plot(t,handles.V);set(h,'LineWidth',2');
set(handles.axes1,'XMinorTick','on')
grid on; zoom on

ylabel('V_m (mV)','FontSize',10,'FontWeight','bold','FontWeight','bold');
set(gca,'FontWeight','bold','FontSize',10,'FontWeight','bold')

handles.Currents=currents;
handles.State=State;
handles.Time=t;

handles.H=State(:,2);handles.M=State(:,3);handles.J=State(:,4);
handles.d=State(:,5);handles.f=State(:,6);
handles.Xr=State(:,7);
handles.Ca=State(:,8);


handles.INa=currents.I_Na;

%handles.icatot=currents.catot;
handles.ical=currents.Slowin;



handles.ikr=currents.IK;




handles.stm=currents.stm;


handles.Ib=currents.Ib;
handles.IK1=currents.IK1;
handles.IKp=currents.IKp;

%

handles.DVDT=currents.DVDT;



handles.G_CaL=currents.G_Slowin;

handles.G_Kr=currents.G_IK;
handles.G_IK1=currents.G_IK1;

% handles.fca=currents.fca;
% axes(handles.axes1) %
% h=plot(t,handles.V,t,handles.V2);set(h,'LineWidth',2')
% set(handles.axes1,'XMinorTick','on')
% grid on; zoom on
% legend('First cell','Second cell')
% ylabel('TMP (mV)','FontSize',10,'FontWeight','bold','FontWeight','bold');
% set(gca,'FontWeight','bold','FontSize',10,'FontWeight','bold')

axes(handles.axes2)
h2=plot(t,1000*handles.Ca);
zoom on;   set(h2,'LineWidth',2')
set(handles.axes2,'XMinorTick','on')
grid on ; ylabel(' Ca^{2+} (\mu M)','FontSize',10,'FontWeight','bold')
set(gca,'FontSize',10,'FontWeight','bold')
xlabel('Tiempo (msec)','FontSize',10,'FontWeight','bold')
set(gca,'FontSize',10,'FontWeight','bold')
axes(handles.axes3)
h2=plot(t,handles.stm);
zoom on;   set(h2,'LineWidth',2')
set(handles.axes2,'XMinorTick','on')
grid on ; ylabel(' Estimulo (\mu A/\mu  F) ','FontSize',10,'FontWeight','bold')
set(gca,'FontSize',10,'FontWeight','bold')
xlabel('Tiempo (msec)','FontSize',10,'FontWeight','bold')

linkaxes([handles.axes1 handles.axes2 handles.axes3],'x');
guidata(handles.output,handles);

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
% 
%  function [currents,State,Ti]=main_LR91(data);
% 
% Constants_and_Initial91
% %load initial_LR91
% data.K_o=data.k_o;
% data.Na_o=data.na_o;
% data.sqrt=sqrt(data.K_o/5.4); 
% Ti=[];Stm=[];State=[];opts=[];
% % data.bcl=50000; %% Time span  
% 
% %data.freq=2; %% Number of pulses
% 
% for p=1:data.freq
%    
% [t,X]=ode15s('fun_LR91',[0  data.bcl],x0,opts,data);
% Ti=[Ti; t+(data.bcl*(p-1))];   % time vectors concatenation
% 
%     State=[State; X];
%     St=-data.Is*ones(1,length(t));
%     St((find(t>data.finish)))=0;
%     Stm=[Stm  St];
%     x0=[X(end,1:end)];
% 
% end
% 
% %%% IMPRIME RESULTADOS
% 
% currents=print_LR1(State,Ti,Stm,data);
% 
% currents.stm=Stm;
% currents.DVDT=gradient(State(:,1),Ti,1);
% 
