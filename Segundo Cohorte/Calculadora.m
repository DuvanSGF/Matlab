function varargout = Calculadora(varargin)
% CALCULADORA MATLAB code for Calculadora.fig
%      CALCULADORA, by itself, creates a new CALCULADORA or raises the existing
%      singleton*.
%
%      H = CALCULADORA returns the handle to a new CALCULADORA or the handle to
%      the existing singleton*.
%
%      CALCULADORA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULADORA.M with the given input arguments.
%
%      CALCULADORA('Property','Value',...) creates a new CALCULADORA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculadora_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculadora_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculadora

% Last Modified by GUIDE v2.5 26-Jan-2021 22:53:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculadora_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculadora_OutputFcn, ...
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


% --- Executes just before Calculadora is made visible.
function Calculadora_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calculadora (see VARARGIN)

% Choose default command line output for Calculadora
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculadora wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Calculadora_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in INDsum.
function INDsum_Callback(hObject, eventdata, handles)
global X;
global Y;
sum = X + Y;
set(handles.INDresult,'string',sum);

% --- Executes on button press in INDresta.
function INDresta_Callback(hObject, eventdata, handles)
global X;
global Y;
rest = X - Y;
set(handles.INDresult,'string',rest);


% --- Executes on button press in INDmulplicacion.
function INDmulplicacion_Callback(hObject, eventdata, handles)
global X;
global Y;
multi = X * Y;
set(handles.INDresult,'string',multi);


% --- Executes on button press in INDdivision.
function INDdivision_Callback(hObject, eventdata, handles)
global X;
global Y;
div = X / Y;
set(handles.INDresult,'string',div);



function INDcaja1_Callback(hObject, eventdata, handles)
global X;
X = str2double(get(hObject,'String'))


% --- Executes during object creation, after setting all properties.
function INDcaja1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to INDcaja1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function INDcaja2_Callback(hObject, eventdata, handles)
global Y;
Y = str2double(get(hObject,'String'))

% --- Executes during object creation, after setting all properties.
function INDcaja2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to INDcaja2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
set(handles.INDcaja1,'string','');
set(handles.INDcaja2,'string','');
set(handles.INDresult,'string','');
