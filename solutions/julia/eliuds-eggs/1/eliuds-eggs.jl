function eggcount(number)
 number < 0  && throw(DomainError(number)) 

 c=0
 while number > 0
  c = isodd(number) ? c+1 : c
  number = number >> 1
 end

 c 
end
