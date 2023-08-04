unit FrameCAroot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, JvExControls, JvOutlookBar, ComCtrls;

type
  TFrame2 = class(TFrame)
    JvOutlookBar1: TJvOutlookBar;
    TreeView1: TTreeView;
    procedure JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses
  mainform, wizardA;

procedure TFrame2.JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
begin
  TreeView1.Left := 0;
  TreeView1.Width := Form2.Panel1.Width - 10;
  TreeView1.AutoExpand := true;
  TreeView1.ReadOnly   := true;
  TreeView1.Items.Item[0].Expand(true);
end;

end.
