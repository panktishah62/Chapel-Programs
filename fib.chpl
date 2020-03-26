iter fibonacci(n: int) 
{
  var (now, new) = (0, 1);
  for 1..n 
  {
    yield now;
    (now, new) = (new, now + new);
  }
}

write("Fibonacci series: ");

for num in fibonacci(25) do
  write(num, ", ");
