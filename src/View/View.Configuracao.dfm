object frmConfiguracao: TfrmConfiguracao
  Left = 0
  Top = 0
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 23
    Height = 15
    Caption = 'Tipo'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 33
    Height = 15
    Caption = 'Banco'
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 55
    Height = 15
    Caption = 'UserName'
  end
  object Label4: TLabel
    Left = 24
    Top = 192
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object Label5: TLabel
    Left = 24
    Top = 248
    Width = 28
    Height = 15
    Caption = 'Porta'
  end
  object Label6: TLabel
    Left = 380
    Top = 24
    Width = 42
    Height = 15
    Caption = 'Schema'
  end
  object Label7: TLabel
    Left = 380
    Top = 80
    Width = 42
    Height = 15
    Caption = 'Locking'
  end
  object Label8: TLabel
    Left = 380
    Top = 136
    Width = 43
    Height = 15
    Caption = 'Servidor'
  end
  object edtTipo: TEdit
    Left = 24
    Top = 45
    Width = 225
    Height = 23
    TabOrder = 0
    Text = 'edtTipo'
  end
  object edtPath: TEdit
    Left = 24
    Top = 101
    Width = 329
    Height = 23
    TabOrder = 1
  end
  object edtUserName: TEdit
    Left = 24
    Top = 157
    Width = 225
    Height = 23
    TabOrder = 2
  end
  object edtPassword: TEdit
    Left = 24
    Top = 213
    Width = 225
    Height = 23
    TabOrder = 3
  end
  object edtPorta: TEdit
    Left = 24
    Top = 269
    Width = 225
    Height = 23
    TabOrder = 4
  end
  object edtSchema: TEdit
    Left = 380
    Top = 45
    Width = 216
    Height = 23
    TabOrder = 5
  end
  object edtLocking: TEdit
    Left = 380
    Top = 101
    Width = 216
    Height = 23
    TabOrder = 6
  end
  object edtServidor: TEdit
    Left = 380
    Top = 157
    Width = 216
    Height = 23
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 624
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 8
    ExplicitTop = 399
    ExplicitWidth = 620
    object Button1: TButton
      Left = 549
      Top = 0
      Width = 75
      Height = 41
      Align = alRight
      Caption = 'Sair'
      TabOrder = 0
      ExplicitLeft = 545
    end
    object Button2: TButton
      Left = 474
      Top = 0
      Width = 75
      Height = 41
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 470
    end
  end
end
