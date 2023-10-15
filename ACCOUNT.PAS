{Jason Mills
 12-22-95
 Description:  This program will input the user's name, account number,
               balance, purchase price, and credit limit}


Program Accounting;
   uses crt, printer;

   Procedure Accountcheck(var accntstr: string; var account: integer);
     var code: integer;
     Begin
        val(accntstr,account,code);
        while (code <> 0) or ((length(accntstr)) <> 4) do
           Begin
              write('Error...Please try re-entering number:  ');
              readln(accntstr);
              val(accntstr,account,code);
           end;
     End;

   Procedure Creditcheck(var limit: real);
      Begin
         If limit < 0 then
            Begin
               writeln('Please check the number entered as limit...');
               write('If limit is incorrect, please change: $');
               readln(limit);
            end;
      end;

   Procedure Balancecheck(var balance: real);
      Begin
         If balance < 0 then
            Begin
               writeln('Please check the number entered as balance...');
               write('If balance is incorrect, please change: $');
               readln(balance);
            end;
      end;

   Procedure Balancecheck2(var balance, limit: real);
      Begin
         If balance < limit then
            Begin
               writeln('It seems that your balance is greater than your limit...');
               write('If these numbers are incorrect, please change: $');
               readln(balance);
               readln(limit);
            end;
      end;

   Procedure Purchasecheck(var purchase: real);
      Begin
         If purchase < 0 then
            Begin
               writeln('Please check the number entered as purchase...');
               write('If purchase is incorrect, please change: $');
               readln(purchase);
            end;
      end;

   Procedure Input(var name, accntstr: string; var account: integer;
                             var limit, balance, purchase: real);
      Begin
         writeln('WELCOME TO OUR ONLINE CREDIT SYSTEM!');
         writeln;
         write('Please enter your name:  ');
         readln(name);
         If name <> '@' then
            Begin
               write('Please enter your account number: #');
               readln(accntstr);
               accountcheck(accntstr, account);
               write('Please enter previous balance: $');
               readln(balance);
               balancecheck(balance);
               write('Please enter credit limit: $');
               readln(limit);
               creditcheck(limit);
               balancecheck2(limit, balance);
               write('Please enter the price of your purchase: $');
               readln(purchase);
               purchasecheck(purchase);
            End;
      end;

   Procedure Output(var name, accntstr: string;
                    var newbal, balance, purchase, limit: real);
      Begin
         newbal:= balance - purchase;
         clrscr;
         writeln('NAME:  ', name);
         writeln('ACCOUNT #:  ', accntstr);
         writeln('CREDIT LIMIT: $', limit:2:2);
         writeln('PURCHASE: $', purchase:2:2);
         writeln('PREVIOUS BALANCE: $', balance:2:2);
         writeln('CURRENT BALANCE: $', newbal:2:2);
         writeln('THANK YOU FOR USING OUR ONLINE CREDIT SYSTEM.');

         writeln(lst, 'NAME:  ', name);
         writeln(lst, 'ACCOUNT #:  ', accntstr);
         writeln(lst, 'CREDIT LIMIT: $', limit:2:2);
         writeln(lst, 'PURCHASE: $', purchase:2:2);
         writeln(lst, 'PREVIOUS BALANCE: $', balance:2:2);
         writeln(lst, 'CURRENT BALANCE: $', newbal:2:2);
         writeln(lst, 'THANK YOU FOR USING OUR ONLINE CREDIT SYSTEM.');
      end;

   Procedure Main;
      var accntstr, name: string;
          account: integer;
          balance, newbal, purchase, limit: real;
         Begin
            Input(name, accntstr, account, limit, balance, purchase);
            If name <> '@' then
            Output(name, accntstr, newbal, balance, purchase, limit);

         End;

Begin {main}
  clrscr;
  main;
end.{main}