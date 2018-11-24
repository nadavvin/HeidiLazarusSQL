unit SQLDBConnection;

{$mode delphi}

interface

uses
  Classes, SysUtils, db, sqldb, mysql57conn, mysql_structures;

type
  MsgIdString=UnicodeString;
  function mysql_init(Handle: PMYSQL): PMYSQL;


implementation

function mysql_init(Handle: PMYSQL): PMYSQL;
var
  m : MYSQL;
  pm : PMYSQL;
begin
     if Handle = nil then begin
         {m := MYSQL;}
         m.connector_fd:=TSQLConnector.Create(nil);
         pm := @m;
        Exit(pm);
     end;
     Handle.connector_fd:=TSQLConnector.Create(nil);
     Exit(Handle);
end;

end.

