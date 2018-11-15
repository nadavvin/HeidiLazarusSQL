unit MissingAndConversions;

{$mode delphi}

interface

uses
    Classes, SysUtils, SynCompletion;

type
    TSynCompletionProposalInsertList = class
        procedure Add(str: String);
    end;

    TCustomSynEdit = class
        procedure GetHighlighterAttriAtRowColEx();
    end;

    TSynCompletionProposalForm = class
        function CurrentEditor() : TCustomSynEdit;
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

function TSynCompletionProposalForm.CurrentEditor() : TCustomSynEdit;
begin
  Result:=TCustomSynEdit.Create;
end;

end.

