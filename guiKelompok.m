function varargout = guiKelompok11KelasAP(varargin)
% GUIKELOMPOK11KELASAP MATLAB code for guiKelompok11KelasAP.fig
%      GUIKELOMPOK11KELASAP, by itself, creates a new GUIKELOMPOK11KELASAP or raises the existing
%      singleton*.
%
%      H = GUIKELOMPOK11KELASAP returns the handle to a new GUIKELOMPOK11KELASAP or the handle to
%      the existing singleton*.
%
%      GUIKELOMPOK11KELASAP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIKELOMPOK11KELASAP.M with the given input arguments.
%
%      GUIKELOMPOK11KELASAP('Property','Value',...) creates a new GUIKELOMPOK11KELASAP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiKelompok11KelasAP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiKelompok11KelasAP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiKelompok11KelasAP

% Last Modified by GUIDE v2.5 09-May-2023 23:40:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiKelompok11KelasAP_OpeningFcn, ...
                   'gui_OutputFcn',  @guiKelompok11KelasAP_OutputFcn, ...
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


% --- Executes just before guiKelompok11KelasAP is made visible.
function guiKelompok11KelasAP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiKelompok11KelasAP (see VARARGIN)

% Choose default command line output for guiKelompok11KelasAP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiKelompok11KelasAP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiKelompok11KelasAP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonFuzzyfikasi.
function pushbuttonFuzzyfikasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonFuzzyfikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.JumlahMobil=str2num(get(handles.edit1,'String'));
handles.LebarJalan=str2num(get(handles.edit2,'String'));
handles.JumlahMotor=str2num(get(handles.edit3,'String'));
bacaLampuMerah=readfis('fisMamdani_Kel11_KlsAP.fis');

%JUMLAH MOBIL
%MOBIL SEDIKIT
mfMobilSedikitparam=bacaLampuMerah.input(1).mf(1).params;
mfMobilSedikittype=bacaLampuMerah.input(1).mf(1).type;
derajatMobilSedikit=evalmf(handles.JumlahMobil,mfMobilSedikitparam,mfMobilSedikittype);
set(handles.text7,'String',num2str(derajatMobilSedikit));
%MOBIL SEDANG
mfMobilSedangparam=bacaLampuMerah.input(1).mf(2).params;
mfMobilSedangtype=bacaLampuMerah.input(1).mf(2).type;
derajatMobilSedang=evalmf(handles.JumlahMobil,mfMobilSedangparam,mfMobilSedangtype);
set(handles.text8,'String',num2str(derajatMobilSedang));
%MOBIL BANYAK
mfMobilBanyakparam=bacaLampuMerah.input(1).mf(3).params;
mfMobilBanyaktype=bacaLampuMerah.input(1).mf(3).type;
derajatMobilBanyak=evalmf(handles.JumlahMobil,mfMobilBanyakparam,mfMobilBanyaktype);
set(handles.text9,'String',num2str(derajatMobilBanyak));

%LEBAR JALAN
%JALAN SEMPIT
mfJalanSempitparam=bacaLampuMerah.input(3).mf(1).params;
mfJalanSempittype=bacaLampuMerah.input(3).mf(1).type;
derajatJalanSempit=evalmf(handles.LebarJalan,mfJalanSempitparam,mfJalanSempittype);
set(handles.text10,'String',num2str(derajatJalanSempit));
%JALAN SEDANG
mfJalanSedangparam=bacaLampuMerah.input(3).mf(2).params;
mfJalanSedangtype=bacaLampuMerah.input(3).mf(2).type;
derajatJalanSedang=evalmf(handles.LebarJalan,mfJalanSedangparam,mfJalanSedangtype);
set(handles.text11,'String',num2str(derajatJalanSedang));
%JALAN LEBAR
mfJalanLebarparam=bacaLampuMerah.input(3).mf(3).params;
mfJalanLebartype=bacaLampuMerah.input(3).mf(3).type;
derajatJalanLebar=evalmf(handles.LebarJalan,mfJalanLebarparam,mfJalanLebartype);
set(handles.text12,'String',num2str(derajatJalanLebar));

