object dWordForm: TdWordForm
  Left = 0
  Top = 0
  Anchors = []
  Caption = 'dWord'
  ClientHeight = 343
  ClientWidth = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    252
    343)
  TextHeight = 15
  object passwordListBox: TListBox
    Left = 8
    Top = 8
    Width = 236
    Height = 232
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 0
  end
  object genBtn: TButton
    Left = 8
    Top = 301
    Width = 236
    Height = 24
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Generate'
    Enabled = False
    TabOrder = 1
    OnClick = genBtnClick
  end
  object passWordNum: TEdit
    Left = 8
    Top = 272
    Width = 236
    Height = 23
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    OnKeyUp = passWordNumKeyUp
  end
  object passwordLbl: TStaticText
    Left = 58
    Top = 247
    Width = 122
    Height = 18
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Passwords to Generate:'
    TabOrder = 3
  end
end
