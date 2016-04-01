function varargout = GUI_test(varargin)
% GUI_TEST MATLAB code for GUI_test.fig
%      GUI_TEST, by itself, creates a new GUI_TEST or raises the existing
%      singleton*.
%
%      H = GUI_TEST returns the handle to a new GUI_TEST or the handle to
%      the existing singleton*.
%
%      GUI_TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_TEST.M with the given input arguments.
%
%      GUI_TEST('Property','Value',...) creates a new GUI_TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_test

% Last Modified by GUIDE v2.5 31-Mar-2016 15:14:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_test_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_test_OutputFcn, ...
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


% --- Executes just before GUI_test is made visible.
function GUI_test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_test (see VARARGIN)

% create data to plot
axes(handles.axes1);
handles.peaks=peaks(35);
handles.membrane=membrane;
[x,y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2) + eps;
sinc=sin(r)./r;
handles.sinc=sinc;
handles.current_data=handles.peaks;
surf(handles.current_data);

% Choose default command line output for GUI_test
handles.output = hObject;

% Draw CWRU logo
axes(handles.axes3);
imshow('case.png');

% draw sources
% axes(handles.axes43);
% imshow('sourcesLEFTcopy2.png');
% axes(handles.axes64);
% imshow('sourcesLEFTcopy2.png');

% draw houses
axes(handles.axes1);
imshow('HousePowered.png');
axes(handles.axes2);
imshow('HousePowered.png');
axes(handles.axes7);
imshow('HousePowered.png');
axes(handles.axes19);
imshow('HousePowered.png');
axes(handles.axes20);
imshow('HousePowered.png');
axes(handles.axes24);
imshow('HousePowered.png');
axes(handles.axes27);
imshow('Building_powered.png');
axes(handles.axes28);
imshow('Building_powered.png');
axes(handles.axes32);
imshow('Building_powered.png');
axes(handles.axes35);
imshow('Building_powered.png');
axes(handles.axes36);
imshow('Building_powered.png');
axes(handles.axes40);
imshow('Building_powered.png');

% draw lines to sectionalizers
axes(handles.axes4);
imshow('L1a-on.png');
axes(handles.axes21);
imshow('L1a-on.png');
axes(handles.axes29);
imshow('L3a-on.png');
axes(handles.axes37);
imshow('L3a-on.png');


% draw house sectionalizers
axes(handles.axes5);
imshow('RS_000.png');
axes(handles.axes6);
imshow('RS_000.png');
axes(handles.axes8);
imshow('RS_000.png');
axes(handles.axes22);
imshow('RS_000.png')
axes(handles.axes23);
imshow('RS_000.png');
axes(handles.axes25);
imshow('RS_000.png');
axes(handles.axes30);
imshow('RS_000.png')
axes(handles.axes31);
imshow('RS_000.png');
axes(handles.axes33);
imshow('RS_000.png');
axes(handles.axes38);
imshow('RS_000.png')
axes(handles.axes39);
imshow('RS_000.png');
axes(handles.axes41);
imshow('RS_000.png');


% draw Network
axes(handles.axes48);
imshow('N1a-on.png');
axes(handles.axes51);
imshow('N3a-on.png');
axes(handles.axes56);
imshow('N5a-on.png');
axes(handles.axes57);
imshow('N4a-on.png');
axes(handles.axes66);
imshow('N5a-oncopy.png');
axes(handles.axes67);
imshow('N4a-oncopy.png');

% draw Network sectionalizers
axes(handles.axes44);
imshow('NS_000.png');
axes(handles.axes45);
imshow('NS_000.png');
axes(handles.axes46);
imshow('NS_000.png');
axes(handles.axes47);
imshow('NS_000.png')
axes(handles.axes49);
imshow('NS_000.png');
axes(handles.axes50);
imshow('NS_000.png');
axes(handles.axes52);
imshow('NS_000.png')
axes(handles.axes53);
imshow('NS_000.png');
axes(handles.axes52);
imshow('NS_000.png')
axes(handles.axes53);
imshow('NS_000.png');
axes(handles.axes55);
imshow('RS_000.png')
axes(handles.axes54);
imshow('RS_000.png');
axes(handles.axes68);
imshow('RS_000.png');


