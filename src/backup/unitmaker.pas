unit unitmaker;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, Menus, StdCtrls, Buttons, UnitMakerMod;

type

  { TMaker }

  TMaker = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ncurso: TEdit;
    valor: TEdit;
    Edit6: TEdit;
    garantia: TEdit;
    codfull: TMemo;
    p1: TImage;
    p2: TImage;
    p3: TImage;
    Qmod: TEdit;
    linkvenda: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    descricao: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    topmenu: TMainMenu;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private

  public

  end;

var
  Maker: TMaker;

implementation

{$R *.lfm}

{ TMaker }

procedure TMaker.MenuItem1Click(Sender: TObject);
begin

end;

procedure TMaker.MenuItem16Click(Sender: TObject);
var
  full: TStringList;
begin
{
  full := TStringList.Create;
  try
  full.Add('<a href="' + container1.Text + '" target="_blank"> Visitar Site </a>');

  full.SaveToFile('previsualizacao.htm');
  finally
    full.Free;
  end;
  }
  end;

procedure TMaker.Button1Click(Sender: TObject);
begin
  MakerMod.show;
end;

procedure TMaker.Button3Click(Sender: TObject);
var
  full: TStringList;
begin
 codfull.Clear;
 try
 {  TOPO  }
  codfull.Lines.Add('<html> <meta charset="UTF-8">');
  codfull.Lines.Add('<head>');  
  codfull.Lines.Add('<title>' + ncurso.Text + '</title>');

  codfull.Lines.Add('</head>');
  {  CORPO  }
  codfull.Lines.Add('<titulo> ' + ncurso.Text + ' </titulo>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<video> ' + 'video' + ' </video>');   
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<valor>Apenas por R$' + valor.Text + '! </valor>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<botao> ' + linkvenda.Text + ' </botao>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<descricao> '+ descricao.Text +' </descricao>'); 
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<modulos> ' + MakerMod.codMods.Text + ' </modulos>'); 
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<botao> ' + linkvenda.Text + ' </botao>');    
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<garantia> Garantia de ' + garantia.Text + '! </garantia>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add(' ');
  codfull.Lines.Add(' ');

  {  ESTILO  }


  {  EXPORTAÇÃO  }
 full := TStringList.Create;
 full.Add(codfull.Text);
 full.SaveToFile('previsualizacao.htm');
 finally
   full.Free;
 end;
end;

procedure TMaker.FormShow(Sender: TObject);
begin
end;


end.

