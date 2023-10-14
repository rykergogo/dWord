program dWord;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {dWordForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdWordForm, dWordForm);
  Application.Run;
end.
