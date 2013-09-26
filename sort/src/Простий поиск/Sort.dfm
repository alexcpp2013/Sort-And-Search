object frmSort: TfrmSort
  Left = 381
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103
  ClientHeight = 283
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object butOK: TButton
    Left = 8
    Top = 248
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
  end
  object butCancel: TButton
    Left = 94
    Top = 248
    Width = 75
    Height = 25
    Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
    TabOrder = 1
    OnClick = butCancelClick
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 8
    Width = 449
    Height = 225
    Caption = #1052#1072#1089#1080#1074' '#1085#1077#1086#1073#1093#1110#1076#1085#1080#1081' '#1076#1083#1103' '#1079#1083#1080#1090#1090#1103' '#1079' '#1087#1077#1088#1096#1080#1084' '#1084#1072#1089#1080#1074#1086#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 8
      Top = 24
      Width = 425
      Height = 57
      Caption = #1054#1073#1077#1088#1110#1090#1100' '#1090#1080#1087' '#1074#1074#1086#1076#1091' '#1084#1072#1089#1080#1074#1091
      TabOrder = 0
      object butHandle: TButton
        Left = 16
        Top = 24
        Width = 75
        Height = 25
        Caption = #1042#1088#1091#1095#1085#1091
        TabOrder = 0
        OnClick = butHandleClick
      end
      object butGen: TButton
        Left = 184
        Top = 24
        Width = 75
        Height = 25
        Caption = #1047#1075#1077#1085#1077#1088#1091#1074#1072#1090#1080
        TabOrder = 1
        OnClick = butGenClick
      end
      object butOpen: TButton
        Left = 328
        Top = 24
        Width = 75
        Height = 25
        Caption = #1042#1110#1076#1082#1088#1080#1090#1080
        TabOrder = 2
        OnClick = butOpenClick
      end
    end
    object sgArray: TStringGrid
      Left = 8
      Top = 88
      Width = 425
      Height = 81
      BiDiMode = bdLeftToRight
      ColCount = 1
      Ctl3D = True
      Enabled = False
      FixedCols = 0
      RowCount = 2
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goAlwaysShowEditor, goThumbTracking]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssHorizontal
      TabOrder = 1
      OnKeyDown = sgArrayKeyDown
      ColWidths = (
        58)
    end
    object butSave: TButton
      Left = 8
      Top = 184
      Width = 75
      Height = 25
      Caption = #1047#1073#1077#1088#1077#1075#1090#1080
      Enabled = False
      TabOrder = 2
      OnClick = butSaveClick
    end
    object butClear: TButton
      Left = 96
      Top = 184
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1080
      TabOrder = 3
      OnClick = butClearClick
    end
  end
  object Button1: TButton
    Left = 184
    Top = 248
    Width = 105
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1080' '#1084#1072#1089#1080#1074#1080
    TabOrder = 3
    OnClick = Button1Click
  end
end
