function varargout = GuiFisMamdani_201084_ShofiaNabilaA(varargin)
% GUIFISMAMDANI_201084_SHOFIANABILAA M-file for GuiFisMamdani_201084_ShofiaNabilaA.fig
%      GUIFISMAMDANI_201084_SHOFIANABILAA, by itself, creates a new GUIFISMAMDANI_201084_SHOFIANABILAA or raises the existing
%      singleton*.
%
%      H = GUIFISMAMDANI_201084_SHOFIANABILAA returns the handle to a new GUIFISMAMDANI_201084_SHOFIANABILAA or the handle to
%      the existing singleton*.
%
%      GUIFISMAMDANI_201084_SHOFIANABILAA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIFISMAMDANI_201084_SHOFIANABILAA.M with the given input arguments.
%
%      GUIFISMAMDANI_201084_SHOFIANABILAA('Property','Value',...) creates a new GUIFISMAMDANI_201084_SHOFIANABILAA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiFisMamdani_201084_ShofiaNabilaA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiFisMamdani_201084_ShofiaNabilaA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiFisMamdani_201084_ShofiaNabilaA

% Last Modified by GUIDE v2.5 04-May-2023 16:32:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiFisMamdani_201084_ShofiaNabilaA_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiFisMamdani_201084_ShofiaNabilaA_OutputFcn, ...
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


% --- Executes just before GuiFisMamdani_201084_ShofiaNabilaA is made visible.
function GuiFisMamdani_201084_ShofiaNabilaA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiFisMamdani_201084_ShofiaNabilaA (see VARARGIN)

% Choose default command line output for GuiFisMamdani_201084_ShofiaNabilaA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiFisMamdani_201084_ShofiaNabilaA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiFisMamdani_201084_ShofiaNabilaA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbuttonFuzzyfikasi.
function pushbuttonFuzzyfikasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonFuzzyfikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pelayanan=str2num(get(handles.edit1,'String'));
makanan=str2num(get(handles.edit2,'String'));
bacaBonus=readfis('fisbonus-201084-SHOFIA NABILA AZZAHRA-KLSA.fis');
%Pelayanan
mfPelayananKecewaparam=bacaBonus.input(1).mf(1).params; %mengecewakan
mfPelayananKecewatype=bacaBonus.input(1).mf(1).type;    %mengecewakan
derajatPelayananKecewa=evalmf(pelayanan,mfPelayananKecewaparam,mfPelayananKecewatype);
set(handles.textPelayananKecewa,'String',num2str(derajatPelayananKecewa));
mfPelayananBagusparam=bacaBonus.input(1).mf(2).params; %bagus
mfPelayananBagustype=bacaBonus.input(1).mf(2).type;    %bagus
derajatPelayananBagus=evalmf(pelayanan,mfPelayananBagusparam,mfPelayananBagustype);
set(handles.textPelayananBagus,'String',num2str(derajatPelayananBagus));
mfPelayananPuasparam=bacaBonus.input(1).mf(3).params; %memuaskan
mfPelayananPuastype=bacaBonus.input(1).mf(3).type;    %memuaskan
derajatPelayananPuas=evalmf(pelayanan,mfPelayananPuasparam,mfPelayananPuastype);
set(handles.textPelayananPuas,'String',num2str(derajatPelayananPuas));
%Makanan
mfMakananHambarparam=bacaBonus.input(2).mf(1).params; %hambar
mfMakananHambartype=bacaBonus.input(2).mf(1).type;    %hambar
derajatMakananHambar=evalmf(makanan,mfMakananHambarparam,mfMakananHambartype);
set(handles.textMakananHambar,'String',num2str(derajatMakananHambar));
mfMakananEnakparam=bacaBonus.input(2).mf(2).params; %Enak
mfMakananEnaktype=bacaBonus.input(2).mf(2).type;    %Enak
derajatMakananEnak=evalmf(makanan,mfMakananEnakparam,mfMakananEnaktype);
set(handles.textMakananEnak,'String',num2str(derajatMakananEnak));

