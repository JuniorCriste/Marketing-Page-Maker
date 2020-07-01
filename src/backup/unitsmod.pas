unit unitsMod;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TsMod }

  TsMod = class(TForm)
    wallpaper: TImage;
    prev1: TButton;
    othem: TButton;
    prev2: TButton;
    prev3: TButton;
    selec1: TButton;
    prevm1: TImage;
    prevm2: TImage;
    prevm3: TImage;
    selec2: TButton;
    selec3: TButton;
    procedure selec1Click(Sender: TObject);
  private

  public

  end;

var
  sMod: TsMod;

implementation

{$R *.lfm}

{ TsMod }

procedure TsMod.selec1Click(Sender: TObject);
begin
  Maker.show;
end;

end.

