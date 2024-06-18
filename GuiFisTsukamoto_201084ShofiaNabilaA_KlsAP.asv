function varargout = GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP(varargin)
%GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP M-file for GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP.fig
%      GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP, by itself, creates a new GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP or raises the existing
%      singleton*.
%
%      H = GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP returns the handle to a new GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP or the handle to
%      the existing singleton*.
%
%      GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP('Property','Value',...) creates a new GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP('CALLBACK') and GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUIFISTSUKAMOTO_201084SHOFIANABILAA_KLSAP.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP

% Last Modified by GUIDE v2.5 25-May-2023 06:42:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP is made visible.
function GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiFisTsukamoto_201084ShofiaNabilaA_KlsAP_OutputFcn(hObject, eventdata, handles)
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
bacaBonus=readfis('fisSugeno_201084ShofiaNA_KLSAP.fis');

%Pelayanan 
%Kecewa
mfPelayananparam=bacaBonus.input(1).mf(1).params; %Mengecewakan
mfPelayanantype=bacaBonus.input(1).mf(1).type; %Mengecewakan
derajatPelayananKecewa=evalmf(pelayanan,mfPelayananparam,mfPelayanantype);
set(handles.text9,'String',num2str(derajatPelayananKecewa));

%Bagus
mfPelayananparam=bacaBonus.input(1).mf(2).params; %Bagus
mfPelayanantype=bacaBonus.input(1).mf(2).type; %Bagus
derajatPelayananBagus=evalmf(pelayanan,mfPelayananparam,mfPelayanantype);
set(handles.text13,'String',num2str(derajatPelayananBagus));

%Memuaskan
mfPelayananparam=bacaBonus.input(1).mf(3).params; %Memuaskan
mfPelayanantype=bacaBonus.input(1).mf(3).type; %Memuaskan
derajatPelayananPuas=evalmf(pelayanan,mfPelayananparam,mfPelayanantype);
set(handles.text14,'String',num2str(derajatPelayananPuas));

%Makanan 
%Hambar
mfMakananparam=bacaBonus.input(2).mf(1).params; %Hambar
mfMakanantype=bacaBonus.input(2).mf(1).type; %Hambar
derajatMakananHambar=evalmf(makanan,mfMakananparam,mfMakanantype);
set(handles.text15,'String',num2str(derajatMakananHambar));

%Enak
mfMakananparam=bacaBonus.input(2).mf(2).params; %Enak
mfMakanantype=bacaBonus.input(2).mf(2).type; %Enak
derajatMakananEnak=evalmf(makanan,mfMakananparam,mfMakanantype);
set(handles.text16,'String',num2str(derajatMakananEnak));

%Evaluasi Aturan
%[R1]IF pelayanan mengecewakan OR makanan hambar THEN bonus sedikit
%Pelayanan mengecewakan 
handles.aturan(1,1)=derajatPelayananKecewa;
set(handles.figure1,'CurrentAxes',handles.axes1);
%menghapus grafik pada AXES 1
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 10],'XTick',[0:2:10]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf pelayanan mengecewakan
x=0:0.1:10;
hold on;
a11=gaussmf(x,[1.699 0]); %mengecewakan
plot(x,a11);
for i = 1:length(a11)
   if a11(i) > derajatPelayananKecewa
      a11(i) = derajatPelayananKecewa; 
   end
end
area(x,a11,'facecolor','yellow');
set(gca,'YLim',[0 1],'YTick',[derajatPelayananKecewa]);
hold off;

%Makanan Hambar
handles.aturan(1,2)=derajatMakananHambar;
set(handles.figure1,'CurrentAxes',handles.axes2);
%mengapus grafik pada AXES 2
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 10],'XTick',[0:2:10]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf makanan hambar
x=0:0.1:10;
hold on;
a12=trimf(x,[0 0 7]); %Hambar
plot(x,a12);
for i = 1:length(a12)
   if a12(i) > derajatMakananHambar
      a12(i) = derajatMakananHambar; 
   end
end
area(x,a12,'facecolor','yellow');
set(gca,'YLim',[0 1],'YTick',[derajatMakananHambar]);
hold off;

%[R2]IF pelayanan bagus THEN bonus sedang
handles.aturan(2,1)=derajatPelayananBagus;
set(handles.figure1,'CurrentAxes',handles.axes4);
%mengapus grafik pada AXES 4
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 10],'XTick',[0:2:10]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf pelayanan bagus
x=0:0.1:10;
hold on;
a21=gaussmf(x,[1.699 5]); %bagus
plot(x,a21);
for i = 1:length(a21)
   if a21(i) > derajatPelayananBagus
      a21(i) = derajatPelayananBagus; 
   end
