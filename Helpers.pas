{   d8                      dP                                                                8b
  d8'                      88                                                                `8b
 d8'     88d888b. dP    dP 88  .dP  .d8888b. 88d888b. .d8888b. .d8888b. .d8888b. .d8888b.     `8b
 Y8.     88'  `88 88    88 88888"   88ooood8 88'  `88 88'  `88 88'  `88 88'  `88 88'  `88     .8P
  Y8.    88       88.  .88 88  `8b. 88.  ... 88       88.  .88 88.  .88 88.  .88 88.  .88    .8P
   Y8    dP       `8888P88 dP   `YP `88888P' dP       `8888P88 `88888P' `8888P88 `88888P'    8P
                       .88                                 .88               .88
                   d8888P                              d8888P            d8888P                   }


unit Helpers;


interface

function getCmpName: String;
function genHash: String;

implementation

uses
  Winapi.Windows, System.Hash, System.Math, System.SysUtils;

function getCmpName: String;
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

function genHash: String;
{ The algorithm used to create the digital fingerprint. }

  var
    hash: String;
    i: Integer;
    cmpName: String;

  const
    chooseFrom: array[0..76] of Char = ('a','b','c','d','e','f','g','h','i','j',
    'k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C',
    'D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
    'W','X','Y','Z','1','2','3','4','5','6','7','8','9','0', '+', '-', '/', '\',
    '?', '!', '@', '#', '%', '^', '&', '*', '(', ')', '_');

begin
  cmpName := getCmpName;

  hash := THashSHA2.GetHashString(cmpName) + chooseFrom[RandomRange(0, 77)];

  for i := 1 to hash.Length do

  begin
    hash[RandomRange(1, 66)] := chooseFrom[RandomRange(0, 77)]
  end;

  hash := hash + IntToStr(ord('R')) + IntToStr(ord('G'));
  Result := hash;
end;

end.
