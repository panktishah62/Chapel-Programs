proc fact(x: int) : int
{
  if x < 0 then
    halt("Oops!");

  return if x == 0 then 1 else x * fact(x-1);
}

writeln("5! is ", fact(5));
