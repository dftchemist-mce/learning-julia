function collatz_steps(n)
 n < 1 ? throw(DomainError(n)) : 
 n=trunc(Int,n)
 c = 0
 while n != 1
  n % 2 == 0 ?  n =0.5n   : n = 3n + 1
  c = c + 1
  if c>10000
   return(c)
  end
 end
 c
end
