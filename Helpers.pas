unit Helpers;


interface

function getCmpName(): String;

implementation

uses
  Winapi.Windows, System.Hash, System.Math;

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

function genHash(): String;
  var
    hash: String;
    i: Integer;
    cmpName: String;

  const
    chooseFrom: array[0..61] of Char = ('a','b','c','d','e','f','g','h','i','j',
    'k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C',
    'D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
    'W','X','Y','Z','1','2','3','4','5','6','7','8','9','0');

begin
  cmpName := getCmpName();

  hash := THashSHA2.GetHashString(cmpName) + chooseFrom[RandomRange(1, 62)];

  for i := 1 to hash.Length do

  begin
    hash[RandomRange(1, 66)] := chooseFrom[RandomRange(1, 62)]
  end;
end;

end.
