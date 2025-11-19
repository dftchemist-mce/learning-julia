function time_to_mix_juice(juice)
 juice == "Pure Strawberry Joy" && return(0.5)
 (juice == "Energizer" || juice == "Green Garden") && return(1.5)
 juice == "Tropical Island" && return(3.0)
 juice == "All or Nothing" && return(5.0)
 2.5
end

function wedges_from_lime(size)
 size == "small" && return(6) 
 size == "medium" && return(8) 
 size == "large" && return(10) 

end

function limes_to_cut(needed, limes)
 tally=0
 count = 0
 for l in limes
  if tally < needed
   tally = tally + wedges_from_lime(l)  
   count = count + 1
  end
  tally >= needed && return(count)
 end 
 count  
end

function order_times(orders)
 time_to_mix_juice.(orders)

end

function remaining_orders(time_left, orders)
 for ot in order_times.(orders)
  time_left <= 0  && return(orders)
  time_left = time_left - ot
  popfirst!(orders)
 end
 return(orders)
 
end
