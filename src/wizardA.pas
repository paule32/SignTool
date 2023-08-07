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

   procedure JvWizard1CancelButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExitApplication1Click(Sender: TObject);
    procedure JvWizardInteriorPage1NextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure SaveSettings1Click(Sender: TObject);
    procedure LoadSettings1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
end;

procedure TForm1.LoadSettings1Click(Sender: TObject);
var
  ini: TIniFile;
begin
end;

procedure TForm1.SaveSettings1Click(Sender: TObject);
var
  ini: TIniFile;
begin
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettings1Click(Sender);
  Action := caFree;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  mr: Integer;
begin
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
