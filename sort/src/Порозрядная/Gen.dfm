object frmGen: TfrmGen
  Left = 494
  Top = 298
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1047#1075#1077#1085#1077#1088#1091#1074#1072#1090#1080' '#1084#1072#1089#1080#1074
  ClientHeight = 123
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 103
    Height = 13
    Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1077#1083#1077#1084#1077#1085#1090#1110#1074':'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 177
    Height = 13
    Caption = #1053#1080#1078#1085#1103' '#1075#1088#1072#1085#1080#1094#1103' '#1076#1086#1074#1110#1083#1100#1085#1080#1093' '#1079#1085#1072#1095#1077#1085#1100':'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 179
    Height = 13
    Caption = #1042#1077#1088#1093#1085#1103' '#1075#1088#1072#1085#1080#1094#1103' '#1076#1086#1074#1110#1083#1100#1085#1080#1093' '#1079#1085#1072#1095#1077#1085#1100':'
  end
  object eCount: TEdit
    Left = 200
    Top = 8
    Width = 65
    Height = 21
    MaxLength = 5
    TabOrder = 0
    Text = '1'
  end
  object eBottom: TEdit
    Left = 200
    Top = 32
    Width = 65
    Height = 21
    MaxLength = 3
    TabOrder = 1
    Text = '0'
  end
  object eTop: TEdit
    Left = 200
    Top = 56
    Width = 65
    Height = 21
    MaxLength = 5
    TabOrder = 2
    Text = '10'
  end
  object butOk: TButton
    Left = 16
    Top = 88
    Width = 89
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = butOkClick
  end
  object butCancel: TButton
    Left = 168
    Top = 88
    Width = 81
    Height = 25
    Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
    TabOrder = 4
    OnClick = butCancelClick
  end
end
