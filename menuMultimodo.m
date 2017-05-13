function varargout = menuMultimodo(varargin)
% MENUMULTIMODO MATLAB code for menuMultimodo.fig
%      MENUMULTIMODO, by itself, creates a new MENUMULTIMODO or raises the existing
%      singleton*.
%
%      H = MENUMULTIMODO returns the handle to a new MENUMULTIMODO or the handle to
%      the existing singleton*.
%
%      MENUMULTIMODO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENUMULTIMODO.M with the given input arguments.
%
%      MENUMULTIMODO('Property','Value',...) creates a new MENUMULTIMODO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menuMultimodo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menuMultimodo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menuMultimodo

% Last Modified by GUIDE v2.5 13-May-2017 14:07:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menuMultimodo_OpeningFcn, ...
                   'gui_OutputFcn',  @menuMultimodo_OutputFcn, ...
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


% --- Executes just before menuMultimodo is made visible.
function menuMultimodo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menuMultimodo (see VARARGIN)

% Choose default command line output for menuMultimodo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes menuMultimodo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = menuMultimodo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in saltoIndice.
function saltoIndice_Callback(hObject, eventdata, handles)
% hObject    handle to saltoIndice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
multimodoSIGUI


% --- Executes on button press in indiceGradual.
function indiceGradual_Callback(hObject, eventdata, handles)
% hObject    handle to indiceGradual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
multimodoIGGUI
