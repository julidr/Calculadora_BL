function varargout = monomodoGUI(varargin)
% MONOMODOGUI MATLAB code for monomodoGUI.fig
%      MONOMODOGUI, by itself, creates a new MONOMODOGUI or raises the existing
%      singleton*.
%
%      H = MONOMODOGUI returns the handle to a new MONOMODOGUI or the handle to
%      the existing singleton*.
%
%      MONOMODOGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MONOMODOGUI.M with the given input arguments.
%
%      MONOMODOGUI('Property','Value',...) creates a new MONOMODOGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before monomodoGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to monomodoGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help monomodoGUI

% Last Modified by GUIDE v2.5 24-May-2017 19:33:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @monomodoGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @monomodoGUI_OutputFcn, ...
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

% --- Executes just before monomodoGUI is made visible.
function monomodoGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to monomodoGUI (see VARARGIN)

% Choose default command line output for monomodoGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes monomodoGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = monomodoGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function dispersion_Callback(hObject, eventdata, handles)
% hObject    handle to dispersion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dispersion as text
%        str2double(get(hObject,'String')) returns contents of dispersion as a double


% --- Executes during object creation, after setting all properties.
function dispersion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dispersion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
get(hObject, 'String');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lambda_Callback(hObject, eventdata, handles)
% hObject    handle to lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lambda as text
%        str2double(get(hObject,'String')) returns contents of lambda as a double


% --- Executes during object creation, after setting all properties.
function lambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bl_Callback(hObject, eventdata, handles)
% hObject    handle to bl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bl as text
%        str2double(get(hObject,'String')) returns contents of bl as a double


% --- Executes during object creation, after setting all properties.
function bl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dispersion = get(handles.dispersion, 'String');
lambda = get(handles.lambda, 'String');
B = get(handles.B, 'String');
L = get(handles.L, 'String');
arrayEntrada = [dispersion, lambda, B, L];
esLetra = 1; 

for i=1:length(arrayEntrada)
    if revisarSiEntradaEsLetra(arrayEntrada(i)) == 0
       msgbox('Por favor solo ingresar valores numericos')
       esLetra = 0;
       break;
    end
end

if esLetra == 1
    if isempty(dispersion)
        dispersion = 0;
    else
        dispersion = str2double(dispersion);
    end
    if isempty(lambda)
        lambda = 0;
    else
        lambda = str2double(lambda);
    end    
    if isempty(B)
        B = 0;
    else
        B = str2double(B);
    end
    if isempty(L)
        L = 0;
    else
        L = str2double(L);
    end
    
    result = monomodo(dispersion, lambda, B, L);
    try
        if isstring(result) == 0
            msgbox(result);
        end
    catch
        set(handles.bl, 'String', result(1));
        set(handles.B, 'String', result(2));
        set(handles.L, 'String', result(3));
    end
end



function B_Callback(hObject, eventdata, handles)
% hObject    handle to textB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textB as text
%        str2double(get(hObject,'String')) returns contents of textB as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_Callback(hObject, eventdata, handles)
% hObject    handle to textL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textL as text
%        str2double(get(hObject,'String')) returns contents of textL as a double


% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GraficaMonomodoGUI
