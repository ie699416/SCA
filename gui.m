function varargout = gui(varargin)
%GUI MATLAB code file for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('Property','Value',...) creates a new GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to gui_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI('CALLBACK') and GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 06-Dec-2020 20:44:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(hObject, 'center');

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
system_icon = imread(pwd+"\img\system_icon.png");
set(handles.uipanellogo,'BackgroundColor',[1 1 1]);
imgaxes = axes('parent', handles.uipanellogo);
load mandrill;
image(system_icon);
axis off;
set(handles.figure1,'Color', [1 1 1]);
set(handles.uibuttongroup2,'BackgroundColor',[1 1 1]);
set(handles.text2,'BackgroundColor',[1 1 1]);

% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_ef.
function pb_ef_Callback(hObject, eventdata, handles)
% hObject    handle to pb_ef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_sm.
function pb_sm_Callback(hObject, eventdata, handles)
% hObject    handle to pb_sm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(motores_cd,'visible','on');
%set(gui,'visible','on');



% --- Executes on button press in pb_cont_mot.
function pb_cont_mot_Callback(hObject, eventdata, handles)
% hObject    handle to pb_cont_mot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_conf.
function pb_conf_Callback(hObject, eventdata, handles)
% hObject    handle to pb_conf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_cont_ef.
function pb_cont_ef_Callback(hObject, eventdata, handles)
% hObject    handle to pb_cont_ef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);


% --- Executes during object creation, after setting all properties.
function pb_ef_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pb_ef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pb_sm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pb_sm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pb_cont_mot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pb_cont_mot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pb_cont_ef_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pb_cont_ef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pb_conf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pb_conf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.

% hObject    handle to uibuttongroup2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function uibuttongroup2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
