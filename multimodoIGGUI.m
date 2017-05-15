function varargout = multimodoIGGUI(varargin)
% MULTIMODOIGGUI MATLAB code for multimodoIGGUI.fig
%      MULTIMODOIGGUI, by itself, creates a new MULTIMODOIGGUI or raises the existing
%      singleton*.
%
%      H = MULTIMODOIGGUI returns the handle to a new MULTIMODOIGGUI or the handle to
%      the existing singleton*.
%
%      MULTIMODOIGGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTIMODOIGGUI.M with the given input arguments.
%
%      MULTIMODOIGGUI('Property','Value',...) creates a new MULTIMODOIGGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multimodoIGGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multimodoIGGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multimodoIGGUI

% Last Modified by GUIDE v2.5 13-May-2017 13:37:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multimodoIGGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @multimodoIGGUI_OutputFcn, ...
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


% --- Executes just before multimodoIGGUI is made visible.
function multimodoIGGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multimodoIGGUI (see VARARGIN)

% Choose default command line output for multimodoIGGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multimodoIGGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multimodoIGGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

n1 = getappdata(0,'n1');
n2 = getappdata(0,'n2');
alpha = 2;
v = getappdata(0,'V');
propagados = (alpha/(alpha+2))*((v^2)/2);
set(handles.n1, 'String', n1);
set(handles.n2, 'String', n2);
set(handles.propagados,'String',propagados);

function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B as text
%        str2double(get(hObject,'String')) returns contents of B as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
get(hObject, 'String');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L as text
%        str2double(get(hObject,'String')) returns contents of L as a double



% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
get(hObject, 'String');
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
B = get(handles.B, 'String');
L = get(handles.L, 'String');
n1 = getappdata(0,'n1');
n2 = getappdata(0,'n2');
arrayEntrada = [B, L];
esLetra = 1; 

for i=1:length(arrayEntrada)
    if revisarSiEntradaEsLetra(arrayEntrada(i)) == 0
       msgbox('Por favor solo ingresar valores numericos')
       esLetra = 0;
       break;
    end
end

if esLetra == 1
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
    result = indiceGradual(n1,n2,B,L);
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


% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
