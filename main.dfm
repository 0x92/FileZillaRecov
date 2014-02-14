object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FileZillaRecov'
  ClientHeight = 220
  ClientWidth = 526
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = -88
    Top = 184
    Width = 761
    Height = 2
  end
  object Button1: TButton
    Left = 8
    Top = 192
    Width = 510
    Height = 25
    Caption = 'Recover'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListView: TListView
    Left = 8
    Top = 8
    Width = 510
    Height = 170
    Columns = <
      item
        AutoSize = True
        Caption = 'Host'
      end
      item
        AutoSize = True
        Caption = 'Port'
      end
      item
        AutoSize = True
        Caption = 'User'
      end
      item
        AutoSize = True
        Caption = 'Password'
      end
      item
        AutoSize = True
        Caption = 'Name'
      end>
    DoubleBuffered = True
    GridLines = True
    ParentDoubleBuffered = False
    TabOrder = 1
    ViewStyle = vsReport
  end
  object XMLDocument: TXMLDocument
    Left = 480
    Top = 8
    DOMVendorDesc = 'MSXML'
  end
end
