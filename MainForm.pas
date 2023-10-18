unit MainForm;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Hash, System.Math, Helpers;

type
  TdWordForm = class(TForm)
    passwordListBox: TListBox;
    genBtn: TButton;
    passWordNum: TEdit;
    passwordLbl: TStaticText;
    procedure genBtnClick(Sender: TObject);
    procedure passWordNumChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dWordForm: TdWordForm;
  setNumPass: Integer = -1;
  flagValid: bool = true;

implementation

{$R *.dfm}

procedure TdWordForm.genBtnClick(Sender: TObject);
{ This will handle the generation of the passwords based on number provided
  by user. }

  var
    i: Integer;
    cmpName: String;
    hash: String;


begin

  try
    // Valid flag is set to true here in case it was false previously.

    setNumPass := StrToInt(passWordNum.Text);
    flagValid := true;
  except
    // Tell the system the input is not valid!

    flagValid := false;
    Application.MessageBox('Not a valid number.', 'Error', MB_OK Or MB_ICONERROR);


  end;

  if (setNumPass > 0) And (flagValid) then

  begin
    // Clear any previous entries
    passwordListBox.Clear;



    for i := 1 to setNumPass do

    begin
      passWordListBox.Items.Add(hash);
    end;

    // Success message + reset and cleanup of controls.
    passWordNum.Text := '';
    setNumPass := -1;
    Application.MessageBox('Passwords generated.', 'Done', MB_OK Or MB_ICONINFORMATION);



  end

  // This will trigger when user inputs 0 or negative num.
  else if ((setNumPass = 0) Or (setNumPass < 0)) And (flagValid) then

  begin

    Application.MessageBox('Can''t generate negative/no passwords.', 'Error', MB_OK Or MB_ICONERROR);
  end;



end;

procedure TdWordForm.passWordNumChange(Sender: TObject);
begin
  genBtn.Enabled := true;
end;

end.
