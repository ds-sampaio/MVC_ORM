object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 471
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 620
    object Label1: TLabel
      Left = 12
      Top = 11
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 12
      Top = 59
      Width = 23
      Height = 15
      Caption = 'Tipo'
    end
    object Label2: TLabel
      Left = 316
      Top = 59
      Width = 53
      Height = 15
      Caption = 'CPF/CNPJ'
    end
    object edtNome: TEdit
      Left = 12
      Top = 32
      Width = 557
      Height = 23
      TabOrder = 0
    end
    object edtTipo: TEdit
      Left = 12
      Top = 80
      Width = 253
      Height = 23
      TabOrder = 1
    end
    object edtCpfCnpj: TEdit
      Left = 316
      Top = 80
      Width = 253
      Height = 23
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 624
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Endere'#231'o'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 620
    object Panel3: TPanel
      Left = 0
      Top = 39
      Width = 624
      Height = 1
      Align = alBottom
      TabOrder = 0
      ExplicitWidth = 620
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 153
    Width = 624
    Height = 283
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Right = 10
    TabOrder = 2
    ExplicitWidth = 620
    ExplicitHeight = 282
    object Label4: TLabel
      Left = 12
      Top = 10
      Width = 62
      Height = 15
      Caption = 'Logradouro'
    end
    object Label5: TLabel
      Left = 12
      Top = 63
      Width = 31
      Height = 15
      Caption = 'Bairro'
    end
    object Label6: TLabel
      Left = 12
      Top = 112
      Width = 21
      Height = 15
      Caption = 'CEP'
    end
    object Label7: TLabel
      Left = 223
      Top = 112
      Width = 44
      Height = 15
      Caption = 'N'#250'mero'
    end
    object edtLogradouro: TEdit
      Left = 12
      Top = 31
      Width = 557
      Height = 23
      TabOrder = 0
    end
    object edtBairro: TEdit
      Left = 12
      Top = 83
      Width = 557
      Height = 23
      TabOrder = 1
    end
    object edtCep: TEdit
      Left = 12
      Top = 133
      Width = 194
      Height = 23
      TabOrder = 2
    end
    object edtNumero: TEdit
      Left = 223
      Top = 133
      Width = 194
      Height = 23
      TabOrder = 3
    end
    object btnAdicionar: TButton
      Left = 440
      Top = 133
      Width = 129
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 4
      OnClick = btnAdicionarClick
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 170
      Width = 604
      Height = 113
      Align = alBottom
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 436
    Width = 624
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Right = 10
    TabOrder = 3
    ExplicitTop = 435
    ExplicitWidth = 620
    object Button1: TButton
      Left = 539
      Top = 0
      Width = 75
      Height = 35
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 535
    end
  end
end
