unit Vcl.FormsFix;

interface

implementation

uses
  {System.}SysUtils, {Winapi.Windows, Vcl.}Forms, {Vcl.}Graphics, {System.}UITypes, apphelpers
  //
  {, DDetours}
  //
  ;

var
  trampoline_GetMetricSettings: Procedure = nil;

type
  TFontHelper = class helper for TFont
  public
    function Equals(const AOther: TFont): Boolean;
  end;

function TFontHelper.Equals(const AOther: TFont): Boolean;
begin
  Result := (AOther.PixelsPerInch = self.PixelsPerInch)
    and (AOther.Charset = self.Charset)
    and (AOther.Color = self.Color)
    and (AOther.Height = self.Height)
    and (AOther.Name = self.Name)
    and (AOther.Orientation = self.Orientation)
    and (AOther.Pitch = self.Pitch)
    and (AOther.Size = self.Size)
    and (AOther.Style = self.Style)
    and (AOther.Quality = self.Quality);
end;

type
  TScreenHelper =  class Helper for TScreen
  public
    function getPtr_GetMetricSettings:Pointer;
  end;

function TScreenHelper.getPtr_GetMetricSettings:Pointer;
begin
  {result:=@TScreen.GetMetricSettings;}
  Exit(nil);
end;

procedure HookedGetMetricSettings(const Self);

  {procedure CheckedFontChange(const ACurrFont: TFont; const ANewFont: tagLOGFONTW);
  var
    TmpFont: TFont;
  begin
    TmpFont := TFont.Create;
    try
      TmpFont.Assign(ACurrFont);
      TmpFont.Handle := CreateFontIndirect(ANewFont);
      if not TmpFont.Equals(ACurrFont) then
      begin
        ACurrFont.Handle := CreateFontIndirect(ANewFont);
      end;
    finally
      FreeAndNil(TmpFont);
    end;
  end;}

var
  LSize: Cardinal;
  {LogFont: TLogFont;
  NonClientMetrics: TNonClientMetrics;}
  SaveShowHint: Boolean;

begin


end;

{initialization
  @trampoline_GetMetricSettings := InterceptCreate(Screen.getPtr_GetMetricSettings, @HookedGetMetricSettings);

finalization
  InterceptRemove(@trampoline_GetMetricSettings);}

end.
