unit FrameCAroot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvOutlookBar, ComCtrls, StdCtrls;

type
  TCArootFrame = class(TFrame)
    JvOutlookBar1: TJvOutlookBar;
    TreeView1: TTreeView;
    Edit_CA_Name: TEdit;
    AddCA_Button: TButton;
    DeleteCA_Button: TButton;
    procedure JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
    procedure AddCA_ButtonClick(Sender: TObject);
    procedure Edit_CA_NameEnter(Sender: TObject);
    procedure Edit_CA_NameExit(Sender: TObject);
    procedure DeleteCA_ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    function TreeItemSearch(TV: TTreeView; SucheItem: string): TTreeNode;
  end;

implementation

{$R *.dfm}
uses
  mainform, wizardA;

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
  TN: TTreeNode;
begin
  if (Length(Trim(Edit_CA_Name.Text)) < 7)
  or (Length(Trim(Edit_CA_Name.Text)) > 64) then
  begin
    ShowMessage('Domain-Edit must have > 7 < 64 characters !');
    exit;
  end;
  if TreeView1.Items.Count-1 < 0 then
  begin
    tn := TreeView1.Items.Add(nil,Edit_CA_Name.Text);
    TreeView1.Items.AddChild(tn,'CA key  file');
    TreeView1.Items.AddChild(tn,'CA root cert');
    TreeView1.Items.AddChild(tn,'Client Certs');
    exit;
  end;

  tn := TreeItemSearch(TreeView1,Trim(Edit_CA_Name.Text));
  if tn <> nil then
  begin
    if tn.Level = 0 then
    begin
      ShowMessage('Domain already exists !');
      exit;
    end;
  end;

  tn := TreeView1.Items.Add(nil,Edit_CA_Name.Text);
  TreeView1.Items.AddChild(tn,'CA key  file');
  TreeView1.Items.AddChild(tn,'CA root cert');
  TreeView1.Items.AddChild(tn,'Client Certs');
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
    exit;
  end;
  if tn.Level <> 0 then
  begin
    ShowMessage('selected item is not a CA domain item.' +
    #13#10 + 'please select a top level domain.');
    exit;
  end;
  tn.Delete;
end;

end.

