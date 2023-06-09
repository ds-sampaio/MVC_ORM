object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 624
    object Button1: TButton
      Left = 528
      Top = 0
      Width = 100
      Height = 41
      Align = alRight
      Caption = 'Configura'#231#227'o'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 524
    end
    object Button2: TButton
      Left = 428
      Top = 0
      Width = 100
      Height = 41
      Align = alRight
      Caption = '+ Produtos'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 424
    end
    object Button3: TButton
      Left = 328
      Top = 0
      Width = 100
      Height = 41
      Align = alRight
      Caption = '+ Cliente'
      TabOrder = 2
      OnClick = Button3Click
      ExplicitLeft = 324
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 360
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 624
    ExplicitHeight = 359
    object TPanel
      Left = 0
      Top = 0
      Width = 628
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 624
      object Label1: TLabel
        Left = 16
        Top = 5
        Width = 65
        Height = 15
        Caption = 'Cod. Cliente'
      end
      object Label3: TLabel
        Left = 16
        Top = 53
        Width = 71
        Height = 15
        Caption = 'Cod. Produto'
      end
      object Label2: TLabel
        Left = 160
        Top = 5
        Width = 73
        Height = 15
        Caption = 'Nome Cliente'
      end
      object Label4: TLabel
        Left = 160
        Top = 53
        Width = 62
        Height = 15
        Caption = 'Quantidade'
      end
      object Label5: TLabel
        Left = 299
        Top = 53
        Width = 71
        Height = 15
        Caption = 'Valor Unitario'
      end
      object edtCodCliente: TEdit
        Left = 16
        Top = 26
        Width = 121
        Height = 23
        TabOrder = 0
        OnChange = edtCodClienteChange
      end
      object edtCodProduto: TEdit
        Left = 16
        Top = 74
        Width = 121
        Height = 23
        TabOrder = 1
        OnChange = edtCodProdutoChange
      end
      object edtNomeCliente: TEdit
        Left = 160
        Top = 26
        Width = 425
        Height = 23
        TabOrder = 4
      end
      object edtQuantidade: TEdit
        Left = 160
        Top = 74
        Width = 121
        Height = 23
        TabOrder = 2
        Text = '1'
        OnChange = edtQuantidadeChange
      end
      object edtValorUnitario: TEdit
        Left = 299
        Top = 74
        Width = 121
        Height = 23
        TabOrder = 5
        Text = '0.00'
      end
      object Button4: TButton
        Left = 471
        Top = 74
        Width = 114
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 3
        OnClick = Button4Click
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 113
      Width = 628
      Height = 247
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 5
      Padding.Right = 10
      Padding.Bottom = 5
      TabOrder = 1
      ExplicitWidth = 624
      ExplicitHeight = 246
      object DBGrid1: TDBGrid
        Left = 10
        Top = 5
        Width = 608
        Height = 202
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 10
        Top = 207
        Width = 608
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 206
        ExplicitWidth = 604
        object Panel8: TPanel
          Left = 423
          Top = 0
          Width = 185
          Height = 35
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 419
          object Label6: TLabel
            Left = 33
            Top = 10
            Width = 27
            Height = 15
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtTotal: TEdit
            Left = 63
            Top = 6
            Width = 121
            Height = 23
            TabOrder = 0
            Text = '0.00'
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 401
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Right = 10
    TabOrder = 2
    ExplicitTop = 400
    ExplicitWidth = 624
    object Panel5: TPanel
      Left = 461
      Top = 0
      Width = 157
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel5'
      Padding.Left = 5
      TabOrder = 0
      ExplicitLeft = 457
      object Button5: TButton
        Left = 5
        Top = 0
        Width = 152
        Height = 41
        Align = alClient
        Caption = 'Finalizar Pedido'
        TabOrder = 0
        OnClick = Button5Click
      end
    end
    object Panel6: TPanel
      Left = 304
      Top = 0
      Width = 157
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel5'
      Padding.Left = 5
      TabOrder = 1
      ExplicitLeft = 300
      object Button6: TButton
        Left = 5
        Top = 0
        Width = 152
        Height = 41
        Align = alClient
        Caption = 'Cancelar Pedido'
        TabOrder = 0
      end
    end
  end
end