%JUMLAH MOTOR
%MOTOR SEDIKIR
mfMotorSedikitparam=bacaLampuMerah.input(2).mf(1).params;
mfMotorSedikittype=bacaLampuMerah.input(2).mf(1).type;
derajatMotorSedikit=evalmf(handles.JumlahMotor,mfMotorSedikitparam,mfMotorSedikittype);
set(handles.text13,'String',num2str(derajatMotorSedikit));
%MOTOR SEDANG
mfMotorSedangparam=bacaLampuMerah.input(2).mf(2).params;
mfMotorSedangtype=bacaLampuMerah.input(2).mf(2).type;
derajatMotorSedang=evalmf(handles.JumlahMotor,mfMotorSedangparam,mfMotorSedangtype);
set(handles.text14,'String',num2str(derajatMotorSedang));
%Motor Banyak
mfMotorBanyakparam=bacaLampuMerah.input(2).mf(3).params;
mfMotorBanyaktype=bacaLampuMerah.input(2).mf(3).type;
derajatMotorBanyak=evalmf(handles.JumlahMotor,mfMotorBanyakparam,mfMotorBanyaktype);
set(handles.text15,'String',num2str(derajatMotorBanyak));

%EVALUASI ATURAN
%[R1]IF Mobil Sedikit AND Lebar Jalan Sempit AND Motor Sedikit THEN Lampu Merah Lama
handles.aturan(1,1)=derajatMobilSedikit;
handles.aturan(1,2)=derajatJalanSempit;
handles.aturan(1,3)=derajatMotorSedikit;
%[R2]IF Mobil Sedikit AND Lebar Jalan Sedang AND Motor Sedikit THEN Lampu Merah Lama
handles.aturan(2,1)=derajatMobilSedikit;
handles.aturan(2,2)=derajatJalanSedang;
handles.aturan(2,3)=derajatMotorSedikit;
%[R3]IF Mobil Sedikit AND Lebar Jalan Lebar AND Motor Sedikit THEN Lampu Merah Lama
handles.aturan(3,1)=derajatMobilSedikit;
handles.aturan(3,2)=derajatJalanLebar;
handles.aturan(3,3)=derajatMotorSedikit;
%[R4]IF Mobil Sedikit AND Lebar Jalan Sempit AND Motor Sedang THEN Lampu Merah Lama
handles.aturan(4,1)=derajatMobilSedikit;
handles.aturan(4,2)=derajatJalanSempit;
handles.aturan(4,3)=derajatMotorSedang;
%[R5]IF Mobil Sedikit AND Lebar Jalan Sedang AND Motor Sedang THEN Lampu Merah Lama
handles.aturan(5,1)=derajatMobilSedikit;
handles.aturan(5,2)=derajatJalanSedang;
handles.aturan(5,3)=derajatMotorSedang;
%[R6]IF Mobil Sedikit AND Lebar Jalan Lebar AND Motor Sedang THEN Lampu Merah Lama
handles.aturan(6,1)=derajatMobilSedikit;
handles.aturan(6,2)=derajatJalanLebar;
handles.aturan(6,3)=derajatMotorSedang;
%[R7]IF Mobil Sedikit AND Lebar Jalan Sempit AND Motor Banyak THEN Lampu Merah Sedang
handles.aturan(7,1)=derajatMobilSedikit;
handles.aturan(7,2)=derajatJalanSempit;
handles.aturan(7,3)=derajatMotorBanyak;
%[R8]IF Mobil Sedikit AND Lebar Jalan Sedang AND Motor Banyak THEN Lampu Merah Sedang
handles.aturan(8,1)=derajatMobilSedikit;
handles.aturan(8,2)=derajatJalanSedang;
handles.aturan(8,3)=derajatMotorBanyak;
%[R9]IF Mobil Sedikit AND Lebar Jalan Lebar AND Motor Sedang THEN Lampu Merah Sedang
handles.aturan(9,1)=derajatMobilSedikit;
handles.aturan(9,2)=derajatJalanLebar;
handles.aturan(9,3)=derajatMotorSedang;
%[R10]IF Mobil Sedang AND Lebar Jalan Sempit AND Motor Sedikit THEN Lampu Merah Sedang
handles.aturan(10,1)=derajatMobilSedang;
handles.aturan(10,2)=derajatJalanSempit;
handles.aturan(10,3)=derajatMotorSedikit;
%[R11]IF Mobil Sedang AND Lebar Jalan Sedang AND Motor Sedikit THEN Lampu Merah Sedang
handles.aturan(11,1)=derajatMobilSedang;
handles.aturan(11,2)=derajatJalanSedang;
handles.aturan(11,3)=derajatMotorSedikit;
%[R12]IF Mobil Sedang AND Lebar Jalan Lebar AND Motor Sedikit THEN Lampu Merah Sedang
handles.aturan(12,1)=derajatMobilSedang;
handles.aturan(12,2)=derajatJalanLebar;
handles.aturan(12,3)=derajatMotorSedikit;
%[R13]IF Mobil Sedang AND Lebar Jalan Sempit AND Motor Sedang THEN Lampu Merah Cepat
handles.aturan(13,1)=derajatMobilSedang;
handles.aturan(13,2)=derajatJalanSempit;
handles.aturan(13,3)=derajatMotorSedang;
%[R14]IF Mobil Sedang AND Lebar Jalan Sedang AND Motor Sedang THEN Lampu Merah Cepat
handles.aturan(14,1)=derajatMobilSedang;
handles.aturan(14,2)=derajatJalanSedang;
handles.aturan(14,3)=derajatMotorSedang;
%[R15]IF Mobil Sedang AND Lebar Jalan Lebar AND Motor Sedang THEN Lampu Merah Sedang
handles.aturan(15,1)=derajatMobilSedang;
handles.aturan(15,2)=derajatJalanLebar;
handles.aturan(15,3)=derajatMotorSedang;
%[R16]IF Mobil Sedang AND Lebar Jalan Sempit AND Motor Banyak THEN Lampu Merah Cepat
handles.aturan(16,1)=derajatMobilSedang;
handles.aturan(16,2)=derajatJalanSempit;
handles.aturan(16,3)=derajatMotorBanyak;
%[R17]IF Mobil Sedang AND Lebar Jalan Sedang AND Motor Banyak THEN Lampu Merah Cepat
handles.aturan(17,1)=derajatMobilSedang;
handles.aturan(17,2)=derajatJalanSedang;
handles.aturan(17,3)=derajatMotorBanyak;
%[R18]IF Mobil Sedang AND Lebar Jalan Lebar AND Motor Banyak THEN Lampu Merah Sedang
handles.aturan(18,1)=derajatMobilSedang;
handles.aturan(18,2)=derajatJalanLebar;
handles.aturan(18,3)=derajatMotorBanyak;
%[R19]IF Mobil Banyak AND Lebar Jalan Sempit AND Motor Sedikit THEN Lampu Merah Cepat
handles.aturan(19,1)=derajatMobilBanyak;
handles.aturan(19,2)=derajatJalanSempit;
handles.aturan(19,3)=derajatMotorSedikit;
%[R20]IF Mobil Banyak AND Lebar Jalan Sedang AND Motor Sedikit THEN Lampu Merah Cepat
handles.aturan(20,1)=derajatMobilBanyak;
handles.aturan(20,2)=derajatJalanSedang;
handles.aturan(20,3)=derajatMotorSedikit;
%[R21]IF Mobil Banyak AND Lebar Jalan Lebar AND Motor Sedikit THEN Lampu Merah Sedang
handles.aturan(21,1)=derajatMobilBanyak;
handles.aturan(21,2)=derajatJalanLebar;
handles.aturan(21,3)=derajatMotorSedikit;
%[R22]IF Mobil Banyak AND Lebar Jalan Sempit AND Motor Sedang THEN Lampu Merah Cepat
handles.aturan(22,1)=derajatMobilBanyak;
handles.aturan(22,2)=derajatJalanSempit;
handles.aturan(22,3)=derajatMotorSedang;
%[R23]IF Mobil Banyak AND Lebar Jalan Sedang AND Motor Sedang THEN Lampu Merah Cepat
handles.aturan(23,1)=derajatMobilBanyak;
handles.aturan(23,2)=derajatJalanSedang;
handles.aturan(23,3)=derajatMotorSedang;
%[R24]IF Mobil Banyak AND Lebar Jalan Lebar AND Motor Sedang THEN Lampu Merah Cepat
handles.aturan(24,1)=derajatMobilBanyak;
handles.aturan(24,2)=derajatJalanLebar;
handles.aturan(24,3)=derajatMotorSedang;
%[R25]IF Mobil Banyak AND Lebar Jalan Sempit AND Motor Banyak THEN Lampu Merah Cepat
handles.aturan(25,1)=derajatMobilBanyak;
handles.aturan(25,2)=derajatJalanSempit;
handles.aturan(25,3)=derajatMotorBanyak;
%[R26]IF Mobil Banyak AND Lebar Jalan Sedang AND Motor Banyak THEN Lampu Merah Cepat
handles.aturan(26,1)=derajatMobilBanyak;
handles.aturan(26,2)=derajatJalanSedang;
handles.aturan(26,3)=derajatMotorBanyak;
%[R27]IF Mobil Banyak AND Lebar Jalan Lebar AND Motor Banyak THEN Lampu Merah Cepat
 handles.aturan(27,1)=derajatMobilBanyak;
