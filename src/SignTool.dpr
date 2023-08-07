program SignTool;

uses
  Forms,
  MainForm in 'MainForm.pas' {Form2},
  FrameApache in 'FrameApache.pas' {Frame1: TFrame},
  FrameCAroot in 'FrameCAroot.pas' {Frame2: TFrame},
  FrameLocalDNS in 'FrameLocalDNS.pas' {Frame3: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
