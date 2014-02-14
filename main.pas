{ ##############################################################
  ## Modul:     FileZillaRecov
  ## Author:    0x92
  ## Release:   14.02.2014
  ## Contact:   0x92dev@gmail.com | https://github.com/0x92
  ## -----------------------------------------------------------
  ## Call:      GetServer;
  ##############################################################}
unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, msxmldom, XMLDoc, StdCtrls;

type
  TMainForm = class(TForm)
    XMLDocument: TXMLDocument;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure GetServer;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

type TServer = record
       Host    : string[15];
       Port    : string[6];
       User    : string[99];
       Password: string[99];
       Name    : string[99];
     end;

TServerList = array of TServer;

var
  MainForm: TMainForm;
  ServerList: TServerList; //Array
  Server: TServer;        //Record

implementation

{$R *.dfm}

function GetEnvVarValue(const VarName: string): string;
var
  BufSize: Integer; // buffer size required for value
begin
  // Get required buffer size (inc. terminal #0)
  BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
  if BufSize > 0 then
  begin
    // Read env var value into result string
    SetLength(Result, BufSize - 1);
    GetEnvironmentVariable(PChar(VarName),
      PChar(Result), BufSize);
  end
  else
    // No such environment variable
    Result := '';
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  GetServer;
end;

procedure TMainForm.GetServer;
var
  i, j, n: Integer;
  sPfad, sUser, sPwd, sName, sPort, sHost: String;
  TransNodes: IXMLNodeList;
  F: File of TServer;
begin
  sPfad := GetEnvVarValue('AppData') + '\FileZilla\sitemanager.xml';
  if FileExists(sPfad) then
  try
    XMLDocument.LoadFromFile(sPfad);
    //ShowMessage('ok');
  except
    ShowMessage('Loading error!');
    Exit;
  end;

  if Assigned(XMLDocument) then
  begin
    TransNodes  := XMLDocument.DocumentElement.ChildNodes['Servers'].ChildNodes;
    //ShowMessage(IntToStr(TransNodes.Count));

    //Set server array count
    SetLength(ServerList, TransNodes.Count);

    if TransNodes.Count >= 1 then
    begin
      for j := 0 to TransNodes.Count - 1 do
      begin
        ServerList[j].Host     :=     TransNodes[j].ChildNodes['Host'].Text;
        ServerList[j].Port     :=     TransNodes[j].ChildNodes['Port'].Text;
        ServerList[j].User     :=     TransNodes[j].ChildNodes['User'].Text;
        ServerList[j].Password :=     TransNodes[j].ChildNodes['Pass'].Text;
        ServerList[j].Name     :=     TransNodes[j].ChildNodes['Name'].Text;
      end;
    end;

    //ShowMessage(sHost + ' ' + sPort + ' ' + sUser + ' ' + sPwd + ' ' + sName);
     for n := 0 to Length(ServerList) -1 do
       ShowMessage('Host: ' + ServerList[n].Host    +#10#13+
       'Port: ' + ServerList[n].Port                +#10#13+
       'Username: ' +ServerList[n].User             +#10#13+
       'Password: ' + ServerList[n].Password        +#10#13+
       'Name: ' + ServerList[n].Name);
  end;
end;

end.