handles.aturan(27,2)=derajatJalanLebar;
handles.aturan(27,3)=derajatMotorBanyak;
set(handles.uitable1,'Data',handles.aturan);


% --- Executes on button press in pushbuttonEvaluasi.
function pushbuttonEvaluasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonEvaluasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
for i = 1:27
   handles.evaluasi(i,4) = min([handles.evaluasi(i,1) handles.evaluasi(i,2) handles.evaluasi(i,3)]); 
end
set(handles.uitable1,'Data',handles.evaluasi);

% --- Executes on button press in pushbuttonKomposisi.
function pushbuttonKomposisi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonKomposisi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
x=0:0.1:70;
for i = 1:27
   p(i) = handles.evaluasi(i,4); 
end
mf1Lma=trapmf(x,[35 60 70 70 ]); 
mf2Sdg=trimf(x,[20 30 40]); 
mf3Cpt=trapmf(x,[0 0 10 25]);
lama = max([p(1) p(2) p(3) p(4) p(5) p(6)]);
sedang = max([p(7) p(8) p(9) p(10) p(11) p(12) p(15) p(18) p(21)]);
cepat = max([p(13) p(14) p(16) p(17) p(19) p(20) p(22) p(23) p(24) p(25) p(26) p(27)]);
mf1Lma1 = min(lama,mf1Lma);
mf2Sdg1 = min(sedang,mf2Sdg);
mf3Cpt1 = min(cepat,mf3Cpt);
hasil = max(mf1Lma1,max(mf2Sdg1,mf3Cpt1));
set(handles.figure1,'CurrentAxes',handles.axes3);
plot(x,hasil,'LineWidth',2,'Color','black');
set(gca,'XLim',[0 70],'XTick',[0:10:70],'XColor','black');
set(gca,'YLim',[0 1],'YTick',[0:0.25:1],'YGrid','on','YColor','black');
patch([0 x 100],[0 hasil 0],'green')


