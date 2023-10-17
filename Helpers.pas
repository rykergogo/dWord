unit Helpers;


interface

function getCmpName(): String;

implementation

uses
  Winapi.Windows;

function getCmpName(): String;
{ Function implemented from: https://www.delphibasics.info/home/delphibasicssnip
pets/getcomputername }

  var
    CmpName: Array [0..256] of char;
    Size: DWORD;
begin
  Size := 256;
  GetComputerName(CmpName, Size);

  Result := CmpName;
end;

end.
