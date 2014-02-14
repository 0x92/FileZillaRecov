object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Filezilla Recovery'
  ClientHeight = 146
  ClientWidth = 432
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 80
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object XMLDocument: TXMLDocument
    Left = 8
    Top = 16
    DOMVendorDesc = 'MSXML'
  end
end
