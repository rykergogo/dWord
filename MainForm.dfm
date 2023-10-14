object dWordForm: TdWordForm
  Left = 0
  Top = 0
  Anchors = []
  Caption = 'dWord'
  ClientHeight = 344
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    256
    344)
  TextHeight = 15
  object passwordListBox: TListBox
    Left = 8
    Top = 8
    Width = 240
    Height = 233
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 0
  end
  object genBtn: TButton
    Left = 8
    Top = 301
    Width = 240
    Height = 25
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Generate'
    TabOrder = 1
    OnClick = genBtnClick
  end
  object passWordNum: TEdit
    Left = 8
    Top = 272
    Width = 240
    Height = 23
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    OnKeyPress = passWordNumKeyPress
  end
  object passwordLbl: TStaticText
    Left = 58
    Top = 247
    Width = 126
    Height = 19
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Passwords to Generate:'
    TabOrder = 3
  end
end