end
area(x,a21,'facecolor','yellow');
set(gca,'YLim',[0 1],'YTick',[derajatPelayananBagus]);
hold off;

%[R3]IF pelayanan memuaskan OR makanan enak THEN bonus banyak
%pelayanan Memuaskan
handles.aturan(3,1)=derajatPelayananPuas;
set(handles.figure1,'CurrentAxes',handles.axes7);
%mengapus grafik pada AXES 7
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 10],'XTick',[0:2:10]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf pelayanan memuaskan
x=0:0.1:10;
hold on;
a31=gaussmf(x,[1.699 10]); %memuaskan
plot(x,a31);
for i = 1:length(a31)
   if a31(i) > derajatPelayananPuas
      a31(i) = derajatPelayananPuas; 
   end
end
area(x,a31,'facecolor','yellow');
set(gca,'YLim',[0 1],'YTick',[derajatPelayananPuas]);
hold off;

%makanan enak
handles.aturan(3,2)=derajatMakananEnak;
set(handles.figure1,'CurrentAxes',handles.axes8);
%mengapus grafik pada AXES 8
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 10],'XTick',[0:2:10]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf makanan enak
x=0:0.1:10;
hold on;
a32=trimf(x,[3 10 10]); %enak
plot(x,a32);
for i = 1:length(a32)
   if a32(i) > derajatMakananEnak
      a32(i) = derajatMakananEnak; 
   end
end
area(x,a32,'facecolor','yellow');
set(gca,'YLim',[0 1],'YTick',[derajatMakananEnak]);
hold off;

handles.aturan(1,3)=0;
handles.aturan(2,3)=0;
handles.aturan(3,3)=0;
namacol={'Pelayanan','Makanan','Alfa-Predikat'};
set(handles.uitable1,'Data',handles.aturan,'ColumnName',namacol);


% --- Executes on button press in pushbuttonEvaluasi.
function pushbuttonEvaluasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonEvaluasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%bonus sedikit
handles.evaluasi=get(handles.uitable1,'Data');
handles.evaluasi(1,3)=max(handles.evaluasi(1,1),handles.evaluasi(1,2));
set(handles.figure1,'CurrentAxes',handles.axes3);
%menghapus grafik pada axes 6
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 30],'XTick',[0 5 15 25 30]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf bonus sedikit
x=0:0.1:30;
hold on;
Z1=0+handles.evaluasi(1,3)*5;
Z2=10/(5*handles.evaluasi(1,3));
garis_z1=line([Z1 Z1],[0 handles.evaluasi(1,3)],'LineWidth',2,'Color','yellow');
garis_z2=line([Z2 Z2],[0 handles.evaluasi(1,3)],'LineWidth',2,'Color','yellow');
garis_atas=line([0 Z2],[handles.evaluasi(1,3) handles.evaluasi(1,3)],'LineWidth',2,'Color','red');
garis_sedikit1=line([0 Z1],[0 handles.evaluasi(1,3)],'LineWidth',2,'Color','blue');
garis_sedikit2=line([Z2 10],[handles.evaluasi(1,3) 0],'LineWidth',2,'Color','blue');
set(gca,'YLim',[0 1],'YTick',[handles.evaluasi(1,3)]);
hold off;

%bonus sedang
handles.evaluasi(2,3)=handles.evaluasi(2,1);
set(handles.figure1,'CurrentAxes',handles.axes6);
%menghapus grafik pada axes 7
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 30],'XTick',[0 5 15 25 30]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf bonus sedang
x=0:0.1:30;
hold on;
Z1=0+handles.evaluasi(2,3)*5;
Z2=10/(5*handles.evaluasi(2,3));
garis_z1=line([Z1 Z1],[0 handles.evaluasi(2,3)],'LineWidth',2,'Color','yellow');
garis_z2=line([Z2 Z2],[0 handles.evaluasi(2,3)],'LineWidth',2,'Color','yellow');
garis_atas=line([0 Z2],[handles.evaluasi(2,3) handles.evaluasi(2,3)],'LineWidth',2,'Color','red');
garis_sedang1=line([0 Z1],[0 handles.evaluasi(2,3)],'LineWidth',2,'Color','blue');
garis_sedang2=line([Z2 10],[handles.evaluasi(2,3) 0],'LineWidth',2,'Color','blue');
set(gca,'YLim',[0 1],'YTick',[handles.evaluasi(2,3)]);
hold off;

