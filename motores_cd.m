function varargout = motores_cd(varargin)
% MOTORES_CD MATLAB code for motores_cd.fig
%      MOTORES_CD, by itself, creates a new MOTORES_CD or raises the existing
%      singleton*.
%
%      H = MOTORES_CD returns the handle to a new MOTORES_CD or the handle to
%      the existing singleton*.
%
%      MOTORES_CD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOTORES_CD.M with the given input arguments.
%
%      MOTORES_CD('Property','Value',...) creates a new MOTORES_CD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before motores_cd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to motores_cd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help motores_cd

% Last Modified by GUIDE v2.5 06-Dec-2020 20:45:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @motores_cd_OpeningFcn, ...
                   'gui_OutputFcn',  @motores_cd_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before motores_cd is made visible.
function motores_cd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to motores_cd (see VARARGIN)

% Choose default command line output for motores_cd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.rb_mcd1, 'Value', 1); 
set(handles.rb_mcd2, 'Value', 0); 
set(handles.rb_mcd3, 'Value', 0); 
set(handles.rb_mcd4, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);
% UIWAIT makes motores_cd wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.figure1,'Color', [1 1 1]);
set(handles.uibuttongroup1,'BackgroundColor',[1 1 1]);
set(handles.uipanel1,'BackgroundColor',[1 1 1]);

set(handles.rb_mcd1,'BackgroundColor',[1 1 1]);
set(handles.rb_mcd2,'BackgroundColor',[1 1 1]);
set(handles.rb_mcd3,'BackgroundColor',[1 1 1]);
set(handles.rb_mcd4,'BackgroundColor',[1 1 1]);

set(handles.rb_out_enc,'BackgroundColor',[1 1 1]);
set(handles.rb_out_vin,'BackgroundColor',[1 1 1]);
set(handles.rb_out_par,'BackgroundColor',[1 1 1]);

% --- Outputs from this function are returned to the command line.
function varargout = motores_cd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
    


% --- Executes on button press in rb_out_enc.
function rb_out_enc_Callback(hObject, eventdata, handles)
% hObject    handle to rb_out_enc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.rb_out_par, 'Value', 0); 
set(handles.rb_out_vin, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);

% Hint: get(hObject,'Value') returns toggle state of rb_out_enc

% --- Executes on button press in rb_mcd3.
function rb_mcd3_Callback(hObject, eventdata, handles)
% hObject    handle to rb_mcd3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_mcd3
set(handles.rb_mcd1, 'Value', 0); 
set(handles.rb_mcd2, 'Value', 0); 
set(handles.rb_mcd4, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);
% --- Executes on button press in rb_mcd4.
function rb_mcd4_Callback(hObject, eventdata, handles)
% hObject    handle to rb_mcd4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_mcd4
set(handles.rb_mcd1, 'Value', 0); 
set(handles.rb_mcd2, 'Value', 0); 
set(handles.rb_mcd3, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);
% --- Executes on button press in rb_out_par.
function rb_out_par_Callback(hObject, eventdata, handles)
% hObject    handle to rb_out_par (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_out_par
set(handles.rb_out_vin, 'Value', 0); 
set(handles.rb_out_enc, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);
% --- Executes on button press in rb_out_vin.
function rb_out_vin_Callback(hObject, eventdata, handles)
% hObject    handle to rb_out_vin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_out_vin
set(handles.rb_out_par, 'Value', 0); 
set(handles.rb_out_enc, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);
% --- Executes on button press in rb_mcd1.
function rb_mcd1_Callback(hObject, eventdata, handles)
% hObject    handle to rb_mcd1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_mcd1
set(handles.rb_mcd2, 'Value', 0); 
set(handles.rb_mcd3, 'Value', 0); 
set(handles.rb_mcd4, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);
% --- Executes on button press in rb_mcd2.
function rb_mcd2_Callback(hObject, eventdata, handles)
% hObject    handle to rb_mcd2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_mcd2
set(handles.rb_mcd1, 'Value', 0); 
set(handles.rb_mcd3, 'Value', 0); 
set(handles.rb_mcd4, 'Value', 0); 
plot_motor_graph(hObject, eventdata, handles);

function plot_motor_graph(hObject, eventdata, handles)
    out = evalin('base','out');
    axes(handles.axes_mcd);
    if(get(handles.rb_out_enc, 'Value') == 1)
        if(get(handles.rb_mcd1, 'Value') == 1)
            plot(out.MotorCD1_encoder.time, out.MotorCD1_encoder.signals(1).values, 'r');
        elseif(get(handles.rb_mcd2, 'Value') == 1)
            plot(out.MotorCD2_encoder.time, out.MotorCD2_encoder.signals(1).values, 'r');
        elseif(get(handles.rb_mcd3, 'Value') == 1)
            plot(out.MotorCD3_encoder.time, out.MotorCD3_encoder.signals(1).values, 'r');
        elseif(get(handles.rb_mcd4, 'Value') == 1)
            plot(out.MotorCD4_encoder.time, out.MotorCD4_encoder.signals(1).values, 'r');
        end
        title('Salida encoder'); ylabel('Velocidad angular \omega'); xlabel('tiempo (segundos)');
    elseif(get(handles.rb_out_par, 'Value') == 1)
        if(get(handles.rb_mcd1, 'Value') == 1)
            plot(out.MotorCD1_par.time, out.MotorCD1_par.signals(1).values, 'r');
        elseif(get(handles.rb_mcd2, 'Value') == 1)
            plot(out.MotorCD2_par.time, out.MotorCD2_par.signals(1).values, 'r');
        elseif(get(handles.rb_mcd3, 'Value') == 1)
            plot(out.MotorCD3_par.time, out.MotorCD3_par.signals(1).values, 'r');
        elseif(get(handles.rb_mcd4, 'Value') == 1)
            plot(out.MotorCD4_par.time, out.MotorCD4_par.signals(1).values, 'r');
        end
        title('Par generado por el motor de CD'); ylabel('Par [N]'); xlabel('tiempo (segundos)');
    elseif(get(handles.rb_out_vin, 'Value') == 1)
        if(get(handles.rb_mcd1, 'Value') == 1)
            plot(out.SC_MotorCD1.time, out.SC_MotorCD1.signals(1).values, 'r');
        elseif(get(handles.rb_mcd2, 'Value') == 1)
            plot(out.SC_MotorCD2.time, out.SC_MotorCD2.signals(1).values, 'r');
        elseif(get(handles.rb_mcd3, 'Value') == 1)
            plot(out.SC_MotorCD3.time, out.SC_MotorCD3.signals(1).values, 'r');
        elseif(get(handles.rb_mcd4, 'Value') == 1)
            plot(out.SC_MotorCD4.time, out.SC_MotorCD4.signals(1).values, 'r');
        end
        title('Voltaje de entrada de motor de CD'); ylabel('Volts (V)'); xlabel('tiempo (segundos)');
    end


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function uibuttongroup1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
