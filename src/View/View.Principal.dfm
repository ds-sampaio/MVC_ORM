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
      Caption = 'Produtos'
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
      Caption = 'Clientes'
      TabOrder = 2
      OnClick = Button3Click
      ExplicitLeft = 424
    end
  end
end