% draw GF 
axes(handles.axes10);
imshow('GF-off.png');
axes(handles.axes26);
imshow('GF-off.png');
axes(handles.axes34);
imshow('GF-off.png');
axes(handles.axes42);
imshow('GF-off.png');
axes(handles.axes58);
imshow('GFN-off.png');
axes(handles.axes59);
imshow('GFN2-off.png');
axes(handles.axes60);
imshow('GFN3-off.png');
axes(handles.axes61);
imshow('GFN3-off.png');
axes(handles.axes62);
imshow('GFN3-off.png');

%set ( 0, 'DefaultFigureColor', [1 1 1] );
bgcolor = [1 1 1]; 
set(hObject, 'Color', bgcolor); 
set(findobj(hObject,'-property', 'BackgroundColor'), 'BackgroundColor', bgcolor); 

% define current values houses
set(handles.edit1,'String',num2str(10));
set(handles.edit3,'String',num2str(11));
set(handles.edit5,'String',num2str(12));
set(handles.edit7,'String',num2str(0));
set(handles.edit16,'String',num2str(10));
set(handles.edit18,'String',num2str(11));
set(handles.edit20,'String',num2str(12));
set(handles.edit22,'String',num2str(0));
set(handles.edit23,'String',num2str(10));
set(handles.edit25,'String',num2str(11));
set(handles.edit27,'String',num2str(12));
set(handles.edit29,'String',num2str(0));
set(handles.edit30,'String',num2str(10));
set(handles.edit32,'String',num2str(11));
set(handles.edit34,'String',num2str(12));
set(handles.edit36,'String',num2str(0));

% define priority values houses
set(handles.edit2,'String',num2str(1));
set(handles.edit4,'String',num2str(2));
set(handles.edit6,'String',num2str(3));
set(handles.edit17,'String',num2str(4));
set(handles.edit19,'String',num2str(5));
set(handles.edit21,'String',num2str(6));
set(handles.edit24,'String',num2str(4));
set(handles.edit26,'String',num2str(5));
set(handles.edit28,'String',num2str(6));
set(handles.edit31,'String',num2str(4));
set(handles.edit33,'String',num2str(5));
set(handles.edit35,'String',num2str(6));

% define Battery values
set(handles.batt_SOC,'String',num2str(85));
set(handles.Batt_volts,'String',num2str(100));
set(handles.Batt_Power,'String',num2str(100));

% define OV values
set(handles.PV_Max_SP,'String',num2str(75));
set(handles.PV_volts,'String',num2str(200));
set(handles.PV_Power,'String',num2str(200));

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
axes(handles.axes1);
val=get(hObject,'Value');
str=get(hObject,'String');
switch str{val}
    case 'peaks'  %user selecxts peaks
        handles.current_data=handles.peaks;
    case 'membrane'
        handles.current_data=handles.membrane;
    case 'sinc'
        handles.current_data=handles.sinc;
end
guidata(hObject, handles);
        

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in surf_pushbutton.
function surf_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to surf_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%display surf plaot of curnet slect data
axes(handles.axes1);
surf(handles.current_data);


% --- Executes on button press in mesh_pushbutton.
function mesh_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to mesh_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%display mesh plaot of curnet slect data
axes(handles.axes1);
mesh(handles.current_data);

% --- Executes on button press in contour_pushbutton.
function contour_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to contour_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%display controu plaot of curnet slect data
axes(handles.axes1);
contour(handles.current_data);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
imshow('ResidentialPowered.png');


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
aaa=get(hObject,'Value');
axes(handles.axes4);
if aaa==1
    imshow('L1a-off.png');
else
    imshow('L1a-on.png');
end


