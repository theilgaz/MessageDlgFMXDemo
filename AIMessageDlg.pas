unit AIMessageDlg;

{ ------------------------- }
{ MessageDlg Helper for FMX }
{ ------------------------- }
{ Created by Abdullah ILGAZ }
{ ------------------------- }

interface

uses
System.SysUtils, System.Classes,FMX.Objects,System.UITypes, FMX.Dialogs, System.Actions, FMX.ActnList;

function AIMessageDlg(Question: String): Boolean;
procedure AIMessageDlgV2(Question: String; ExecuteProcedure: TProcedure);
procedure AIConfirmBox(Question: String; Action: TAction);
procedure AIMsgDlgYesNo(Question: String; YesAction: TAction; NoAction: TAction);

implementation

function AIMessageDlg(Question: String): Boolean;
var
 Res: Boolean;
begin

 MessageDlg(Question, System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
   procedure(const AResult: TModalResult)
   begin
     case AResult of
       mrYes:
         Res := true;
       mrNo:
         Res := False;
     end;

   end);

 Result := Res;

end;

procedure AIMessageDlgV2(Question: String; ExecuteProcedure: TProcedure);
begin

 MessageDlg(Question, System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
   procedure(const AResult: TModalResult)
   begin
     case AResult of
       mrYes:
         ExecuteProcedure;
       mrNo:
         Exit;
     end;

   end);

end;

procedure AIConfirmBox(Question: String; Action: TAction);
begin

 MessageDlg(Question, System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
   procedure(const AResult: TModalResult)
   begin
     case AResult of
       mrYes:
         Action.Execute;
       mrNo:
         Exit;
     end;

   end);
end;

procedure AIMsgDlgYesNo(Question: String; YesAction: TAction; NoAction: TAction);
begin
 MessageDlg(Question, System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
   procedure(const AResult: TModalResult)
   begin
     case AResult of
       mrYes:
         YesAction.Execute;
       mrNo:
         NoAction.Execute;
     end;

   end);
end;