% --- Executes on button press in pushbuttonDefuzzyfikasi.
function pushbuttonDefuzzyfikasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonDefuzzyfikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
x=0:0.1:70;
for i = 1:27
   p(i) = handles.evaluasi(i,4); 
end
mf1Lma=trapmf(x,[35 60 70 70 ]); 
mf2Sdg=trimf(x,[20 30 40]); 
mf3Cpt=trapmf(x,[0 0 10 25]);
lama = max([p(1) p(2) p(3) p(4) p(5) p(6)]);
sedang = max([p(7) p(8) p(9) p(10) p(11) p(12) p(15) p(18) p(21)]);
cepat = max([p(13) p(14) p(16) p(17) p(19) p(20) p(22) p(23) p(24) p(25) p(26) p(27)]);
mf1Lma1 = min(lama,mf1Lma);
mf2Sdg1 = min(sedang,mf2Sdg);
mf3Cpt1 = min(cepat,mf3Cpt);
hasil = max(mf1Lma1,max(mf2Sdg1,mf3Cpt1));
set(handles.figure1,'CurrentAxes',handles.axes2);
plot(x,hasil,'LineWidth',2,'Color','black');
set(gca,'XLim',[0 70],'XTick',[0:10:70],'XColor','black');
set(gca,'YLim',[0 1],'YTick',[0:0.25:1],'YGrid','on','YColor','black');
patch([0 x 100],[0 hasil 0],'green')

handles.JumlahMobil=str2num(get(handles.edit1,'String'));
handles.LebarJalan=str2num(get(handles.edit2,'String'));
handles.JumlahMotor=str2num(get(handles.edit3,'String'));
LampuMerah=readfis('fisMamdani_Kel11_KlsAP.fis');
handles.crisp=evalfis([handles.JumlahMobil handles.JumlahMotor handles.LebarJalan],LampuMerah);

set(gca,'XLim',[0 70],'XTick',[handles.crisp],'XColor','black','Color','white');
garisCrisp=line([handles.crisp handles.crisp],[0 1],'LineWidth',2,'Color','red');
if ((handles.crisp>=35)&&(handles.crisp<70))
    set(handles.text19,'String','LAMA');
end
if ((handles.crisp<40)&&(handles.crisp>20))
    set(handles.text19,'String','SEDANG');
end
if handles.crisp<=25
    set(handles.text19,'String','CEPAT');
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'string','0');
set(handles.edit2,'string','0');
set(handles.edit3,'string','0');
set(handles.text7,'string','0');
set(handles.text8,'string','0');
set(handles.text9,'string','0');
set(handles.text10,'string','0');
set(handles.text11,'string','0');
set(handles.text12,'string','0');
set(handles.text13,'string','0');
set(handles.text14,'string','0');
set(handles.text15,'string','0');
set(handles.text19,'string','Belum Ada Hasil');
set(handles.uitable1,'Data',cell(size(get(handles.uitable1,'Data'))));
cla(handles.axes2,'reset');
cla(handles.axes3,'reset');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
