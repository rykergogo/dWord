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
    procedure passWordNumKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dWordForm: TdWordForm;
  setNumPass: Integer = 0;

implementation

{$R *.dfm}

procedure TdWordForm.genBtnClick(Sender: TObject);
{ This will handle the generation of the passwords based on number provided
  by user. }

var i: Integer;



begin

  if (passWordNum.Text <> '') And (setNumPass > 0) then

    begin

      setNumPass := StrToInt(passWordNum.Text);
      for i := 1 to setNumPass do

        begin
          passwordListBox.Items.Add(IntToStr(RandomRange(0, 63)));

        end;

    end

  else
    begin
      Application.MessageBox('Enter the number of passwords to generate.', 'Error', MB_OK Or MB_ICONERROR);
    end;

end;

procedure TdWordForm.passWordNumKeyPress(Sender: TObject; var Key: Char);
{ Only allow numbers to be entered in the box }

begin
  if Key in ['A'..'Z', 'a'..'z'] then
    begin
      passWordNum.Text := '';
    end;
end;

end.
