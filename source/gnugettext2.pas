unit gnugettext2;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
	MsgIdString=UnicodeString;
	TranslatedUnicodeString=UnicodeString;
	function _(const szMsgId: MsgIdString): TranslatedUnicodeString;

implementation
	function _(const szMsgId: MsgIdString): TranslatedUnicodeString;
	begin
	  Result:=szMsgId;
	end;
end.