% --- Executes on button press in H1.
function H1_Callback(hObject, eventdata, handles)
% hObject    handle to H1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of H1
aab=get(hObject,'Value');
axes(handles.axes1);
if aab==1
    imshow('HouseFault.png');
else
    imshow('HousePowered.png');
end


% --- Executes on button press in H2tog.
function H2tog_Callback(hObject, eventdata, handles)
% hObject    handle to H2tog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of H2tog
aac=get(hObject,'Value');
axes(handles.axes2);
if aac==1
    imshow('HouseUnpowered.png');
else
    imshow('HousePowered.png');
end


% --- Executes on button press in NC1.
function LS1_Callback(hObject, eventdata, handles)
% hObject    handle to LS1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LS1
aad=get(hObject,'Value');
axes(handles.axes5);
if aad==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NC2.
function LS2_Callback(hObject, eventdata, handles)
% hObject    handle to LS2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LS2
aae=get(hObject,'Value');
axes(handles.axes6);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NC3.
function LS3_Callback(hObject, eventdata, handles)
% hObject    handle to LS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LS3=LS3
aaf=get(hObject,'Value');
axes(handles.axes8);
if aaf==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end





function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GF1.
function GF1_Callback(hObject, eventdata, handles)
% hObject    handle to GF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GF1
aag=get(hObject,'Value');
axes(handles.axes10);
if aag==1
    imshow('GF-on.png');
else
    imshow('GF-off.png');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Default.
