inherited pageUsuarios: TpageUsuarios
  Caption = 'pageUsuarios'
  ClientWidth = 1072
  ExplicitWidth = 1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1072
    ExplicitWidth = 1072
    inherited pnTop: TPanel
      Width = 1072
      ExplicitWidth = 1072
      inherited pnTopBody: TPanel
        Width = 872
        ExplicitWidth = 872
        inherited SpeedButton1: TSpeedButton
          Left = 732
          ExplicitLeft = 732
        end
        inherited SpeedButton2: TSpeedButton
          Left = 452
          ExplicitLeft = 452
        end
        inherited SpeedButton3: TSpeedButton
          Left = 592
          ExplicitLeft = 592
        end
      end
    end
    inherited pnMain: TPanel
      Width = 1072
      ExplicitWidth = 1072
      inherited pnMainBody: TPanel
        Width = 1072
        ExplicitWidth = 1072
        inherited pnMainBodyTop: TPanel
          Width = 872
          ExplicitWidth = 872
          inherited pnMainBodyTopLine: TPanel
            Width = 872
            TabOrder = 1
            ExplicitWidth = 872
          end
          inherited pnMainTopBodyMenu: TPanel
            Width = 872
            TabOrder = 0
            ExplicitWidth = 872
            inherited pnMainTopBodySearch: TPanel
              Left = 471
              ExplicitLeft = 471
            end
          end
        end
        inherited pnMainBodyData: TPanel
          Width = 872
          ExplicitWidth = 872
          inherited DBGrid: TDBGrid
            Width = 344
          end
          inherited pnMainDataForm: TPanel
            Left = 344
            Width = 528
            Padding.Left = 20
            Padding.Top = 20
            ExplicitLeft = 344
            ExplicitWidth = 528
            inherited pnMainCadastroBottom: TPanel
              Left = 20
              Width = 508
              ParentBackground = True
              ExplicitLeft = 20
              ExplicitWidth = 508
              inherited SpeedButton7: TSpeedButton
                Left = 228
                ExplicitLeft = 329
              end
              inherited SpeedButton8: TSpeedButton
                Left = 368
                ExplicitLeft = 469
              end
            end
            object StackPanel: TStackPanel
              Left = 20
              Top = 20
              Width = 297
              Height = 292
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = lblID
                end
                item
                  Control = edtCodigo
                end
                item
                  Control = lblNome
                end
                item
                  Control = edtNome
                end
                item
                  Control = lblCPF
                end
                item
                  Control = edtCPF
                end
                item
                  Control = lblTelefone
                end
                item
                  Control = edtTelefone
                end
                item
                  Control = lblEmail
                end
                item
                  Control = edtEmail
                end>
              HorizontalPositioning = sphpFill
              Spacing = 4
              TabOrder = 1
              object lblID: TLabel
                Left = 0
                Top = 0
                Width = 297
                Height = 13
                Caption = 'C'#243'digo'
              end
              object edtCodigo: TEdit
                Left = 0
                Top = 17
                Width = 297
                Height = 21
                TabOrder = 4
              end
              object lblNome: TLabel
                Left = 0
                Top = 42
                Width = 297
                Height = 13
                Caption = 'Nome'
              end
              object edtNome: TEdit
                Left = 0
                Top = 59
                Width = 297
                Height = 21
                TabOrder = 0
              end
              object lblCPF: TLabel
                Left = 0
                Top = 84
                Width = 297
                Height = 13
                Caption = 'CPF'
              end
              object edtCPF: TEdit
                Left = 0
                Top = 101
                Width = 297
                Height = 21
                TabOrder = 1
              end
              object lblTelefone: TLabel
                Left = 0
                Top = 126
                Width = 297
                Height = 13
                Caption = 'Telefone'
              end
              object edtTelefone: TEdit
                Left = 0
                Top = 143
                Width = 297
                Height = 21
                TabOrder = 2
              end
              object lblEmail: TLabel
                Left = 0
                Top = 168
                Width = 297
                Height = 13
                Caption = 'E-mail'
              end
              object edtEmail: TEdit
                Left = 0
                Top = 185
                Width = 297
                Height = 21
                TabOrder = 3
              end
            end
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 256
    Top = 201
  end
end
