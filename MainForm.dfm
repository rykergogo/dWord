object dWordForm: TdWordForm
  Left = 0
  Top = 0
  Anchors = []
  Caption = 'dWord'
  ClientHeight = 309
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    513
    309)
  TextHeight = 15
  object signatureListBox: TListBox
    Left = 8
    Top = 8
    Width = 493
    Height = 231
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 15
    TabOrder = 0
    ExplicitWidth = 489
  end
  object genBtn: TButton
    Left = 8
    Top = 274
    Width = 493
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Generate'
    Enabled = False
    TabOrder = 1
    OnClick = genBtnClick
    ExplicitWidth = 489
  end
  object signatureNum: TEdit
    Left = 140
    Top = 245
    Width = 361
    Height = 23
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    OnChange = signatureNumChange
    ExplicitWidth = 357
  end
  object signaturelbl: TStaticText
    Left = 8
    Top = 245
    Width = 126
    Height = 19
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = 'Signatures to Generate:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
  end
end
