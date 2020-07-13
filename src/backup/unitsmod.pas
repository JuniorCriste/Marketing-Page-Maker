unit unitsMod;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, UnitMaker;

type

  { TsMod }

  TsMod = class(TForm)
    wallpaper: TImage;
    tuto: TButton;
    donate: TButton;
    createNew: TButton;
    prevm1: TImage;
    prevm2: TImage;
    prevm3: TImage;
    about: TButton;
    procedure prev1Click(Sender: TObject);
    procedure donateClick(Sender: TObject);
    procedure createNewClick(Sender: TObject);
    procedure aboutClick(Sender: TObject);
  private

  public

  end;

var
  sMod: TsMod;

implementation

{$R *.lfm}

{ TsMod }

procedure TsMod.createNewClick(Sender: TObject);
begin
  Maker.show;
end;

procedure TsMod.aboutClick(Sender: TObject);
begin
  OpenURL('https://informaticode.store/.../MPM');
end;

procedure TsMod.prev1Click(Sender: TObject);
begin

end;

procedure TsMod.donateClick(Sender: TObject);
begin
  OpenURL('https://www.informaticode.com.br/p/doacoes.html');
end;

end.

