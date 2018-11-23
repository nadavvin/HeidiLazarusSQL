unit gnugettext2;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
	MsgIdString=UnicodeString;
	TranslatedUnicodeString=UnicodeString;
	function _(const szMsgId: MsgIdString): TranslatedUnicodeString;
	procedure TranslateComponent(AnObject: TComponent{; const TextDomain:DomainString=''});

implementation
	function _(const szMsgId: MsgIdString): TranslatedUnicodeString;
	begin
	  Result:=szMsgId;
	end;

	procedure TranslateComponent(AnObject: TComponent{; const TextDomain:DomainString=''});
	begin

	end;
end.

