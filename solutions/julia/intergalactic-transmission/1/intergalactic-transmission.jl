function split_string_equal_parts(s::AbstractString, part_length::Int)
    parts = Vector{SubString{String}}()
    n = length(s)
    for i in 1:part_length:n
        push!(parts, SubString(s, i, min(i + part_length - 1, n)))
    end
    return parts
end

function get_transmit_sequence(message)
 binary_string = ""
 for word in message 
  integer_value = parse(UInt64, word, base=16)
  binary_string *= bitstring(integer_value)
 end
 pieces = split_string_equal_parts(binary_string,7)
 transmit_string=[]
 for i in eachindex(pieces)
  pieces[i] = isodd(count("1", pieces[i])) ? pieces[i]*"1" : pieces[i]*"0" 
  push!(transmit_string,string(parse(Int,pieces[i],base=2),base=16))
 end 
 return transmit_string

end

function decode_sequence(received_seq)

end
