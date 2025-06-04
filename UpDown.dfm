object Main: TMain
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Up-Down'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    Align = alClient
    TabOrder = 0
    DesignSize = (
      1289
      636)
    object HelpText: TMemo
      Left = 0
      Top = 0
      Width = 1289
      Height = 353
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      Color = 16776176
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Ravie'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
    end
    object RangeText: TStaticText
      Left = 0
      Top = 0
      Width = 265
      Height = 34
      Alignment = taCenter
      AutoSize = False
      Caption = 'Range: 1 ~ 500'
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Ravie'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object LifeText: TStaticText
      Left = 1152
      Top = 0
      Width = 137
      Height = 34
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Life: 10'
      Color = 10930928
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Ravie'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object TextDisplay: TEdit
      Left = 488
      Top = 416
      Width = 335
      Height = 55
      Anchors = [akLeft, akRight, akBottom]
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Snap ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = 'Input Number!'
      OnClick = TextDisplayClick
      OnKeyDown = TextDisplayKeyDown
    end
    object DecisionBtn: TButton
      Left = 552
      Top = 523
      Width = 215
      Height = 41
      Anchors = [akBottom]
      Caption = 'Decision!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Snap ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = DecisionBtnClick
    end
  end
end
