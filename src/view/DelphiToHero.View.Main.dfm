object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi To Hero'
  ClientHeight = 583
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 583
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnMenu: TPanel
      Left = 0
      Top = 0
      Width = 100
      Height = 583
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object btnUsuarios: TSpeedButton
        Left = 0
        Top = 170
        Width = 100
        Height = 70
        Cursor = crHandPoint
        Align = alTop
        Caption = 'USU'#193'RIOS'
        Flat = True
        OnClick = btnUsuariosClick
      end
      object btnPrincipal: TSpeedButton
        Left = 0
        Top = 100
        Width = 100
        Height = 70
        Cursor = crHandPoint
        Align = alTop
        Caption = 'PRINCIPAL'
        Flat = True
        OnClick = btnPrincipalClick
      end
      object pnLogo: TPanel
        Left = 0
        Top = 0
        Width = 100
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pnFull: TPanel
      Left = 100
      Top = 0
      Width = 730
      Height = 583
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object pnTop: TPanel
        Left = 0
        Top = 0
        Width = 730
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
      object pnPrincipal: TPanel
        Left = 0
        Top = 100
        Width = 730
        Height = 483
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
end
