unit unitwallpaper;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { Twallpaper }

  Twallpaper = class(TForm)
    w1: TImage;
    w10: TImage;
    w8: TImage;
    w9: TImage;
    w13: TImage;
    w14: TImage;
    w2: TImage;
    w3: TImage;
    w5: TImage;
    w4: TImage;
    w6: TImage;
    w7: TImage;
    w11: TImage;
    w12: TImage;
    procedure w10Click(Sender: TObject);
    procedure w11Click(Sender: TObject);
    procedure w12Click(Sender: TObject);
    procedure w13Click(Sender: TObject);
    procedure w14Click(Sender: TObject);
    procedure w1Click(Sender: TObject);
    procedure w2Click(Sender: TObject);
    procedure w3Click(Sender: TObject);
    procedure w4Click(Sender: TObject);
    procedure w5Click(Sender: TObject);
    procedure w6Click(Sender: TObject);
    procedure w7Click(Sender: TObject);
    procedure w8Click(Sender: TObject);
    procedure w9Click(Sender: TObject);
  private

  public

  end;

var
  wallpaper: Twallpaper;
  NameIMG: string;

implementation
uses unitmaker;

{$R *.lfm}

{ Twallpaper }

procedure Twallpaper.w2Click(Sender: TObject);
begin
  NameIMG:= 'fundovid';   
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w3Click(Sender: TObject);
begin
  NameIMG:= 'fundotrv';    
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w4Click(Sender: TObject);
begin
  NameIMG:= 'fundomkt';      
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w5Click(Sender: TObject);
begin
  NameIMG:= 'fundosc1'; 
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w6Click(Sender: TObject);
begin
  NameIMG:= 'fundosc2';      
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w7Click(Sender: TObject);
begin
  NameIMG:= 'fundopop';    
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w8Click(Sender: TObject);
begin
  NameIMG:= 'fundocod';     
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w9Click(Sender: TObject);
begin
  NameIMG:= 'fundoflw';  
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w1Click(Sender: TObject);
begin
  NameIMG:= 'fundovnt';
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w10Click(Sender: TObject);
begin
  NameIMG:= 'fundocam'; 
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w11Click(Sender: TObject);
begin
  NameIMG:= 'fundohap';       
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w12Click(Sender: TObject);
begin
  NameIMG:= 'fundogau';       
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w13Click(Sender: TObject);
begin
  NameIMG:= 'fundobck';      
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

procedure Twallpaper.w14Click(Sender: TObject);
begin
  NameIMG:= 'fundowht';      
  Maker.visible:= true;
  wallpaper.Visible:=false;
end;

end.

