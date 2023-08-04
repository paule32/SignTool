unit wizardA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvWizard, ShellAPI, URLMon, IniFiles,
  JvWizardRouteMapSteps, JvExControls, LMDPNGImage, JvGradientCaption,
  JvComponentBase, JvCreateProcess, Menus, JvMenus, JvBaseDlg,
  JvSelectDirectory;

type
  TForm1 = class(TForm)
    JvGradientCaption1: TJvGradientCaption;
    OpenDialog1: TOpenDialog;
    JvCreateProcess1: TJvCreateProcess;
    JvMainMenu1: TJvMainMenu;
    JvOfficeMenuItemPainter1: TJvOfficeMenuItemPainter;
    File1: TMenuItem;
    N1: TMenuItem;
    ExitApplication1: TMenuItem;
    DefaultSettings1: TMenuItem;
    ClearFields1: TMenuItem;
    N2: TMenuItem;
    LoadSettings1: TMenuItem;
    SaveSettings1: TMenuItem;

    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);

    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure JvWizard1CancelButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ExitApplication1Click(Sender: TObject);
    procedure DefaultSettings1Click(Sender: TObject);
    procedure ClearFields1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure JvWizardInteriorPage1NextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure SaveSettings1Click(Sender: TObject);
    procedure LoadSettings1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvWizardInteriorPage2NextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure JvWizard1HelpButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1Enter(Sender: TObject); begin Edit1.Color := clYellow; end;
procedure TForm1.Edit2Enter(Sender: TObject); begin Edit2.Color := clYellow; end;
procedure TForm1.Edit3Enter(Sender: TObject); begin Edit3.Color := clYellow; end;
procedure TForm1.Edit4Enter(Sender: TObject); begin Edit4.Color := clYellow; end;
procedure TForm1.Edit5Enter(Sender: TObject); begin Edit5.Color := clYellow; end;
procedure TForm1.Edit6Enter(Sender: TObject); begin Edit6.Color := clYellow; end;

procedure TForm1.Edit1Exit (Sender: TObject); begin Edit1.Color := clWhite;  end;
procedure TForm1.Edit2Exit (Sender: TObject); begin Edit2.Color := clWhite;  end;
procedure TForm1.Edit3Exit (Sender: TObject); begin Edit3.Color := clWhite;  end;
procedure TForm1.Edit4Exit (Sender: TObject); begin Edit4.Color := clWhite;  end;
procedure TForm1.Edit5Exit (Sender: TObject); begin Edit5.Color := clWhite;  end;
procedure TForm1.Edit6Exit (Sender: TObject); begin Edit6.Color := clWhite;  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.Visible := false;
  JvWizardRouteMapSteps1.ActiveStepFormat :=
  ' Step: %0:d of %1:d';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open dialog.');
    exit;
  end;

  Edit2.Text := OpenDialog1.FileName;
  Edit2.SetFocus;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  OpenDialog1.FileName := '';
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open dialog.');
    exit;
  end;

  Edit3.Text := ExtractFilePath(OpenDialog1.FileName);
  Edit3.SetFocus;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('something went wrong at open dialog.');
    exit;
  end;

  Edit1.Text := OpenDialog1.FileName;
  Edit1.SetFocus;
end;

procedure TForm1.JvWizard1CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
  Width := Width + 2;
  Width := Width - 2;

  LoadSettings1Click(Sender);
end;

procedure TForm1.ExitApplication1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.DefaultSettings1Click(Sender: TObject);
begin
  Edit1.Text := 'https://paule32.de.cool/Clara/ssl/latest_win32.exe';
  Edit2.Text := 'C:\temp\sslwin32.exe';
  Edit3.Text := 'C:\temp\certs';
end;

procedure TForm1.ClearFields1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';

  CheckBox1.Checked := false;
  CheckBox2.Checked := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ClearFields1Click(Button2);
end;

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TForm1.JvWizardInteriorPage1NextButtonClick(
  Sender: TObject; var
  Stop  : Boolean);
var
  S1,S2,S3: String;
begin
  S1 := Trim(Edit1.Text);
  S2 := Trim(Edit2.Text);
  S3 := Trim(Edit3.Text);

  if Length(S1) < 2 then
  begin
    ShowMessage('Field 1 must not empty.');
    stop := true;
    exit;
  end;
  if Length(S2) < 2 then
  begin
    if not(CheckBox1.Checked) then
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
    if not(CheckBox1.Checked) then
    begin
      Label1.Visible := true;
      if DownLoadFile(Edit1.Text,Edit2.Text) then
      begin
        Label1.Visible := false;
        ShowMessage('download success !!!');
      end else
      raise Exception.Create('Error while downloading:' +
      #13#10 + Edit1.Text);
    end;
    // install ?
    if not(CheckBox2.Checked) then
    begin
      ShellExecute(
      Application.Handle,
      PChar('open'),
      PChar(Edit2.Text),
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

procedure TForm1.LoadSettings1Click(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := nil;
  try
    try
      ini := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\tool.ini');
      Edit1.Text := ini.ReadString('download','src'    ,'');
      Edit2.Text := ini.ReadString('download','dst'    ,'');

      Edit3.Text := ini.ReadString('cacert'  ,'cadir'  ,'');
      Edit4.Text := ini.ReadString('cacert'  ,'keyfile','');
      Edit5.Text := ini.ReadString('cacert'  ,'modula' ,'');
      Edit6.Text := ini.ReadString('cacert'  ,'type'   ,'');

      CheckBox1.Checked := ini.ReadBool('setup','download',false);
      CheckBox2.Checked := ini.ReadBool('setup','install' ,false);
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

procedure TForm1.SaveSettings1Click(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := nil;
  try
    try
      ini := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\tool.ini');
      ini.WriteString('download','src'    ,Edit1.Text);
      ini.WriteString('download','dst'    ,Edit2.Text);

      ini.WriteString('cacert'  ,'cadir'  ,Edit3.Text);
      ini.WriteString('cacert'  ,'keyfile',Edit4.Text);
      ini.WriteString('cacert'  ,'modula' ,Edit5.Text);
      ini.WriteString('cacert'  ,'type'   ,Edit6.Text);

      ini.WriteBool('setup','download',CheckBox1.Checked);
      ini.WriteBool('setup','install' ,CheckBox2.Checked);
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettings1Click(Sender);
  Action := caFree;
end;

procedure TForm1.JvWizardInteriorPage2NextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
  SetCurrentDir(Edit3.Text);
  JvCreateProcess1.CommandLine :=
  'openssl genrsa -' +
  Edit6.Text         +
  '-out '            +
  Edit4.Text         + ' ' +
  Edit5.Text;
  JvCreateProcess1.Run;
end;


procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  mr: Integer;
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
      Edit4.Text := OpenDialog1.FileName;
    end else
    begin
      Edit4.Text := '';
    end;
  end;
end;

procedure TForm1.JvWizard1HelpButtonClick(Sender: TObject);
begin
  Application.HelpFile := 'SignTool.chm';
  Application.HelpCommand(HELP_CONTEXT,10);

  ShellExecute(Application.Handle,'open',
  PChar(ExtractFilePath(Application.ExeName) + 'SignTool.chm'),
  nil,nil,SW_SHOW);
end;

end.
