function varargout = planta_end_effector(varargin)
%PLANTA_END_EFFECTOR MATLAB code file for planta_end_effector.fig
%      PLANTA_END_EFFECTOR, by itself, creates a new PLANTA_END_EFFECTOR or raises the existing
%      singleton*.
%
%      H = PLANTA_END_EFFECTOR returns the handle to a new PLANTA_END_EFFECTOR or the handle to
%      the existing singleton*.
%
%      PLANTA_END_EFFECTOR('Property','Value',...) creates a new PLANTA_END_EFFECTOR using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to planta_end_effector_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      PLANTA_END_EFFECTOR('CALLBACK') and PLANTA_END_EFFECTOR('CALLBACK',hObject,...) call the
%      local function named CALLBACK in PLANTA_END_EFFECTOR.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help planta_end_effector

% Last Modified by GUIDE v2.5 06-Dec-2020 21:24:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @planta_end_effector_OpeningFcn, ...
                   'gui_OutputFcn',  @planta_end_effector_OutputFcn, ...
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


% --- Executes just before planta_end_effector is made visible.
function planta_end_effector_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for planta_end_effectors
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(hObject, 'center');
set(handles.figure1,'Color', [1 1 1]);
% UIWAIT makes planta_end_effector wait for user response (see UIRESUME)
% uiwait(handles.figure1);
out = evalin('base','out');
axes(handles.axes_2d_x);
plot(out.p.time, out.p.signals(1).values(:,1),'y');
title('P [X]');
set(handles.axes_2d_x,'Color',[0 0 0]);
ylim([min(out.p.signals(1).values(:,1))-5 max(out.p.signals(1).values(:,1)+3)])
axes(handles.axes_2d_y);
plot(out.p.time, out.p.signals(1).values(:,2),'b');
title('P [Y]');
set(handles.axes_2d_y,'Color',[0 0 0]);
ylim([min(out.p.signals(1).values(:,2))-5 max(out.p.signals(1).values(:,2)+3)])
axes(handles.axes_2d_z);
plot(out.p.time, out.p.signals(1).values(:,3),'red');
title('P [Z]');
set(handles.axes_2d_z,'Color',[0 0 0]);
ylim([min(out.p.signals(1).values(:,3))-5 max(out.p.signals(1).values(:,3)+3)])

axes(handles.axes_3d);
comet3(out.p.signals(1).values(:,1),out.p.signals(1).values(:,2),out.p.signals(1).values(:,3));

% --- Outputs from this function are returned to the command line.
function varargout = planta_end_effector_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure


% --- Executes during object creation, after setting all properties.
function axes_2d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_2d


% --- Executes during object creation, after setting all properties.
function axes_3d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_3d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_3d

%comet3(out.p.signals(1).values(:,1),out.p.signals(1).values(:,2),out.p.signals(1).values(:,3));

% --- Executes during object creation, after setting all properties.
function axes_2d_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_2d_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_2d_x


% --- Executes during object creation, after setting all properties.
function axes_2d_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_2d_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_2d_y


% --- Executes during object creation, after setting all properties.
function axes_2d_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_2d_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_2d_z

% --- Executes during object deletion, before destroying properties.
function figure1_DeleteFcn(hObject, eventdata, handles)
    % hObject    handle to figure1 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    