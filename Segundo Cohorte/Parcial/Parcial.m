function varargout = Parcial(varargin)
% PARCIAL MATLAB code for Parcial.fig
%      PARCIAL, by itself, creates a new PARCIAL or raises the existing
%      singleton*.
%
%      H = PARCIAL returns the handle to a new PARCIAL or the handle to
%      the existing singleton*.
%
%      PARCIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARCIAL.M with the given input arguments.
%
%      PARCIAL('Property','Value',...) creates a new PARCIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Parcial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Parcial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Parcial

% Last Modified by GUIDE v2.5 17-Feb-2021 00:49:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Parcial_OpeningFcn, ...
                   'gui_OutputFcn',  @Parcial_OutputFcn, ...
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


% --- Executes just before Parcial is made visible.
function Parcial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Parcial (see VARARGIN)

% Choose default command line output for Parcial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Parcial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Parcial_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in INDuploadcsv.
function INDuploadcsv_Callback(hObject, eventdata, handles)
% Cargamos la tabla con el csv
data = csvread('data.csv')
set(handles.INDuitable1,'Data',data);

% --- Executes on button press in INDcleantable.
function INDcleantable_Callback(hObject, eventdata, handles)
% Limipiamos la tabla
set(handles.INDuitable1, 'Data', cell(size(get(handles.INDuitable1,'Data'))));


% --- Executes on selection change in INDlistbox1.
function INDlistbox1_Callback(hObject, eventdata, handles)
data = csvread('data.csv')
opc = get(hObject,'Value')

x = data(:,1);
if opc == 1
 y = data(:,2);
elseif opc == 2
 y = data(:,3);
 elseif opc == 3
 y = data(:,4);
 elseif opc == 4
 y = data(:,5);
else
 y = data(:,6);
end
plot(handles.axes1,x,y,'--m');
title('Medicion Humedad')
xlabel('Lectura ')
ylabel('Medicion %')

% --- Executes during object creation, after setting all properties.
function INDlistbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to INDlistbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in INDactivGrid.
function INDactivGrid_Callback(hObject, eventdata, handles)
% Activo la Grid
set(handles.axes1,'XGrid','On');
set(handles.axes1,'YGrid','On');
