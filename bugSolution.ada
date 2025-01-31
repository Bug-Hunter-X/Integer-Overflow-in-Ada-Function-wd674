```ada
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

function Add_One (X : Integer) return Integer is
begin
   return X + 1;
exception
   when Constraint_Error =>
      Put_Line("Integer overflow occurred!");
      return Integer'Last; -- Or handle the error appropriately
end Add_One;

procedure Main is
   Result : Integer;
begin
   Result := Add_One(Integer'Last); -- Try with the maximum Integer value
   Put_Line("Result: " & Integer'Image(Result));
exception
   when others =>
      Put_Line("An unexpected error occurred.");
end Main;
```