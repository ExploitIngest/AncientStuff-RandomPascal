Program file_test;
uses crt;


Procedure real_test;
var realfile : text;
    num : real;
begin
 assign(realfile,'nums.dat');
 reset(realfile);
 while not eof(realfile) do
  begin
   readln(realfile,num);
   writeln(num:0:2);
  end;
end;

Procedure name_test;
var namefile : text;
    name : string;
begin
 assign(namefile,'names.dat');
 reset(namefile);
 while not eof(namefile) do
  begin
   readln(namefile,name);
   writeln(name);
  end;
end;

Procedure main;
begin
 clrscr;
 real_test;
 readln;
 clrscr;
 name_test;
 readln;
end;


begin
main;
end.