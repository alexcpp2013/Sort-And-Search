object MainForm: TMainForm
  Left = 392
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = ' '#1040#1083#1075#1086#1088#1080#1090#1084#1080' + '#1057#1090#1088#1091#1082#1090#1091#1088#1080' '#1076#1072#1085#1080#1093' = '#1055#1088#1086#1075#1088#1072#1084#1072
  ClientHeight = 424
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 21
  object ButtonArray: TButton
    Left = 24
    Top = 24
    Width = 321
    Height = 41
    Caption = #1052#1072#1089#1080#1074#1080
    TabOrder = 0
    OnClick = ButtonArrayClick
  end
  object ButtonExit: TButton
    Left = 144
    Top = 384
    Width = 75
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 1
    OnClick = ButtonExitClick
  end
  object Button1: TButton
    Left = 24
    Top = 96
    Width = 321
    Height = 41
    Caption = #1044#1077#1088#1077#1074#1086
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 168
    Width = 321
    Height = 41
    Caption = #1051#1110#1085#1110#1081#1085#1110' '#1089#1087#1080#1089#1082#1080
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 240
    Width = 313
    Height = 41
    Caption = #1043#1088#1072#1092#1080
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 312
    Width = 313
    Height = 41
    Caption = #1061#1077#1096'-'#1090#1072#1073#1083#1080#1094#1110
    TabOrder = 5
    OnClick = Button4Click
  end
end
