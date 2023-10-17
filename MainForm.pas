unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math;

type
  TdWordForm = class(TForm)
    passwordListBox: TListBox;
    genBtn: TButton;
    passWordNum: TEdit;
    passwordLbl: TStaticText;
    procedure genBtnClick(Sender: TObject);
    procedure passWordNumKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dWordForm: TdWordForm;
  setNumPass: Integer = -1;

implementation

{$R *.dfm}

procedure TdWordForm.genBtnClick(Sender: TObject);
{ This will handle the generation of the passwords based on number provided
  by user. }

  var
    i: Integer;

  const
    chooseFrom: array[0..61] of Char = ('a','b','c','d','e','f','g','h','i','j',
    'k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C',
    'D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
    'W','X','Y','Z','1','2','3','4','5','6','7','8','9','0');



begin



  if setNumPass > 0 then

  begin

    for i := 1 to setNumPass do

    begin
      passwordListBox.Items.Add(chooseFrom[i]);
    end;


  end

  else

  begin
    Application.MessageBox('Enter the number of passwords to generate.', 'Error', MB_OK Or MB_ICONERROR);
  end;

  // Success message + reset and cleanup of controls.
  passWordNum.Text := '';
  setNumPass := -1;
  Application.MessageBox('Passwords generated.', 'Done', MB_OK Or MB_ICONINFORMATION);

end;

procedure TdWordForm.passWordNumKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
{ Only allow numbers to be entered in the box. }

begin

  if Key in ['A'..'Z', 'a'..'z'] then

  begin
    passWordNum.Text := '';
  end

  else if Key in ['0'..'9'] then

  begin
    setNumPass := StrToInt(passWordNum.Text);
    genBtn.Enabled := true;
  end;

end;

end.
