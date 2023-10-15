Program name;
uses crt;

procedure input(var name : string);
begin
 gotoxy(1,1);
 write('Please enter your first and last name: ');
 readln(name);
end;

procedure extension_cutter(var name, newname : string);
var x : integer;
begin
 X := 0;
 newname := name;
 X := POS(',',newname);
 if x <> 0 then
 begin
  DELETE(newname,X,length(name));
 end;
end;

procedure space_counter(var newname: string; var counter : integer);
var i,x: integer;
    tempname : string;
begin
counter := 0;
tempname := newname;
x := 0;
for i := 1 to length(tempname) do
 begin
  x := POS(' ',tempname);
  if x <> 0 then
  begin
   DELETE(tempname,1,x);
   counter := counter + 1;
  end;
  x := 0;
 end;
end;

procedure pname(var newname, first, second : string);
var x : integer;
begin
 X := POS(' ',newname);
 first := COPY(newname,1,x-1);
 second := COPY(newname,x+1,length(newname));
end;

procedure twonameno(var newname : string);
var x,y : integer;
    tempname, first, second : string;
begin

if COPY(newname,1,4) = 'Miss' then
 begin
  DELETE(newname,1,5);
 end;

 begin
X := POS(' ',newname);
tempname := COPY(newname,1,X);
Y := POS(' ',tempname);
DELETE(newname,X,Y);
pname(newname, first, second);
 end;
end;

procedure twoname(var newname : string);
var x, code : integer;
    character : string;
begin
X := 0;
X := POS('.',newname);
if x <> 0 then
 begin
  X := POS(' ',newname);
  character := COPY(newname,X,1);
  val(character,x,code);
  if code <> 0 then
   begin
    DELETE(newname,1,X);
   end;

  twonameno(newname);
 end;
end;

procedure threename(var newname : string);
var x : integer;
begin
X := POS(' ',newname);
DELETE(newname,1,X);
twoname(newname);
end;

procedure name_type(var newname, first, second : string; var counter : integer);
begin
 case counter of
 1 : pname(newname, first, second);
 2 : twoname(newname);
 3 : threename(newname);
end;
end;

procedure output(name, first, second : string);
begin
 clrscr;
 gotoxy(1,1);
 write('OLD NAME: ',name);
 gotoxy(1,3);
 write('NEW NAME: ',second,', ',first);
end;

procedure main;
var name, newname, first, second : string;
    counter : integer;
begin
 clrscr;
 textcolor(white);
 textbackground(black);

 input(name);
 extension_cutter(name,newname);
 space_counter(newname, counter);
 name_type(newname, first, second, counter);
 output(name, first, second);
 readln;
end;

begin
 main;
end.

