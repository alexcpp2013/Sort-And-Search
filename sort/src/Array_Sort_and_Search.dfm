object Array: TArray
  Left = 286
  Top = 114
  Width = 690
  Height = 548
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1052#1072#1089#1080#1074#1080
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 21
  object PageControlSort_and_Search: TPageControl
    Left = 8
    Top = 8
    Width = 665
    Height = 457
    ActivePage = Sort
    TabIndex = 0
    TabOrder = 0
    object Sort: TTabSheet
      Caption = #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103
      object Label_1: TLabel
        Left = 8
        Top = 4
        Width = 122
        Height = 21
        Caption = #1042#1074#1077#1076#1110#1090#1100' '#1084#1072#1089#1080#1074': '
        Visible = False
      end
      object ComboBox_Array: TComboBox
        Left = 136
        Top = 4
        Width = 289
        Height = 29
        ItemHeight = 21
        TabOrder = 0
        Text = #1047#1088#1086#1073#1110#1090#1100' '#1074#1080#1073#1110#1088
        Visible = False
        OnChange = ComboBox_ArrayChange
        Items.Strings = (
          #1042#1074#1077#1089#1090#1080' '#1074#1088#1091#1095#1085#1091
          #1042#1074#1077#1089#1090#1080' '#1079' '#1092#1072#1081#1083#1091
          #1047#1075#1077#1085#1077#1088#1091#1074#1072#1090#1080' '#1074#1080#1087#1072#1076#1082#1086#1074#1080#1084' '#1095#1080#1085#1086#1084)
      end
      object RadioGroupSort: TRadioGroup
        Left = 8
        Top = 40
        Width = 633
        Height = 369
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1089#1087#1086#1089#1110#1073' '#1089#1086#1088#1090#1091#1074#1072#1085#1085#1103
        Items.Strings = (
          #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103' '#1084#1077#1090#1086#1076#1086#1084' '#1073#1091#1083#1100#1073#1072#1096#1082#1080
          #1064#1074#1080#1076#1082#1077' '#1089#1086#1088#1090#1091#1074#1072#1085#1085#1103' ('#1084#1077#1090#1086#1076' '#1061#1086#1072#1088#1072')'
          #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103' '#1079#1083#1080#1090#1090#1103#1084
          #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103' '#1074#1089#1090#1072#1074#1082#1072#1084#1080
          #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103' '#1084#1077#1090#1086#1076#1086#1084' '#1074#1080#1073#1086#1088#1091
          #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103' '#1084#1077#1090#1086#1076#1086#1084' '#1064#1077#1083#1083#1072
          #1050#1086#1088#1077#1085#1077#1074#1077' '#1089#1086#1088#1090#1091#1074#1072#1085#1085#1103
          #1055#1080#1088#1072#1084#1110#1076#1072#1083#1100#1085#1077' '#1089#1086#1088#1090#1091#1074#1072#1085#1085#1103)
        TabOrder = 1
        OnClick = RadioGroupSortClick
      end
      object ButtonOk1: TButton
        Left = 496
        Top = 368
        Width = 139
        Height = 25
        Caption = #1042#1080#1073#1110#1088' '#1079#1088#1086#1073#1083#1077#1085#1086
        Enabled = False
        TabOrder = 2
        OnClick = ButtonOk1Click
      end
      object ButtonOk2: TButton
        Left = 440
        Top = 4
        Width = 169
        Height = 25
        Caption = #1042#1080#1073#1110#1088' '#1079#1088#1086#1073#1083#1077#1085#1086
        Enabled = False
        TabOrder = 3
        Visible = False
      end
    end
    object Search: TTabSheet
      Caption = #1055#1086#1096#1091#1082
      ImageIndex = 1
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 16
        Width = 641
        Height = 369
        Caption = #1054#1073#1077#1088#1110#1090#1100' '#1090#1080#1087' '#1087#1086#1096#1091#1082#1091
        Items.Strings = (
          #1055#1088#1086#1089#1090#1080#1081' '#1087#1086#1096#1091#1082
          #1041#1110#1085#1072#1088#1085#1080#1081' '#1087#1086#1096#1091#1082)
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object Button1: TButton
        Left = 552
        Top = 344
        Width = 75
        Height = 25
        Caption = #1055#1086#1096#1091#1082
        Enabled = False
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object ButtonExit_Array: TButton
    Left = 600
    Top = 480
    Width = 75
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 1
    OnClick = ButtonExit_ArrayClick
  end
end
