# MessageDlgFMXDemo
MessageDlg lib usage demo for Delphi FireMonkey framework.

### Functions & Procedures

function AIMessageDlg(Question: String): Boolean;

procedure AIMessageDlgV2(Question: String; ExecuteProcedure: TProcedure);

procedure AIConfirmBox(Question: String; Action: TAction);

procedure AIMsgDlgYesNo(Question: String; YesAction: TAction; NoAction: TAction);
