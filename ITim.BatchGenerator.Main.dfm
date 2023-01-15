object BatchGenerator: TBatchGenerator
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' .bat-'#1092#1072#1081#1083#1086#1074
  ClientHeight = 118
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 39
    Width = 158
    Height = 13
    Caption = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1085#1072#1076' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086#1084
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 156
    Height = 13
    Caption = #1055#1091#1090#1100' '#1082' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1091' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
  end
  object DriverDeviceInstancePatch: TEdit
    Left = 183
    Top = 8
    Width = 390
    Height = 21
    TabOrder = 0
  end
  object BatchFileMakeButton: TButton
    Left = 183
    Top = 80
    Width = 390
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' .bat-'#1092#1072#1081#1083
    TabOrder = 1
    OnClick = BatchFileMakeButtonClick
  end
  object BatchFileOperationType: TComboBox
    Left = 183
    Top = 39
    Width = 390
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    Items.Strings = (
      #1055#1077#1088#1077#1079#1072#1087#1091#1089#1082)
  end
end
