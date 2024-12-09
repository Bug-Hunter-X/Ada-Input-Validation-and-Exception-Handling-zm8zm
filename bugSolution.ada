```ada
function Check_Range(Num : Integer) return Boolean is
begin
   return Num > 10;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;
procedure Main is
   Num_Str : String(1..20);
   Num : Integer;
   Result : Boolean;
   Input_Valid : Boolean := False;
begin
   Put_Line("Enter a number:");
   Get_Line(Num_Str);
   
   for I in Num_Str'Range loop
     if not Is_Digit(Num_Str(I)) then
       Put_Line("Invalid input. Please enter a valid integer.");
       return;
     end if;
   end loop; 

   Num := Integer'Value(Num_Str);
   Result := Check_Range(Num);
   if Result then
      Put_Line("Number is greater than 10");
   else
      Put_Line("Number is not greater than 10");
end if;
exception
   when others =>
      Put_Line("An unexpected error occurred.");
end Main;
```