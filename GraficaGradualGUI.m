function varargout = GraficaGradualGUI(varargin)
% GRAFICAGRADUALGUI MATLAB code for GraficaGradualGUI.fig
%      GRAFICAGRADUALGUI, by itself, creates a new GRAFICAGRADUALGUI or raises the existing
%      singleton*.
%
%      H = GRAFICAGRADUALGUI returns the handle to a new GRAFICAGRADUALGUI or the handle to
%      the existing singleton*.
%
%      GRAFICAGRADUALGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICAGRADUALGUI.M with the given input arguments.
%
%      GRAFICAGRADUALGUI('Property','Value',...) creates a new GRAFICAGRADUALGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GraficaGradualGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GraficaGradualGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GraficaGradualGUI

% Last Modified by GUIDE v2.5 18-May-2017 18:26:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GraficaGradualGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GraficaGradualGUI_OutputFcn, ...
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


% --- Executes just before GraficaGradualGUI is made visible.
function GraficaGradualGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GraficaGradualGUI (see VARARGIN)

% Choose default command line output for GraficaGradualGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GraficaGradualGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GraficaGradualGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

n1 = getappdata(0,'n1');
n2 = getappdata(0,'n2');
set(handles.n1, 'String', n1);
set(handles.n2, 'String', n2);

% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 clc;
    
        n1 = get(handles.n1, 'String');
        n2 =get(handles.n2, 'String');
        arrayEntrada = [n1, n2];
        esLetra = 1;
        %Revisa si algun String es una letra
        for i=1:length(arrayEntrada)
            if revisarSiEntradaEsLetra(arrayEntrada(i)) == 0
               msgbox('Por favor solo ingresar valores numericos')
               esLetra = 0;
               break;
            end
        end
        
        if esLetra == 1
           
                n1 = str2double(n1);
                n2 = str2double(n2);
             if n1>n2
                L = 1;
                C = 3*10^8; 
                delta = (n1-n2)/n1;
                B = (8*C)/(n1*((delta)^2)*L);
                x = [0 0];
                y = [L B];
                figure
                plot([x(1) y(1)],[x(2) y(2)],'r');
            else
                msgbox('El valor de n1 debe ser mayor a n2 para halla propagacion')
            end
        end



function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n2 as text
%        str2double(get(hObject,'String')) returns contents of n2 as a double


% --- Executes during object creation, after setting all properties.
function n2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n1 as text
%        str2double(get(hObject,'String')) returns contents of n1 as a double


% --- Executes during object creation, after setting all properties.
function n1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
