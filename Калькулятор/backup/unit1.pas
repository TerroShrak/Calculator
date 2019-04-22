unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    procedure Button14Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Clickchisla(Sender: TObject);
    procedure Clickznaki(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,c:real;
  h,l:String;


implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.Clickchisla(Sender: TObject);
begin
 Edit1.Text:= Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a:string;
begin
 a:=Edit1.Text;
 if  a <> ' ' then
 Delete(a,length(a),1);
 Edit1.Text:=a;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
a:=strtofloat(Edit1.text);
a:=1/a;
Edit1.Text:=floattostr(a);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
a:=strtofloat(Edit1.text);
a:=sqrt(a);
Edit1.Text:=floattostr(a);
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
a:=strtofloat(Edit1.text);
a:=sqr(a);
Edit1.Text:=floattostr(a);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
Edit1.text:=Edit1.Text +  (Sender as TButton).Caption;  ;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
 b:=StrTofloat(Edit1.Text);
 Case h of
 '+' : c:=a+b;
 '-' : c:=a-b;
 '*' : c:=a*b;
 '/' : c:=a/b;
 end;
  Edit1.text:=floattostr(c);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
 a:=0;
 b:=0;
 c:=0;
 h:='';
 Edit1.Text:=' ';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.Clear;
end;
procedure TForm1.Clickznaki(Sender: TObject);
begin
a:=strtofloat(Edit1.text);
Edit1.Clear;
h:= Edit1.text + (Sender as TButton).Caption;
end;








end.

