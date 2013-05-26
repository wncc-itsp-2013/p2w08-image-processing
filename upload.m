function varargout = upload(varargin)
% UPLOAD M-file for upload.fig
%      UPLOAD, by itself, creates a new UPLOAD or raises the existing
%      singleton*.
%
%      H = UPLOAD returns the handle to a new UPLOAD or the handle to
%      the existing singleton*.
%
%      UPLOAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UPLOAD.M with the given input arguments.
%
%      UPLOAD('Property','Value',...) creates a new UPLOAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before upload_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to upload_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help upload

% Last Modified by GUIDE v2.5 25-May-2013 19:18:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @upload_OpeningFcn, ...
                   'gui_OutputFcn',  @upload_OutputFcn, ...
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


% --- Executes just before upload is made visible.
function upload_OpeningFcn(hObject, eventdata, handles, varargin)
axes(handles.axes2);
image=imread(browse1);
imshow(image);

% Choose default command line output for upload
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes upload wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = upload_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in brightness.
function brightness_Callback(hObject, eventdata, handles)
axes(handles.axes1);
i=imread('sample.jpg');
image1=rgb2gray(i);
imshow(image1);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
axes(handles.axes1);
i=imread('sample.jpg');
image1=rgb2ntsc(i);
imshow(image1);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
axes(handles.axes1);
i=imread('sample.jpg');
image1=rgb2ycbcr(i);
imshow(image1);



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
axes(handles.axes1);
i=imread('sample.jpg');

imshow(im2bw(i));



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
axes(handles.axes1);
i=imread('sample.jpg');
image1=rgb2bw(i);
imshow(image1);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in upload.
function upload_Callback(hObject, eventdata, handles)
% hObject    handle to upload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in effect.
function effect_Callback(hObject, eventdata, handles)


function effect_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function browse_Callback(hObject, eventdata, handles)
n=str2num(get(handles.browse,'string'))

ff=num2str(f);
syms k;
ff
%%

% --- Executes during object creation, after setting all properties.
function browse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
