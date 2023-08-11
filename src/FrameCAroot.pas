unit FrameCAroot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvOutlookBar, ComCtrls, StdCtrls, ImgList, DateUtils,
  JvExStdCtrls, JvEdit, StrUtils;

type
  TCArootFrame = class(TFrame)
    JvOutlookBar1: TJvOutlookBar;
    TreeView1: TTreeView;
    AddCA_Button: TButton;
    DeleteCA_Button: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit_CA_Name: TJvEdit;
    ImageList1: TImageList;
    procedure JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
    procedure AddCA_ButtonClick(Sender: TObject);
    procedure Edit_CA_NameEnter(Sender: TObject);
    procedure Edit_CA_NameExit(Sender: TObject);
    procedure DeleteCA_ButtonClick(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function TreeItemSearch(TV: TTreeView; SucheItem: string): TTreeNode;
  end;

implementation

{$R *.dfm}
uses
  mainform, wizardA, regexpr;

function TCArootFrame.TreeItemSearch(TV: TTreeView; SucheItem: string): TTreeNode;
var
  i: Integer;
  iItem: string;
begin
  if (TV = nil) or (SucheItem = '') then Exit;
  for i := 0 to TV.Items.Count - 1 do
  begin
    iItem := TV.Items[i].Text;
    if SucheItem = iItem then
    begin
      Result := TV.Items[i];
      Exit;
    end
    else
    begin
      Result := nil;
    end;
  end;
end;

procedure TCArootFrame.JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
begin
  TreeView1.Left := 0;
  TreeView1.Width := MainWindow.Panel1.Width - 10;
  TreeView1.AutoExpand := true;
  TreeView1.ReadOnly   := true;
  TreeView1.Items.Item[0].Expand(true);
end;

procedure TCArootFrame.AddCA_ButtonClick(Sender: TObject);
var
  A,B: TTreeNode;
  r:   TRegExpr;
  S1:  String;
  procedure add_items;
  begin
    with TreeView1.Items do
    begin
      B := Add(nil,S1);
      B.ImageIndex := 0;
      B.SelectedIndex := 0;

      A := AddChild(B,'CA key  file');
      A.ImageIndex := 2;
      A.SelectedIndex := 2;

      A := AddChild(B,'CA root cert');
      A.ImageIndex := 3;
      A.SelectedIndex := 3;

      B := AddChild(B,'Client Certs');
      B.ImageIndex := 1;
      B.SelectedIndex := 1;

      A := AddChild(B,'HTTPS');
      A.ImageIndex := 3;
      A.SelectedIndex := 3;

      A := AddChild(B,'Personal');
      A.ImageIndex := 3;
      A.SelectedIndex := 3;

      A := AddChild(B,'Applications');
      A.ImageIndex := 3;
      A.SelectedIndex := 3;
    end;
    Edit_CA_Name.SetFocus;
  end;
begin
  S1 := Trim(Edit_CA_Name.Text);

  if (Length(S1) < 7)
  or (Length(S1) > 64) then
  begin
    ShowMessage('Domain-Edit must have > 7 < 64 characters !');
    Edit_CA_Name.SetFocus;
    exit;
  end;

  r := TRegExpr.Create;

  r.Expression :=
  '(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\.)+' +
  '[a-z0-9][a-z0-9-]{0,61}[a-z0-9]';

  try  // ensure memory clean-up
    if r.Exec(S1) then
    begin
      with TreeView1.Items do
      begin
        if Count-1 < 0 then
        begin
          add_items;
          exit;
        end;
      end;
    end else
    begin
      ShowMessage('not a valid domain name !');
      Edit_CA_Name.SetFocus;
      exit;
    end;
  finally
    r.Free;
  end;

  B := TreeItemSearch(TreeView1,S1);
  if B <> nil then
  begin
    if B.Level = 0 then
    begin
      ShowMessage('Domain already exists !');
      Edit_CA_Name.SetFocus;
      exit;
    end;
  end;

  add_items;
end;

procedure TCArootFrame.Edit_CA_NameEnter(Sender: TObject);
begin
  Edit_CA_Name.Color := clYellow;
end;

procedure TCArootFrame.Edit_CA_NameExit(Sender: TObject);
begin
  Edit_CA_Name.Color := clWhite;
end;

procedure TCArootFrame.DeleteCA_ButtonClick(Sender: TObject);
var
  TN: TTreeNode;
begin
  TN := TreeView1.Selected;
  if TN = nil then
  begin
    ShowMessage('no CA Domain selected.' +
    #13#10 +    'Item can not delete !!!');
    Edit_CA_Name.SetFocus;
    exit;
  end;
  if tn.Level <> 0 then
  begin
    ShowMessage('selected item is not a CA domain item.' +
    #13#10 + 'please select a top level domain.');
    Edit_CA_Name.SetFocus;
    exit;
  end;
  tn.Delete;
  Edit_CA_Name.SetFocus;
end;

procedure TCArootFrame.TreeView1Click(Sender: TObject);
var
  tn: TTreeNode;
  function LeftPad(
    value : integer ;
    length: integer = 2;
    pad   : char    = '0'): string; overload;
  begin
    result := RightStr(StringOfChar(pad,length) + IntToStr(value), length );
  end;
begin
  tn := TreeView1.Selected;
  if tn <> nil then
  begin
    if tn.Level = 0 then
    begin
      MainWindow.FrameCAwizard.Visible := false;
      MainWindow.FrameCAwizard.JvWizard1.Visible := false;

      MainWindow.FrameCompanyInfo.Visible := true;
      MainWindow.FrameCompanyInfo.LabelDate.Font.Name := 'Consolas';
      MainWindow.FrameCompanyInfo.LabelDate.Caption :=
      Format('%d-%s-%s',[
      CurrentYear ,
      LeftPad(MonthOf(Now)),
      LeftPad(DayOf  (Now))] );
    end;
  end;
end;

end.