%[R1]IF pelayanan mengecewakan OR makanan hambar THEN bonus sedikit
handles.aturan(1,1)=derajatPelayananKecewa;
handles.aturan(1,2)=derajatMakananHambar;
%[R2]IF pelayanan bagus THEN bonus sedang
handles.aturan(2,1)=derajatPelayananBagus;
%[R3]IF pelayanan memuaskan OR makanan enak THEN bonus banyak
handles.aturan(3,1)=derajatPelayananPuas;
handles.aturan(3,2)=derajatMakananEnak;
set(handles.uitable1,'Data',handles.aturan);

% --- Executes on button press in pushbuttonEvaluasi.
function pushbuttonEvaluasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonEvaluasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
handles.evaluasi(1,3)=min(handles.evaluasi(1,1),handles.evaluasi(1,2));
handles.evaluasi(2,3)=min(handles.evaluasi(2,1));
handles.evaluasi(3,3)=min(handles.evaluasi(3,1),handles.evaluasi(3,2));
set(handles.uitable1,'Data',handles.evaluasi);

% --- Executes on button press in pushbuttonKomposisi.
function pushbuttonKomposisi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonKomposisi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
x=0:0.1:30;
p1=handles.evaluasi(1,3);p2=handles.evaluasi(2,3);p3=handles.evaluasi(3,3);
mf1Sdk=trimf(x,[0 5 10]);mf2Sdg=trimf(x,[10 15 20]);mf3Bnk=trimf(x,[20 25 30]);
handles.mfHS=max(p1*mf1Sdk,max(p2*mf2Sdg,p3*mf3Bnk));
set(handles.figure1,'Currentaxes',handles.axes1);
plot(x,handles.mfHS,'LineWidth',2,'Color','black');
set(gca,'XLim',[0 30],'XTick',[0:5:30],'XColor','Black');
set(gca,'YLim',[0 1],'Ytick',[0 .25 0.5 0.75 1],'YGrid','on','Ycolor','black');


% --- Executes on button press in pushbuttonDefuzzyfikasi.
function pushbuttonDefuzzyfikasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonDefuzzyfikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
x=0:0.1:30;
p1=handles.evaluasi(1,3);p2=handles.evaluasi(2,3);p3=handles.evaluasi(3,3);
mf1Sdk=trimf(x,[0 5 10]);mf2Sdg=trimf(x,[10 15 20]);mf3Bnk=trimf(x,[20 25 30]);
handles.mfHS=max(p1*mf1Sdk,max(p2*mf2Sdg,p3*mf3Bnk));
set(handles.figure1,'Currentaxes',handles.axes2);
plot(x,handles.mfHS,'LineWidth',2,'Color','black');
set(gca,'XLim',[0 30],'XTick',[0:5:30],'XColor','black');
set(gca,'YLim',[0 1],'Ytick',[0 .25 0.5 0.75 1],'YGrid','on','Ycolor','black');
handles.pelayanan=str2num(get(handles.edit1,'String'));
handles.makanan=str2num(get(handles.edit2,'String'));
HtngBonus=readfis('fisbonus-201084-SHOFIA NABILA AZZAHRA-KLSA.fis');
handles.crisp=evalfis([handles.pelayanan handles.makanan],HtngBonus);
set(gca,'XLim',[0 30],'XTick',[handles.crisp],'XColor','white','Color','white');
garisCrisp=line([handles.crisp handles.crisp],[0,1],'LineWidth',2,'Color','red');
if handles.crisp<=10
    set(handles.text22,'String','Bonus Sedikit');
end
if ((handles.crisp>10)&&(handles.crisp<20))
    set(handles.text22,'String','Bonus Sedang');
end
if handles.crisp>=20
    set(handles.text22,'String','Bonus Banyak');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','0');
set(handles.edit2,'String','0');
set(handles.text22,'String','Tidak ada proses');
set(handles.textPelayananKecewa,'String','0');
set(handles.textPelayananBagus,'String','0');
set(handles.textPelayananPuas,'String','0');
set(handles.textMakananHambar,'String','0');
set(handles.textMakananEnak,'String','0');
set(handles.uitable1,'Data',cell(size(get(handles.uitable1,'Data'))));
cla(handles.axes1,'reset');
cla(handles.axes2,'reset');


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close



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
