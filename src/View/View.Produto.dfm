object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  Caption = 'Produto'
  ClientHeight = 440
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 12
    Top = 11
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 12
    Top = 75
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 164
    Top = 11
    Width = 30
    Height = 15
    Caption = 'Pre'#231'o'
  end
  object edtCodigo: TEdit
    Left = 12
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtDescricao: TEdit
    Left = 12
    Top = 96
    Width = 389
    Height = 23
    TabOrder = 1
  end
  object edtPreco: TEdit
    Left = 164
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 142
    Width = 620
    Height = 298
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 141
    ExplicitWidth = 616
    object Panel2: TPanel
      Left = 0
      Top = 257
      Width = 620
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 0
      ExplicitWidth = 616
      object Button1: TButton
        Left = 540
        Top = 5
        Width = 75
        Height = 31
        Align = alRight
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = Button1Click
        ExplicitLeft = 536
      end
      object Button2: TButton
        Left = 5
        Top = 5
        Width = 75
        Height = 31
        Align = alLeft
        Caption = 'Listar'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 465
        Top = 5
        Width = 75
        Height = 31
        Align = alRight
        Caption = 'Excluir'
        TabOrder = 2
        OnClick = Button3Click
        ExplicitLeft = 461
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 620
      Height = 257
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      ExplicitWidth = 616
      object DBGrid1: TDBGrid
        Left = 5
        Top = 5
        Width = 610
        Height = 247
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
end
