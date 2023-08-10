program SignTool;

uses
  Forms,
  MainForm in 'MainForm.pas' {MainWindow},
  FrameApache in 'FrameApache.pas' {Frame1: TFrame},
  FrameCAroot in 'FrameCAroot.pas' {CArootFrame: TFrame},
  FrameLocalDNS in 'FrameLocalDNS.pas' {Frame3: TFrame},
  FrameCAwizard in 'FrameCAwizard.pas' {Frame2: TFrame},
  regexpr in 'regexpr.pas',
  CompanyInformations in 'CompanyInformations.pas' {Frame4: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainWindow, MainWindow);
  Application.Run;
end.
