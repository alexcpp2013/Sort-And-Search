object frmMain: TfrmMain
  Left = 211
  Top = 117
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103' '#1074#1080#1073#1086#1088#1086#1084
  ClientHeight = 466
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
    Height = 466
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
          Width = 401
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
            Left = 144
            Top = 24
            Width = 75
            Height = 25
            Caption = #1047#1075#1077#1085#1077#1088#1091#1074#1072#1090#1080
            TabOrder = 1
            OnClick = butGenClick
          end
          object butOpen: TButton
            Left = 280
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
        object butSort: TButton
          Left = 576
          Top = 104
          Width = 75
          Height = 25
          Caption = #1057#1086#1088#1090#1091#1074#1072#1090#1080
          Enabled = False
          TabOrder = 4
          OnClick = butSortClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 208
        Width = 665
        Height = 185
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        TabOrder = 1
        object lblRes: TLabel
          Left = 8
          Top = 120
          Width = 159
          Height = 16
          Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1077#1088#1077#1089#1090#1072#1085#1086#1074#1086#1082': '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 328
          Top = 120
          Width = 287
          Height = 16
          Caption = #1063#1072#1089' '#1079#1072#1090#1088#1072#1095#1077#1085#1080#1081' '#1085#1072' '#1074#1080#1082#1086#1085#1072#1085#1085#1103' '#1089#1086#1088#1090#1091#1074#1072#1085#1085#1103':  '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 616
          Top = 152
          Width = 35
          Height = 13
          Caption = #1089#1077#1082#1091#1085#1076
        end
        object Label3: TLabel
          Left = 8
          Top = 152
          Width = 131
          Height = 16
          Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1086#1088#1110#1074#1085#1103#1085#1100': '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object butSave2: TButton
          Left = 576
          Top = 24
          Width = 75
          Height = 25
          Caption = #1047#1073#1077#1088#1077#1075#1090#1080
          Enabled = False
          TabOrder = 0
          OnClick = butSave2Click
        end
        object butClear2: TButton
          Left = 576
          Top = 64
          Width = 75
          Height = 25
          Caption = #1054#1095#1080#1089#1090#1080#1090#1080
          TabOrder = 1
          OnClick = butClear2Click
        end
        object eResult: TEdit
          Left = 184
          Top = 120
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 2
        end
        object sgRet: TStringGrid
          Left = 8
          Top = 24
          Width = 553
          Height = 81
          BiDiMode = bdLeftToRight
          ColCount = 1
          Ctl3D = True
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
          TabOrder = 3
          OnKeyDown = sgArrayKeyDown
          ColWidths = (
            58)
        end
        object eTime: TEdit
          Left = 488
          Top = 144
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 4
        end
        object TResultC: TEdit
          Left = 184
          Top = 152
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 5
        end
      end
      object Button1: TButton
        Left = 584
        Top = 400
        Width = 75
        Height = 25
        Caption = #1042#1080#1093#1110#1076
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 472
        Top = 400
        Width = 75
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1080
        TabOrder = 3
        OnClick = Button2Click
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
