unit MissingAndConversions;

{$mode delphi}

interface

uses
    Classes, SysUtils, SynCompletion, ComCtrls, EditBtn, SynEdit;

type
    TSynCompletionProposalInsertList = class
        procedure Add(str: String);
    end;
    TTabSet = TTabControl;
    TButtonedEdit = TEditButton;

    TUnicodeStrings = TStrings;
    PInt = ^Int64;

    TCustomSynEdit = class(TSynEdit)
        public
           PrevWordPos: Int64;
        procedure GetHighlighterAttriAtRowColEx();
    end;

    TSynCompletionProposalForm = class
        var
           Enabled: Boolean;
        {function CurrentEditor() : TCustomSynEdit;}
    end;

    SynCompletionType = class

    end;

  TSynCompletionProposal = class(TSynCompletion)
    var
       InsertList: TSynCompletionProposalInsertList;
       Form: TSynCompletionProposalForm;
    procedure AddItem(str: String; str2: String);
    procedure ClearList();
  end;

   TApplicationEvents = class

   end;

   function GetSystemTime(SystemTime: TSystemTime): TDateTime;
   function UTF8ToString(str: AnsiString): String;

implementation

procedure TSynCompletionProposalInsertList.Add(str: String);
begin
end;

procedure TSynCompletionProposal.AddItem(str: String; str2: String);
begin
end;

procedure TSynCompletionProposal.ClearList();
begin
end;

procedure TCustomSynEdit.GetHighlighterAttriAtRowColEx();
begin
end;

{function TSynCompletionProposalForm.CurrentEditor() : TCustomSynEdit;
begin
  Result:=TCustomSynEdit.Create();
end;}

function GetSystemTime(SystemTime: TSystemTime): TDateTime;
begin
  Result := Now();
end;

function UTF8ToString(str: AnsiString): String;
begin
  Result := str;
end;

end.

