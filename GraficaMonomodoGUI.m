function varargout = GraficaMonomodoGUI(varargin)
% GRAFICAMONOMODOGUI MATLAB code for GraficaMonomodoGUI.fig
%      GRAFICAMONOMODOGUI, by itself, creates a new GRAFICAMONOMODOGUI or raises the existing
%      singleton*.
%
%      H = GRAFICAMONOMODOGUI returns the handle to a new GRAFICAMONOMODOGUI or the handle to
%      the existing singleton*.
%
%      GRAFICAMONOMODOGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICAMONOMODOGUI.M with the given input arguments.
%
%      GRAFICAMONOMODOGUI('Property','Value',...) creates a new GRAFICAMONOMODOGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GraficaMonomodoGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GraficaMonomodoGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GraficaMonomodoGUI

% Last Modified by GUIDE v2.5 23-May-2017 14:12:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GraficaMonomodoGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GraficaMonomodoGUI_OutputFcn, ...
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


% --- Executes just before GraficaMonomodoGUI is made visible.
function GraficaMonomodoGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GraficaMonomodoGUI (see VARARGIN)

% Choose default command line output for GraficaMonomodoGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GraficaMonomodoGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GraficaMonomodoGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

d = getappdata(0,'d');
lam = getappdata(0,'am');
set(handles.d, 'String', d);
set(handles.lam, 'String', lam);
% --- Executes on button press in grafica.
function grafica_Callback(hObject, eventdata, handles)
% hObject    handle to grafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  clc;
    
        d = get(handles.d, 'String');
        lam =get(handles.lam, 'String');
        arrayEntrada = [d, lam];
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
                d = str2double(d);
                lam = str2double(lam);
                L = 1;
                B = 1/(d*lam*L);
                x = [0 0];
                y = [L B];
                figure
                plot([x(1) y(1)],[x(2) y(2)],'r');
                ylabel('Ancho de Banda (Gb)'); 
                xlabel('Longitud (KM)');
                title('Grafica Monomodo');
        end



function lam_Callback(hObject, eventdata, handles)
% hObject    handle to lam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lam as text
%        str2double(get(hObject,'String')) returns contents of lam as a double


% --- Executes during object creation, after setting all properties.
function lam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