function Default_Callback(hObject, eventdata, handles)
% hObject    handle to Default (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton8.
function togglebutton8_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton8
aah=get(hObject,'Value');
axes(handles.axes1);
if aah==1
    imshow('HouseUnpowered.png');
else
    imshow('HousePowered.png');
end

% --- Executes on button press in togglebutton9.
function togglebutton9_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton9
aai=get(hObject,'Value');
axes(handles.axes2);
if aai==1
    imshow('HouseFault.png');
else
    imshow('HousePowered.png');
end


% --- Executes on button press in togglebutton10.
function togglebutton10_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton10
aaj=get(hObject,'Value');
axes(handles.axes7);
if aaj==1
    imshow('HouseUnpowered.png');
else
    imshow('HousePowered.png');
end

% --- Executes on button press in togglebutton11.
function togglebutton11_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton11
aak=get(hObject,'Value');
axes(handles.axes7);
if aak==1
    imshow('HouseFault.png');
else
    imshow('HousePowered.png');
end


% --- Executes on button press in NO1.
function NO1_Callback(hObject, eventdata, handles)
% hObject    handle to NO1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO1
aal=get(hObject,'Value');
axes(handles.axes5);
if aal==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NO2.
function NO2_Callback(hObject, eventdata, handles)
% hObject    handle to NO2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO2
aam=get(hObject,'Value');
axes(handles.axes6);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NO3.
function NO3_Callback(hObject, eventdata, handles)
% hObject    handle to NO3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO3
aan=get(hObject,'Value');
axes(handles.axes8);
if aan==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in L2_off.
function L2_off_Callback(hObject, eventdata, handles)
% hObject    handle to L2_off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of L2_off
aaa=get(hObject,'Value');
axes(handles.axes21);
if aaa==1
    imshow('L1a-off.png');
else
    imshow('L1a-on.png');
end

% --- Executes on button press in NC4.
function NC4_Callback(hObject, eventdata, handles)
% hObject    handle to NC4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC4
aae=get(hObject,'Value');
axes(handles.axes22);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NC5.
function NC5_Callback(hObject, eventdata, handles)
% hObject    handle to NC5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC5
aae=get(hObject,'Value');
axes(handles.axes23);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NC6.
function NC6_Callback(hObject, eventdata, handles)
% hObject    handle to NC6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC6
aae=get(hObject,'Value');
axes(handles.axes25);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GF2.
function GF2_Callback(hObject, eventdata, handles)
% hObject    handle to GF2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GF2
aag=get(hObject,'Value');
axes(handles.axes26);
if aag==1
    imshow('GF-on.png');
else
    imshow('GF-off.png');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in NO4.
function NO4_Callback(hObject, eventdata, handles)
% hObject    handle to NO4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO4
aam=get(hObject,'Value');
axes(handles.axes22);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NO5.
function NO5_Callback(hObject, eventdata, handles)
% hObject    handle to NO5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO5
aam=get(hObject,'Value');
axes(handles.axes23);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NO6.
function NO6_Callback(hObject, eventdata, handles)
% hObject    handle to NO6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO6
aam=get(hObject,'Value');
axes(handles.axes25);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in L3_off.
function L3_off_Callback(hObject, eventdata, handles)
% hObject    handle to L3_off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of L3_off
aaa=get(hObject,'Value');
axes(handles.axes29);
if aaa==1
    imshow('L3a-off.png');
else
    imshow('L3a-on.png');
end


% --- Executes on button press in NC7.
function NC7_Callback(hObject, eventdata, handles)
% hObject    handle to NC7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC7
aae=get(hObject,'Value');
axes(handles.axes30);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NC8.
function NC8_Callback(hObject, eventdata, handles)
% hObject    handle to NC8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC8
aae=get(hObject,'Value');
axes(handles.axes31);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NC9.
function NC9_Callback(hObject, eventdata, handles)
% hObject    handle to NC9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC9
aae=get(hObject,'Value');
axes(handles.axes33);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GF3.
function GF3_Callback(hObject, eventdata, handles)
% hObject    handle to GF3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GF3
aag=get(hObject,'Value');
axes(handles.axes34);
if aag==1
    imshow('GF-on.png');
else
    imshow('GF-off.png');
end


function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in NO7.
function NO7_Callback(hObject, eventdata, handles)
% hObject    handle to NO7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO7
aam=get(hObject,'Value');
axes(handles.axes30);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NO8.
function NO8_Callback(hObject, eventdata, handles)
% hObject    handle to NO8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO8
aam=get(hObject,'Value');
axes(handles.axes31);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NO9.
function NO9_Callback(hObject, eventdata, handles)
% hObject    handle to NO9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO9
aam=get(hObject,'Value');
axes(handles.axes33);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in L4_off.
function L4_off_Callback(hObject, eventdata, handles)
% hObject    handle to L4_off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of L4_off
aaa=get(hObject,'Value');
axes(handles.axes37);
if aaa==1
    imshow('L3a-off.png');
else
    imshow('L3a-on.png');
end


% --- Executes on button press in NC10.
function NC10_Callback(hObject, eventdata, handles)
% hObject    handle to NC10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC10
aae=get(hObject,'Value');
axes(handles.axes38);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NC11.
function NC11_Callback(hObject, eventdata, handles)
% hObject    handle to NC11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC11
aae=get(hObject,'Value');
axes(handles.axes39);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NC12.
function NC12_Callback(hObject, eventdata, handles)
% hObject    handle to NC12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NC12
aae=get(hObject,'Value');
axes(handles.axes41);
if aae==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GF4.
function GF4_Callback(hObject, eventdata, handles)
% hObject    handle to GF4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GF4
aag=get(hObject,'Value');
axes(handles.axes42);
if aag==1
    imshow('GF-on.png');
else
    imshow('GF-off.png');
end


function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double


% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in NO10.
function NO10_Callback(hObject, eventdata, handles)
% hObject    handle to NO10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO10
aam=get(hObject,'Value');
axes(handles.axes38);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NO11.
function NO11_Callback(hObject, eventdata, handles)
% hObject    handle to NO11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO11
aam=get(hObject,'Value');
axes(handles.axes39);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NO12.
function NO12_Callback(hObject, eventdata, handles)
% hObject    handle to NO12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NO12
aam=get(hObject,'Value');
axes(handles.axes41);
if aam==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end



function batt_SOC_Callback(hObject, eventdata, handles)
% hObject    handle to batt_SOC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of batt_SOC as text
%        str2double(get(hObject,'String')) returns contents of batt_SOC as a double


% --- Executes during object creation, after setting all properties.
function batt_SOC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to batt_SOC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Batt_volts_Callback(hObject, eventdata, handles)
% hObject    handle to Batt_volts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Batt_volts as text
%        str2double(get(hObject,'String')) returns contents of Batt_volts as a double


% --- Executes during object creation, after setting all properties.
function Batt_volts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Batt_volts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Batt_Power_Callback(hObject, eventdata, handles)
% hObject    handle to Batt_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Batt_Power as text
%        str2double(get(hObject,'String')) returns contents of Batt_Power as a double


% --- Executes during object creation, after setting all properties.
function Batt_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Batt_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PV_Max_SP_Callback(hObject, eventdata, handles)
% hObject    handle to PV_Max_SP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PV_Max_SP as text
%        str2double(get(hObject,'String')) returns contents of PV_Max_SP as a double


% --- Executes during object creation, after setting all properties.
function PV_Max_SP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PV_Max_SP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PV_volts_Callback(hObject, eventdata, handles)
% hObject    handle to PV_volts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PV_volts as text
%        str2double(get(hObject,'String')) returns contents of PV_volts as a double


% --- Executes during object creation, after setting all properties.
function PV_volts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PV_volts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PV_Power_Callback(hObject, eventdata, handles)
% hObject    handle to PV_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PV_Power as text
%        str2double(get(hObject,'String')) returns contents of PV_Power as a double


% --- Executes during object creation, after setting all properties.
function PV_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PV_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in NCA.
function NCA_Callback(hObject, eventdata, handles)
% hObject    handle to NCA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCA
aal=get(hObject,'Value');
axes(handles.axes44);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NOA.
function NOA_Callback(hObject, eventdata, handles)
% hObject    handle to NOA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOA
aal=get(hObject,'Value');
axes(handles.axes44);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NCB.
function NCB_Callback(hObject, eventdata, handles)
% hObject    handle to NCB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCB
aal=get(hObject,'Value');
axes(handles.axes45);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end

% --- Executes on button press in NOB.
function NOB_Callback(hObject, eventdata, handles)
% hObject    handle to NOB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOB
aal=get(hObject,'Value');
axes(handles.axes45);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NCE.
function NCE_Callback(hObject, eventdata, handles)
% hObject    handle to NCE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCE
aal=get(hObject,'Value');
axes(handles.axes46);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end

% --- Executes on button press in NOE.
function NOE_Callback(hObject, eventdata, handles)
% hObject    handle to NOE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOE
aal=get(hObject,'Value');
axes(handles.axes46);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end

% --- Executes on button press in NCF.
function NCF_Callback(hObject, eventdata, handles)
% hObject    handle to NCF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCF
aal=get(hObject,'Value');
axes(handles.axes47);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end

% --- Executes on button press in NOF.
function NOF_Callback(hObject, eventdata, handles)
% hObject    handle to NOF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOF
aal=get(hObject,'Value');
axes(handles.axes47);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NCC.
function NCC_Callback(hObject, eventdata, handles)
% hObject    handle to NCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCC
aal=get(hObject,'Value');
axes(handles.axes49);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NOC.
function NOC_Callback(hObject, eventdata, handles)
% hObject    handle to NOC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOC
aal=get(hObject,'Value');
axes(handles.axes49);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NCD.
function NCD_Callback(hObject, eventdata, handles)
% hObject    handle to NCD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCD
aal=get(hObject,'Value');
axes(handles.axes50);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NOD.
function NOD_Callback(hObject, eventdata, handles)
% hObject    handle to NOD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOD
aal=get(hObject,'Value');
axes(handles.axes50);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NCG.
function NCG_Callback(hObject, eventdata, handles)
% hObject    handle to NCG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCG
aal=get(hObject,'Value');
axes(handles.axes52);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NOG.
function NOG_Callback(hObject, eventdata, handles)
% hObject    handle to NOG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOG
aal=get(hObject,'Value');
axes(handles.axes52);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NCH.
function NCH_Callback(hObject, eventdata, handles)
% hObject    handle to NCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCH
aal=get(hObject,'Value');
axes(handles.axes53);
if aal==1
    imshow('NS_NC.png');
else
    imshow('NS_000.png');
end

% --- Executes on button press in NOH.
function NOH_Callback(hObject, eventdata, handles)
% hObject    handle to NOH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOH
aal=get(hObject,'Value');
axes(handles.axes53);
if aal==1
    imshow('NS_NO.png');
else
    imshow('NS_000.png');
end


% --- Executes on button press in NCJ.
function NCJ_Callback(hObject, eventdata, handles)
% hObject    handle to NCJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCJ
aal=get(hObject,'Value');
axes(handles.axes54);
if aal==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NOJ.
function NOJ_Callback(hObject, eventdata, handles)
% hObject    handle to NOJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOJ
aal=get(hObject,'Value');
axes(handles.axes54);
if aal==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in NCI.
function NCI_Callback(hObject, eventdata, handles)
% hObject    handle to NCI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NCI
aal=get(hObject,'Value');
axes(handles.axes55);
if aal==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end

% --- Executes on button press in NOI.
function NOI_Callback(hObject, eventdata, handles)
% hObject    handle to NOI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of NOI
aal=get(hObject,'Value');
axes(handles.axes55);
if aal==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in togglebutton67.
function togglebutton67_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton67
aag=get(hObject,'Value');
axes(handles.axes58);
if aag==1
    imshow('GFN-on.png');
else
    imshow('GFN-off.png');
end


% --- Executes on button press in togglebutton69.
function togglebutton69_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton69
aag=get(hObject,'Value');
axes(handles.axes59);
if aag==1
    imshow('GFN2-on.png');
else
    imshow('GFN2-off.png');
end


% --- Executes on button press in togglebutton70.
function togglebutton70_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton70
aag=get(hObject,'Value');
axes(handles.axes60);
if aag==1
    imshow('GFN3-on.png');
else
    imshow('GFN3-off.png');
end


% --- Executes on button press in togglebutton71.
function togglebutton71_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton71
aag=get(hObject,'Value');
axes(handles.axes61);
if aag==1
    imshow('GFN3-on.png');
else
    imshow('GFN3-off.png');
end


% --- Executes on button press in togglebutton72.
function togglebutton72_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton72
aag=get(hObject,'Value');
axes(handles.axes62);
if aag==1
    imshow('GFN3-on.png');
else
    imshow('GFN3-off.png');
end


% --- Executes during object creation, after setting all properties.
function axes63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes63



function edit43_Callback(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit43 as text
%        str2double(get(hObject,'String')) returns contents of edit43 as a double


% --- Executes during object creation, after setting all properties.
function edit43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit44_Callback(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit44 as text
%        str2double(get(hObject,'String')) returns contents of edit44 as a double


% --- Executes during object creation, after setting all properties.
function edit44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit45_Callback(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit45 as text
%        str2double(get(hObject,'String')) returns contents of edit45 as a double


% --- Executes during object creation, after setting all properties.
function edit45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit46_Callback(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit46 as text
%        str2double(get(hObject,'String')) returns contents of edit46 as a double


% --- Executes during object creation, after setting all properties.
function edit46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit47_Callback(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit47 as text
%        str2double(get(hObject,'String')) returns contents of edit47 as a double


% --- Executes during object creation, after setting all properties.
function edit47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit48_Callback(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit48 as text
%        str2double(get(hObject,'String')) returns contents of edit48 as a double


% --- Executes during object creation, after setting all properties.
function edit48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton73.
function togglebutton73_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
aad=get(hObject,'Value');
axes(handles.axes68);
if aad==1
    imshow('RS_001.png');
else
    imshow('RS_000.png');
end


% --- Executes on button press in togglebutton74.
function togglebutton74_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
aad=get(hObject,'Value');
axes(handles.axes68);
if aad==1
    imshow('RS_010.png');
else
    imshow('RS_000.png');
end
