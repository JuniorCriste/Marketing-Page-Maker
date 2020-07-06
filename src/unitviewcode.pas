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
  private

  public

  end;

var
  codfonte: Tcodfonte;

implementation

{$R *.lfm}

end.

