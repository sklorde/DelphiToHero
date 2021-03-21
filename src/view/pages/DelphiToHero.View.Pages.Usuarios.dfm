inherited pageUsuarios: TpageUsuarios
  Caption = 'pageUsuarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    inherited pnMain: TPanel
      inherited pnMainBody: TPanel
        ExplicitLeft = 0
        ExplicitTop = 0
        inherited pnMainBodyTop: TPanel
          inherited pnMainBodyTopLine: TPanel
            TabOrder = 1
          end
          inherited pnMainTopBodyMenu: TPanel
            TabOrder = 0
          end
        end
        inherited pnMainBodyData: TPanel
          inherited pnMainDataForm: TPanel
            Left = 88
            Width = 609
            ExplicitLeft = 88
            ExplicitWidth = 609
            inherited pnMainCadastroBottom: TPanel
              Width = 609
              ParentBackground = True
              ExplicitLeft = 0
              ExplicitTop = 312
              ExplicitWidth = 257
              inherited SpeedButton7: TSpeedButton
                Left = 329
              end
              inherited SpeedButton8: TSpeedButton
                Left = 469
              end
            end
            object StackPanel: TStackPanel
              Left = 0
              Top = 0
              Width = 297
              Height = 312
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = lblCodigo
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
              ExplicitLeft = 8
              ExplicitTop = 8
              object lblCodigo: TLabel
                Left = 0
                Top = 0
                Width = 297
                Height = 13
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtCodigo: TEdit
                Left = 0
                Top = 17
                Width = 297
                Height = 21
                TabOrder = 0
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
                TabOrder = 1
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
                TabOrder = 4
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
          inherited DBGrid: TDBGrid
            Width = 88
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
