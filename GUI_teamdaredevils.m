function varargout = GUI_teamdaredevils(varargin)
% GUI_TEAMDAREDEVILS M-file for GUI_teamdaredevils.fig
%      GUI_TEAMDAREDEVILS, by itself, creates a new GUI_TEAMDAREDEVILS or raises the existing
%      singleton*.
%
%      H = GUI_TEAMDAREDEVILS returns the handle to a new GUI_TEAMDAREDEVILS or the handle to
%      the existing singleton*.
% 
%      GUI_TEAMDAREDEVILS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_TEAMDAREDEVILS.M with the given input arguments.
%
%      GUI_TEAMDAREDEVILS('Property','Value',...) creates a new GUI_TEAMDAREDEVILS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_teamdaredevils_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_teamdaredevils_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_teamdaredevils

% Last Modified by GUIDE v2.5 15-Jun-2013 16:41:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_teamdaredevils_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_teamdaredevils_OutputFcn, ...
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


% --- Executes just before GUI_teamdaredevils is made visible.
function GUI_teamdaredevils_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(gcf,'Color','c');
axes(handles.axes3);
a=imread('logo.png');
imshow(a);
global rateR rateG rateB
rateR=127;rateG=127;rateB=255;
% UIWAIT makes GUI_teamdaredevils wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_teamdaredevils_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on button press in upload.
function upload_Callback(hObject, eventdata, handles)


global im im2 ;
[path,user_cance]=imgetfile();
if user_cance
    msgbox(sprintf('Error'),'Error','Error');
    return
end
im=imread(path);
im=im2double(im); %converts to double
im2=im;%for backup process :)
im=im2uint8(im);
axes(handles.axes2);
imshow(im);
final_image=im;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2;
axes(handles.axes1);
imshow(im2);
final_image=im2;


