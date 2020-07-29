unit unitviewcode;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { Tcodfonte }

  Tcodfonte = class(TForm)
    copycode: TButton;
    AllCode: TMemo;
    pn1: TPanel;
    pn2: TPanel;
    procedure copycodeClick(Sender: TObject);
  private

  public

  end;

var
  codfonte: Tcodfonte;

implementation

{$R *.lfm}

{ Tcodfonte }

procedure Tcodfonte.copycodeClick(Sender: TObject);
begin
  AllCode.CopyToClipboard;
end;

end.

