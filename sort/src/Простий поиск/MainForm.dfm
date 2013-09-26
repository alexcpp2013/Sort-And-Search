object frmMain: TfrmMain
  Left = 204
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1089#1090#1080#1081' '#1087#1086#1096#1091#1082
  ClientHeight = 408
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object butClose: TButton
    Left = 1041
    Top = 769
    Width = 83
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 0
    OnClick = butCloseClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 693
    Height = 408
    ActivePage = tsArray
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    object tsArray: TTabSheet
      Caption = #1052#1072#1089#1080#1074#1080
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 665
        Height = 185
        Caption = #1042#1093#1110#1076#1085#1080#1081' '#1084#1072#1089#1080#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 8
          Top = 24
          Width = 553
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
            Left = 240
            Top = 24
            Width = 75
            Height = 25
            Caption = #1047#1075#1077#1085#1077#1088#1091#1074#1072#1090#1080
            TabOrder = 1
            OnClick = butGenClick
          end
          object butOpen: TButton
            Left = 448
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
          Width = 553
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
        object butSave1: TButton
          Left = 576
          Top = 24
          Width = 75
          Height = 25
          Caption = #1047#1073#1077#1088#1077#1075#1090#1080
          Enabled = False
          TabOrder = 2
          OnClick = butSave1Click
        end
        object butClear1: TButton
          Left = 576
          Top = 64
          Width = 75
          Height = 25
          Caption = #1054#1095#1080#1089#1090#1080#1090#1080
          TabOrder = 3
          OnClick = butClear1Click
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 275
        Width = 665
        Height = 49
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        TabOrder = 1
        object lblRes: TLabel
          Left = 8
          Top = 16
          Width = 179
          Height = 16
          Caption = #1030#1085#1076#1077#1082#1089' '#1096#1091#1082#1072#1085#1086#1075#1086' '#1077#1083#1077#1084#1077#1085#1090#1091': '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object eResult: TEdit
          Left = 280
          Top = 16
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Button1: TButton
        Left = 608
        Top = 344
        Width = 75
        Height = 25
        Caption = #1042#1080#1093#1110#1076
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 520
        Top = 336
        Width = 75
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1080
        TabOrder = 3
        OnClick = Button2Click
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 200
        Width = 665
        Height = 65
        Caption = #1047#1085#1072#1081#1090#1080
        TabOrder = 4
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 266
          Height = 16
          Caption = #1042#1074#1077#1076#1110#1090#1100' '#1079#1085#1072#1095#1077#1085#1085#1103' '#1077#1083#1077#1084#1077#1085#1090#1091' '#1076#1083#1103' '#1087#1086#1096#1091#1082#1091': '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 280
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object butSort: TButton
          Left = 576
          Top = 24
          Width = 75
          Height = 25
          Caption = #1055#1086#1096#1091#1082
          Enabled = False
          TabOrder = 1
          OnClick = butSortClick
        end
      end
    end
  end
  object dOpen: TOpenDialog
    Filter = #1060#1072#1081#1083' '#1079' '#1084#1072#1089#1080#1074#1086#1084' (*.sda)|*.sda'
    Left = 552
    Top = 48
  end
  object dSave: TSaveDialog
    Filter = #1060#1072#1081#1083' '#1079' '#1084#1072#1089#1080#1074#1086#1084' (*.sda)|*.sda'
    Left = 520
    Top = 48
  end
end
