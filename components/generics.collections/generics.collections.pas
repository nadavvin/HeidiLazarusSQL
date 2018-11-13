{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit Generics.Collections;

{$warn 5023 off : no warning about unused units}
interface

uses
  Generics.Strings, Generics.MemoryExpanders, Generics.Helpers, 
  Generics.Hashes, Generics.Defaults, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('Generics.Collections', @Register);
end.
