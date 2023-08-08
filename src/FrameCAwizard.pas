unit FrameCAwizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, JvWizard, JvWizardRouteMapSteps, StdCtrls, Buttons, ExtCtrls,
  JvExControls;

type
  TFrame2 = class(TFrame)
    ScrollBox1: TScrollBox;
    JvWizard1: TJvWizard;
    JvWizardInteriorPage1: TJvWizardInteriorPage;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    JvWizardInteriorPage2: TJvWizardInteriorPage;
    Image2: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton4: TSpeedButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    JvWizardRouteMapSteps1: TJvWizardRouteMapSteps;

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

    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure JvWizard1HelpButtonClick(Sender: TObject);
    procedure JvWizardInteriorPage1NextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  MainForm;

procedure TFrame2.Edit1Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame2.Edit2Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame2.Edit3Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame2.Edit4Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame2.Edit5Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame2.Edit6Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;

procedure TFrame2.Edit1Exit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame2.Edit2Exit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame2.Edit3Exit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame2.Edit4Exit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame2.Edit5Exit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame2.Edit6Exit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;

procedure TFrame2.SpeedButton1Click(Sender: TObject); begin MainWindow.SpeedButton3Click(Sender); end;
procedure TFrame2.SpeedButton2Click(Sender: TObject); begin MainWindow.SpeedButton2Click(Sender); end;
procedure TFrame2.SpeedButton3Click(Sender: TObject); begin MainWindow.SpeedButton3Click(Sender); end;
procedure TFrame2.SpeedButton4Click(Sender: TObject); begin MainWindow.SpeedButton4Click(Sender); end;

procedure TFrame2.JvWizard1HelpButtonClick(Sender: TObject);
begin
  MainWindow.JvWizard1HelpButtonClick(Sender);
end;

procedure TFrame2.JvWizardInteriorPage1NextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
  MainWindow.JvWizardInteriorPage1NextButtonClick(Sender,Stop);
end;

procedure TFrame2.Button1Click(Sender: TObject);
begin
  MainWindow.ClearFields1Click(Sender);
end;

end.
