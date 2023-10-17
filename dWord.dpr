program dWord;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {dWordForm},
  Helpers in 'Helpers.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdWordForm, dWordForm);
  Application.Run;
end.
