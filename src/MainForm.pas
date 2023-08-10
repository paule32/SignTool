unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, JvImageList, JvGradientCaption, JvExControls, IniFiles,
  JvOutlookBar, ExtCtrls, JvExExtCtrls, JvSplitter, JvExtComponent, UrlMon,
  JvPanel, ComCtrls, JvExComCtrls, JvProgressBar, JvStatusBar, ShellAPI,
  JvArrowButton, JvComponentBase, JvZlibMultiple, JclCompression,
  FrameApache, FrameCAroot, FrameLocalDNS, JvCreateProcess, JvMenus, Menus,
  JvWizard, JvWizardRouteMapSteps, StdCtrls, Buttons, LMDPNGImage, CheckLst,
  FrameCAwizard, CompanyInformations;

type
  TMainWindow = class(TForm)
    JvStatusBar1: TJvStatusBar;
    JvProgressBar1: TJvProgressBar;
    JvPanel1: TJvPanel;
    JvSplitter1: TJvSplitter;
    JvPanel2: TJvPanel;
    JvSplitter2: TJvSplitter;
    JvOutlookBar1: TJvOutlookBar;
    JvGradientCaption1: TJvGradientCaption;
    JvZlibMultiple1: TJvZlibMultiple;
    ImageList2: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    JvMainMenu1: TJvMainMenu;
    File1: TMenuItem;
    DefaultSettings1: TMenuItem;
    ClearFields1: TMenuItem;
    N2: TMenuItem;
    LoadSettings1: TMenuItem;
    SaveSettings1: TMenuItem;
    N1: TMenuItem;
    ExitApplication1: TMenuItem;
    JvOfficeMenuItemPainter1: TJvOfficeMenuItemPainter;
    OpenDialog1: TOpenDialog;
    JvCreateProcess1: TJvCreateProcess;
    PageControl1: TPageControl;
    Button2: TButton;
    TabSheet1: TTabSheet;
    CheckListBox1: TCheckListBox;
    Splitter1: TSplitter;

    procedure JvOutlookBar1Pages0Buttons0Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons1Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons2Click(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure Button1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ExitApplication1Click(Sender: TObject);
    procedure SaveSettings1Click(Sender: TObject);
    procedure LoadSettings1Click(Sender: TObject);
    procedure ClearFields1Click(Sender: TObject);
    procedure DefaultSettings1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure JvWizard1HelpButtonClick(Sender: TObject);
    procedure JvWizardInteriorPage1NextButtonClick(
      Sender: TObject; var
      Stop  : Boolean);

    procedure JvWizardInteriorPage2FinishButtonClick(Sender: TObject;
      var Stop: Boolean);
  private
    { Private declarations }
  public
    FrameApache  : TFrame1;
    FrameCAroot  : TCArootFrame;
    FrameLocalDNS: TFrame3;

    FrameCAwizard: TFrame2;
    FrameCompanyInfo: TFrame4;
  end;

var
  MainWindow: TMainWindow;

implementation

{$R *.dfm}

const
  iniFileName = 'SignTool.ini';

procedure TMainWindow.JvOutlookBar1Pages0Buttons0Click(Sender: TObject);
begin
  Panel1.Visible := true;
  FrameCAwizard.Visible := false;
  FrameCAwizard.JvWizard1.Visible := false;

  FrameApache  .Visible := false;
  FrameCAroot  .Visible := false;
  FrameLocalDNS.Visible := false;

  FrameApache.Visible := true;
end;

procedure TMainWindow.JvOutlookBar1Pages0Buttons1Click(Sender: TObject);
begin
  Panel1.Visible := true;

  FrameCAwizard.Visible := false;
  FrameCAwizard.JvWizard1.Visible := false;

  FrameApache  .Visible := false;
  FrameCAroot  .Visible := false;
  FrameLocalDNS.Visible := false;

  FrameCAroot.Visible   := true;
  FrameCAwizard.Visible := true;
  FrameCAwizard.JvWizard1.Visible := true;

  FrameCAwizard.SpeedButton1.Left := FrameCAwizard.Edit1.Width + 10;
  FrameCAwizard.SpeedButton2.Left := FrameCAwizard.Edit2.Width + 10;
  FrameCAwizard.SpeedButton3.Left := FrameCAwizard.Edit3.Width + 10;

  FrameCAroot.Edit_CA_Name.SetFocus;
end;

procedure TMainWindow.JvOutlookBar1Pages0Buttons2Click(Sender: TObject);
begin
  Panel1.Visible := true;
  FrameCAwizard.Visible := false;
  FrameCAwizard.JvWizard1.Visible := false;

  FrameApache  .Visible := false;
  FrameCAroot  .Visible := false;
  FrameLocalDNS.Visible := false;

  FrameLocalDNS.Visible := true;
end;

procedure TMainWindow.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
  Width := Width + 2;
  Width := Width - 2;

  LoadSettings1Click(Sender);
end;

procedure TMainWindow.FormCreate(Sender: TObject);
begin
  FrameApache := TFrame1.Create(Panel1);
  FrameApache.Parent  := Panel1;
  FrameApache.Align   := alClient;
  FrameApache.Visible := false;

  FrameCAroot := TCArootFrame.Create(Panel1);
  FrameCAroot.Parent  := Panel1;
  FrameCAroot.Align   := alClient;
  FrameCAroot.Visible := false;

  FrameCAwizard := TFrame2.Create(Panel2);
  FrameCAwizard.Parent  := Panel2;
  FrameCAwizard.Align   := alClient;
  FrameCAwizard.Visible := false;

  FrameCompanyInfo := TFrame4.Create(Panel2);
  FrameCompanyInfo.Parent  := Panel2;
  FrameCompanyInfo.Align   := alClient;
  FrameCompanyInfo.Visible := false;

  FrameLocalDNS := TFrame3.Create(Panel1);
  FrameLocalDNS.Parent  := Panel1;
  FrameLocalDNS.Align   := alClient;
  FrameLocalDNS.Visible := false;

  Panel1.Visible := false;
  FrameCAwizard.Label4.Visible := false;

  FrameCAwizard.JvWizardRouteMapSteps1.ActiveStepFormat :=
  ' Step: %0:d of %1:d';

  FrameCAwizard.Image1.Picture.LoadFromFile('images\windark.png');
  FrameCAwizard.Image2.Picture.LoadFromFile('images\windark.png');

  FrameCAwizard.JvWizard1.Visible := false;
end;


procedure TMainWindow.Button1Click(Sender: TObject);
begin
  ClearFields1Click(Sender);
end;

procedure TMainWindow.SpeedButton3Click(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open dialog.');
    exit;
  end;

  FrameCAwizard.Edit1.Text := OpenDialog1.FileName;
  FrameCAwizard.Edit1.SetFocus;
end;

procedure TMainWindow.SpeedButton1Click(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open dialog.');
    exit;
  end;

  FrameCAwizard.Edit2.Text := OpenDialog1.FileName;
  FrameCAwizard.Edit2.SetFocus;
end;

procedure TMainWindow.SpeedButton2Click(Sender: TObject);
begin
  OpenDialog1.FileName := '';
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open dialog.');
    exit;
  end;

  FrameCAwizard.Edit3.Text := ExtractFilePath(OpenDialog1.FileName);
  FrameCAwizard.Edit3.SetFocus;
end;

procedure TMainWindow.SpeedButton4Click(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open dialog.');
    exit;
  end;
  if FileExists(OpenDialog1.FileName) then
  begin
    if Dialogs.MessageDlg(
    'key file already exists !' + #13#10 +
    'would you overwrite it ?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes then
    begin
      FrameCAwizard.Edit4.Text := OpenDialog1.FileName;
    end else
    begin
      FrameCAwizard.Edit4.Text := '';
    end;
  end;
end;

procedure TMainWindow.ExitApplication1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainWindow.SaveSettings1Click(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := nil;
  try
    try
      ini := TIniFile.Create(ExtractFileDir (Application.ExeName) + '\' +
      iniFileName);
      ini.WriteString('download','src'    ,FrameCAwizard.Edit1.Text);
      ini.WriteString('download','dst'    ,FrameCAwizard.Edit2.Text);

      ini.WriteString('cacert'  ,'cadir'  ,FrameCAwizard.Edit3.Text);
      ini.WriteString('cacert'  ,'keyfile',FrameCAwizard.Edit4.Text);
      ini.WriteString('cacert'  ,'modula' ,FrameCAwizard.Edit5.Text);
      ini.WriteString('cacert'  ,'type'   ,FrameCAwizard.Edit6.Text);

      ini.WriteBool('setup','download',FrameCAwizard.CheckBox1.Checked);
      ini.WriteBool('setup','install' ,FrameCAwizard.CheckBox2.Checked);
    except
      on E: Exception do
      begin
        ShowMessage('Exception occur:' +
        #13#10 + E.Message);
        exit;
      end;
    end;
  finally
    ini.Free;
  end;
end;

procedure TMainWindow.LoadSettings1Click(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := nil;
  try
    try
      ini := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' +
      iniFileName);
      FrameCAwizard.Edit1.Text := ini.ReadString('download','src'    ,'');
      FrameCAwizard.Edit2.Text := ini.ReadString('download','dst'    ,'');

      FrameCAwizard.Edit3.Text := ini.ReadString('cacert'  ,'cadir'  ,'');
      FrameCAwizard.Edit4.Text := ini.ReadString('cacert'  ,'keyfile','');
      FrameCAwizard.Edit5.Text := ini.ReadString('cacert'  ,'modula' ,'');
      FrameCAwizard.Edit6.Text := ini.ReadString('cacert'  ,'type'   ,'');

      FrameCAwizard.CheckBox1.Checked := ini.ReadBool('setup','download',false);
      FrameCAwizard.CheckBox2.Checked := ini.ReadBool('setup','install' ,false);
    except
      on E: Exception do
      begin
        ShowMessage('Exception occur:' +
        #13#10 + E.Message);
        exit;
      end;
    end;
  finally
    ini.Free;
  end;
end;

procedure TMainWindow.ClearFields1Click(Sender: TObject);
begin
  FrameCAwizard.Edit1.Text := '';
  FrameCAwizard.Edit2.Text := '';
  FrameCAwizard.Edit3.Text := '';

  FrameCAwizard.CheckBox1.Checked := false;
  FrameCAwizard.CheckBox2.Checked := false;
end;

procedure TMainWindow.DefaultSettings1Click(Sender: TObject);
begin
  FrameCAwizard.Edit1.Text := 'https://paule32.de.cool/Clara/ssl/latest_win32.exe';
  FrameCAwizard.Edit2.Text := 'C:\temp\sslwin32.exe';
  FrameCAwizard.Edit3.Text := 'C:\temp\certs';
end;

procedure TMainWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettings1Click(Sender);
  Action := caFree;
end;

procedure TMainWindow.JvWizard1HelpButtonClick(Sender: TObject);
begin
  Application.HelpFile := 'SignTool.chm';
  Application.HelpCommand(HELP_CONTEXT,10);

  ShellExecute(Application.Handle,'open',
  PChar(ExtractFilePath(Application.ExeName) + 'SignTool.chm'),
  nil,nil,SW_SHOW);
end;

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TMainWindow.JvWizardInteriorPage1NextButtonClick(
  Sender: TObject; var
  Stop  : Boolean);
var
  S1,S2,S3: String;
begin
  S1 := Trim(FrameCAwizard.Edit1.Text);
  S2 := Trim(FrameCAwizard.Edit2.Text);
  S3 := Trim(FrameCAwizard.Edit3.Text);

  if Length(S1) < 2 then
  begin
    ShowMessage('Field 1 must not empty.');
    stop := true;
    exit;
  end;
  if Length(S2) < 2 then
  begin
    if not(FrameCAwizard.CheckBox1.Checked) then
    begin
      ShowMessage('Field 2 must not empty.');
      stop := true;
      exit;
    end;
  end;
  if Length(S3) < 2 then
  begin
    ShowMessage('Field 3 must not empty.');
    stop := true;
    exit;
  end;

  if not(DirectoryExists(S3)) then
  begin
    ShowMessage('Download Store not found.');
    stop := true;
    exit;
  end;

  try
    // download ?
    if not(FrameCAwizard.CheckBox1.Checked) then
    begin
      FrameCAwizard.Label4.Visible := true;
      if DownLoadFile(
      FrameCAwizard.Edit1.Text,
      FrameCAwizard.Edit2.Text) then
      begin
        FrameCAwizard.Label4.Visible := false;
        ShowMessage('download success !!!');
      end else
      raise Exception.Create('Error while downloading:' +
      #13#10 + FrameCAwizard.Edit1.Text);
    end;
    // install ?
    if not(FrameCAwizard.CheckBox2.Checked) then
    begin
      ShellExecute(
      Application.Handle,
      PChar('open'),
      PChar(FrameCAwizard.Edit2.Text),
      PChar(''),
      nil,SW_SHOW);
    end;

    // pre-default
    if not(DirectoryExists(S3)) then
    begin
      if not(CreateDir(S3)) then
      Exception.Create('can not create: ' + S3);
    end;

  except
    on E: Exception do
    begin
      ShowMessage('Exception occur:' + #13#10 +
      E.Message);
      stop := true;
      exit;
    end;
  end;
end;

procedure TMainWindow.JvWizardInteriorPage2FinishButtonClick(
  Sender: TObject; var
  Stop  : Boolean);
begin
  SetCurrentDir(FrameCAwizard.Edit3.Text);
  JvCreateProcess1.CommandLine :=
  'openssl genrsa -' +
  FrameCAwizard.Edit6.Text         +
  '-out '            +
  FrameCAwizard.Edit4.Text         + ' ' +
  FrameCAwizard.Edit5.Text;
  JvCreateProcess1.Run;
end;

end.
