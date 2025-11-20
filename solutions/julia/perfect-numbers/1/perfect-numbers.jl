function get_factors(n)
 factors = [1]
 for i in 2:trunc(Int,sqrt(n))
  if n % i == 0 
    push!(factors,i)
    if n/i != i 
      push!(factors,n/i)
    end
  end
 end
 return(factors)
end

function isperfect(n)
 n > 1 && sum(get_factors(n)) == n
end

function isabundant(n)
 n > 0 && sum(get_factors(n)) > n
end

function isdeficient(n)
 n > 1 && sum(get_factors(n)) < n
end
