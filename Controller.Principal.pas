unit Controller.Principal;

interface

uses
  Vcl.StdCtrls, System.Classes;

function GeraCodigo(AFDQuery: String; ACodigo: TStrings): string;

implementation

uses
  System.SysUtils;

function GeraCodigo(AFDQuery: String; ACodigo: TStrings): string;
var
  I: Integer;
  LCodigo: TStringlist;
begin
  LCodigo := TStringlist.Create;
  try
    for i := 0 to ACodigo.Count -1 do
    begin
      with LCodigo do
      begin
        Add(AFDQuery + '.SQL.Add(' + QuotedStr(ACodigo[i]) + ');');
      end;
    end;
    Result := LCodigo.Text;
  finally
    LCodigo.Free;
  end;
end;

end.