%bonus banyak
handles.evaluasi(3,3)=max(handles.evaluasi(3,1),handles.evaluasi(3,2));
set(handles.figure1,'CurrentAxes',handles.axes9);
%menghapus grafik pada axes 8
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 30],'XTick',[0 5 15 25 30]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menggambar mf bonus banyak
x=0:0.1:30;
hold on;
Z1=0+handles.evaluasi(3,3)*5;
Z2=10/(5*handles.evaluasi(3,3));
garis_z1=line([Z1 Z1],[0 handles.evaluasi(3,3)],'LineWidth',2,'Color','yellow');
garis_z2=line([Z2 Z2],[0 handles.evaluasi(3,3)],'LineWidth',2,'Color','yellow');
garis_atas=line([0 Z2],[handles.evaluasi(3,3) handles.evaluasi(3,3)],'LineWidth',2,'Color','red');
garis_banyak1=line([0 Z1],[0 handles.evaluasi(3,3)],'LineWidth',2,'Color','blue');
garis_banyak2=line([Z2 10],[handles.evaluasi(3,3) 0],'LineWidth',2,'Color','blue');
set(gca,'YLim',[0 1],'YTick',[handles.evaluasi(3,3)]);
hold off;
set(handles.uitable1,'Data',handles.evaluasi);


% --- Executes on button press in pushbuttonKomposisi.
function pushbuttonKomposisi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonKomposisi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
set(handles.figure1,'CurrentAxes',handles.axes11);
%menghapus grafik pada AXES 9
x=0;y=0;plot(x,y);
set(gca,'XLim',[0 30],'XTick',[0 5 15 25 30]);
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1]);
%menghitung hasil komposisi
x=0:0.1:30;
p1=handles.evaluasi(1,3);p2=handles.evaluasi(2,3); p3=handles.evaluasi(3,3);
mf1Sdk=trimf(x,[5 5 5]); mf2Sdg=trimf(x,[15,15,15]);
mf3Bnk=trimf(x,[25,25,25]);
handles.mfHs1=max(p1*mf1Sdk,max(p2*mf2Sdg,p3*mf3Bnk));
plot(x,handles.mfHs1,'LineWidth',2,'Color','blue');
set(gca,'XLim',[0 30],'XTick',[0:5:30],'XColor','black');
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1],'YGrid','off','YColor','black');


% --- Executes on button press in pushbuttonDefuzzyfikasi.
function pushbuttonDefuzzyfikasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonDefuzzyfikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.evaluasi=get(handles.uitable1,'Data');
x=0:0.1:30;
p1=handles.evaluasi(1,3);p2=handles.evaluasi(2,3); p3=handles.evaluasi(3,3);
mf1Sdk=trimf(x,[5 5 5]); mf2Sdg=trimf(x,[15,15,15]);
mf3Bnk=trimf(x,[25,25,25]);
handles.mfHs1=max(p1*mf1Sdk,max(p2*mf2Sdg,p3*mf3Bnk));
set(handles.figure1,'CurrentAxes',handles.axes10);
plot(x,handles.mfHs1,'LineWidth',2,'Color','blue');
set(gca,'XLim',[0 30],'XTick',[0:5:30],'XColor','black');
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1],'YGrid','on','YColor','white');
handles.pelayanan=str2num(get(handles.edit1,'String'));
handles.makanan=str2num(get(handles.edit2,'String'));
HtngBonus=readfis('fisSugeno_201084ShofiaNA_KLSA.fis');
handles.crisp=evalfis([handles.pelayanan handles.makanan],HtngBonus);
set(gca,'XLim',[0 30],'XTick',[handles.crisp],'XColor','black','Color','white');
set(gca,'YLim',[0 1],'YTick',[0 .25 0.5 0.75 1],'YGrid','off','YColor','black');
garisCrisp=line([handles.crisp handles.crisp],[0 1],'LineWidth',2,'Color','black');
if handles.crisp <=10
    set(handles.text22,'String','Bonus Sedikit');
end
if ((handles.crisp>10) && (handles.crisp<20))
    set(handles.text22,'String','Bonus Sedang');
end
if handles.crisp >=20
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
set(handles.text9,'String','0');
set(handles.text13,'String','0');
set(handles.text14,'String','0');
set(handles.text15,'String','0');
set(handles.text16,'String','0');
set(handles.uitable1,'Data',cell(size(get(handles.uitable1,'Data'))));
cla(handles.axes1,'reset');
cla(handles.axes2,'reset');
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes11,'reset');


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
