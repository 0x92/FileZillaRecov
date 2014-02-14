object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FileZillaRecov'
  ClientHeight = 50
  ClientWidth = 313
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
    Left = 8
    Top = 8
    Width = 287
    Height = 25
    Caption = 'Recover'
    TabOrder = 0
    OnClick = Button1Click
  end
  object XMLDocument: TXMLDocument
    Left = 256
    Top = 56
    DOMVendorDesc = 'MSXML'
  end
end
