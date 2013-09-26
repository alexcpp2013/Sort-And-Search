object frmMain: TfrmMain
  Left = 200
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1090#1077#1082
  ClientHeight = 405
  ClientWidth = 222
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
    Width = 222
    Height = 405
    ActivePage = tsArray
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    object tsArray: TTabSheet
      Caption = #1057#1090#1077#1082
      object Label1: TLabel
        Left = 47
        Top = 293
        Width = 105
        Height = 13
        Caption = #1047#1085#1072#1095#1077#1085#1085#1103' '#1077#1083#1077#1084#1077#1085#1090#1091': '
      end
      object GroupBox2: TGroupBox
        Left = 208
        Top = 224
        Width = 25
        Height = 17
        Caption = #1042#1093#1110#1076#1085#1080#1081' '#1084#1072#1089#1080#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        object GroupBox1: TGroupBox
          Left = 592
          Top = 40
          Width = 17
          Height = 17
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
        object butSave1: TButton
          Left = 576
          Top = 24
          Width = 9
          Height = 9
          Caption = #1047#1073#1077#1088#1077#1075#1090#1080
          Enabled = False
          TabOrder = 1
          OnClick = butSave1Click
        end
        object butClear1: TButton
          Left = 592
          Top = 24
          Width = 25
          Height = 9
          Caption = #1054#1095#1080#1089#1090#1080#1090#1080
          TabOrder = 2
          OnClick = butClear1Click
        end
        object butSort: TButton
          Left = 616
          Top = 24
          Width = 9
          Height = 17
          Caption = #1057#1086#1088#1090#1091#1074#1072#1090#1080
          Enabled = False
          TabOrder = 3
          OnClick = butSortClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 208
        Top = 96
        Width = 17
        Height = 25
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        TabOrder = 1
        Visible = False
        object lblRes: TLabel
          Left = 64
          Top = 24
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
        object butSave2: TButton
          Left = 88
          Top = 24
          Width = 9
          Height = 17
          Caption = #1047#1073#1077#1088#1077#1075#1090#1080
          Enabled = False
          TabOrder = 0
          OnClick = butSave2Click
        end
        object butClear2: TButton
          Left = 104
          Top = 24
          Width = 17
          Height = 17
          Caption = #1054#1095#1080#1089#1090#1080#1090#1080
          TabOrder = 1
          OnClick = butClear2Click
        end
        object eResult: TEdit
          Left = 64
          Top = 40
          Width = 9
          Height = 21
          ReadOnly = True
          TabOrder = 2
        end
        object sgRet: TStringGrid
          Left = 8
          Top = 24
          Width = 49
          Height = 25
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
      end
      object GroupBox6: TGroupBox
        Left = 208
        Top = 136
        Width = 25
        Height = 17
        Caption = #1055#1088#1086#1084#1110#1078#1085#1110' '#1076#1072#1085#1110
        TabOrder = 2
        Visible = False
        object sgData: TStringGrid
          Left = 8
          Top = 24
          Width = 41
          Height = 9
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
          TabOrder = 0
          OnKeyDown = sgArrayKeyDown
          ColWidths = (
            58)
        end
      end
      object Button1: TButton
        Left = 56
        Top = 344
        Width = 75
        Height = 25
        Caption = #1042#1080#1093#1110#1076
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 208
        Top = 72
        Width = 41
        Height = 17
        Caption = #1054#1095#1080#1089#1090#1080#1090#1080
        TabOrder = 4
        Visible = False
        OnClick = Button2Click
      end
      object GroupBox4: TGroupBox
        Left = 2
        Top = 1
        Width = 201
        Height = 288
        Caption = #1057#1090#1077#1082
        TabOrder = 5
        object sgStack: TStringGrid
          Left = 16
          Top = 51
          Width = 161
          Height = 217
          ColCount = 2
          RowCount = 8
          FixedRows = 0
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goAlwaysShowEditor, goThumbTracking]
          ParentFont = False
          TabOrder = 0
          RowHeights = (
            24
            24
            24
            24
            24
            24
            24
            24)
        end
        object stPush: TButton
          Left = 8
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Push'
          TabOrder = 1
          OnClick = stPushClick
        end
        object stPop: TButton
          Left = 112
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Pop'
          TabOrder = 2
          OnClick = stPopClick
        end
      end
    end
  end
  object sgArray: TStringGrid
    Left = 216
    Top = 190
    Width = 33
    Height = 35
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
    TabOrder = 2
    Visible = False
    OnKeyDown = sgArrayKeyDown
    ColWidths = (
      58)
  end
  object eValue: TEdit
    Left = 42
    Top = 338
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object dOpen: TOpenDialog
    Filter = #1060#1072#1081#1083' '#1079' '#1084#1072#1089#1080#1074#1086#1084' (*.sda)|*.sda'
    Left = 216
    Top = 64
  end
  object dSave: TSaveDialog
    Filter = #1060#1072#1081#1083' '#1079' '#1084#1072#1089#1080#1074#1086#1084' (*.sda)|*.sda'
    Left = 216
    Top = 32
  end
end