% --- Executes on selection change in effects.
function effects_Callback(hObject, eventdata, handles)
% hObject    handle to effects (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns effects contents as cell array
%        contents{get(hObject,'Value')} returns selected item from effects
contents = get(hObject,'Value');

switch contents
    case 1
      global im2;
axes(handles.axes1);
imshow(im2);
final_image=im2;
         case 2
       global im2;
       axes(handles.axes1);
       im3=rgb2gray(im2);
        imshow(im3);
        final_image=im3;
         case 3
      global im;
imblack=im;
imblack=1-im;
axes(handles.axes1);
imshow(imblack);
final_image=imblack;
    case 4
        global im;
        imbw=im;
        axes(handles.axes1);
        imshow(im2bw(imbw));

         case 5
       global im2;
       axes(handles.axes1);
       im3=rgb2ycbcr(im2);
        imshow(im3);
        final_image=im3;
    otherwise
end

% --- Executes during object creation, after setting all properties.
function effects_CreateFcn(hObject, eventdata, handles)
% hObject    handle to effects (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function New_Callback(hObject, eventdata, handles)
% hObject    handle to New (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Save_Callback(hObject, eventdata, handles)
%image_save=final_image;
%imwrite(image_save,'our_creation','jpg');

% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im im2;
[path,user_cance]=imgetfile();
if user_cance
    msgbox(sprintf('Error'),'Error','Error');
    return
end
im=imread(path);
im=im2double(im); %converts to double
im2=im; %for backup process :)
axes(handles.axes2);
imshow(im);
axes(handles.axes1);



function edit1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global im2
val=0.5*get(hObject,'Value');
imbright=im2+val;
axes(handles.axes1);
imshow(imbright);
final_image=imbright;
set(handles.brightness_value,'string',(val*200))
% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global im;%axes(handles.axes1);
rotate_im=im;
a=get(hObject,'Value');

j=imrotate(rotate_im,a);

imshow(j);
set(handles.rotate_value,'string',a);
final_image=j;
% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function brightness_value_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of brightness_value as text
%        str2double(get(hObject,'String')) returns contents of brightness_value as a double


% --- Executes during object creation, after setting all properties.
function brightness_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightness_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rotate_value_Callback(hObject, eventdata, handles)
% hObject    handle to rotate_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rotate_value as text
%        str2double(get(hObject,'String')) returns contents of rotate_value as a double


% --- Executes during object creation, after setting all properties.
function rotate_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rotate_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on slider3 and none of its controls.
function slider3_KeyPressFcn(hObject, eventdata, handles)


% --- Executes on slider movement.
function opaque_Callback(hObject, eventdata, handles)

global im;

op_image=im;
imshow(op_image);
op_value=get(hObject,'Value');

alpha(1-op_value);
set(handles.trans_value,'string',(op_value*100));

% --- Executes during object creation, after setting all properties.
function opaque_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opaque (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function trans_value_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function trans_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trans_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in crop.
function crop_Callback(hObject, eventdata, handles)
% hObject    handle to crop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global im;
cropped_image = imcrop(im);
imshow(cropped_image);



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in zoom_on.
function zoom_on_Callback(hObject, eventdata, handles)
global im;
zoomed_image=im;
imshow(zoomed_image);
zoom on;

% --- Executes on button press in zoom_off.
function zoom_off_Callback(hObject, eventdata, handles)
zoom off;
pan off;



function Sharpness_value_Callback(hObject, eventdata, handles)
% hObject    handle to Sharpness_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Sharpness_value as text
%        str2double(get(hObject,'String')) returns contents of Sharpness_value as a double


% --- Executes during object creation, after setting all properties.
function Sharpness_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sharpness_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sharpness_Callback(hObject, eventdata, handles)
% hObject    handle to sharpness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sharp_value=get(hObject,'Value');
set(handles.Sharpness_value,'string',sharp_value*100);
global im;
axes(handles.axes1);
sharped=im;
H = fspecial('unsharp',sharp_value);
sharpened = imfilter(sharped,H,'circular');
imshow(sharpened);

% --- Executes during object creation, after setting all properties.
function sharpness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sharpness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function blurr_value_Callback(hObject, eventdata, handles)
% hObject    handle to blurr_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of blurr_value as text
%        str2double(get(hObject,'String')) returns contents of blurr_value as a double


% --- Executes during object creation, after setting all properties.
function blurr_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blurr_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function blurr_Callback(hObject, eventdata, handles)
blurred_value=get(hObject,'Value');
set(handles.blurr_value,'string',blurred_value*2);
global im;
axes(handles.axes1);
blurr_image=im;
H = fspecial('disk',blurred_value+0.001);
blurr1 = imfilter(blurr_image,H,'replicate');
imshow(blurr1);


% --- Executes during object creation, after setting all properties.
function blurr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blurr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pan1.
function pan1_Callback(hObject, eventdata, handles)
pan on;


% --- Executes on slider movement.
function red_Callback(hObject, eventdata, handles)
global rateR rateG rateB im
rateR=get(hObject,'Value');
ima(:,:,1)=cast(rateR*ceil(im(:,:,1)/rateR),'uint8');
ima(:,:,2)=cast(rateG*ceil(im(:,:,2)/rateG),'uint8');
ima(:,:,3)=cast(rateB*ceil(im(:,:,3)/rateB),'uint8');

imshow(ima);
% --- Executes during object creation, after setting all properties.
function red_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function green_Callback(hObject, eventdata, handles)
global rateR rateG rateB im
rateG=get(hObject,'Value');
ima(:,:,1)=cast(rateR*ceil(im(:,:,1)/rateR),'uint8');
ima(:,:,2)=cast(rateG*ceil(im(:,:,2)/rateG),'uint8');
ima(:,:,3)=cast(rateB*ceil(im(:,:,3)/rateB),'uint8');

imshow(ima);

% --- Executes during object creation, after setting all properties.
function green_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function blue_Callback(hObject, eventdata, handles)
global rateR rateG rateB im
rateB=get(hObject,'Value');
ima(:,:,1)=cast(rateR*ceil(im(:,:,1)/rateR),'uint8');
ima(:,:,2)=cast(rateG*ceil(im(:,:,2)/rateG),'uint8');
ima(:,:,3)=cast(rateB*ceil(im(:,:,3)/rateB),'uint8');

imshow(ima);


% --- Executes during object creation, after setting all properties.
function blue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit10_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit10_ButtonDownFcn(hObject, eventdata, handles)

function edit11_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function contrast_value_Callback(hObject, eventdata, handles)
set(handles.contrast_value,'string',aa);

% --- Executes during object creation, after setting all properties.
function contrast_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to contrast_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function contrast_Callback(hObject, eventdata, handles)
global aa  im 
axes(handles.axes1)
aa=get(hObject,'Value');
aa=aa+0.21;
aa=1.21-aa;

set(handles.contrast_value,'string',floor(100.45-((aa*100)/0.789-26.166))+1);
RGB2 = imadjust(im,[.2 .2 0; aa aa 1],[]);
imshow(RGB2);



% --- Executes during object creation, after setting all properties.
function contrast_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 global im im2;
[path,user_cance]=imgetfile();
if user_cance
    msgbox(sprintf('Error'),'Error','Error');
    return
end
im=imread(path);
im=im2double(im); %converts to double
im2=im; %for backup process :)
axes(handles.axes2);
imshow(im);
axes(handles.axes1);

 
% --------------------------------------------------------------------
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


      
[FileName, PathName] = uiputfile('*jpg', 'Save As');
Name = fullfile(PathName, FileName);
imwrite(handles.axes1, Name, 'jpg');
% --------------------------------------------------------------------
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
