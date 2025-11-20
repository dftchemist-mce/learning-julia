const action_set=["wink","double blink","close your eyes","jump"]

function secret_handshake(code)

 rev = false
 code > 31 && return([])
 if code >= 16 
  code = code-16
  rev = true
 end

 i=1
 actions=[]

 while code > 0  
  if isodd(code) 
    push!(actions,action_set[i])
  end
  code = code >> 1 
  i = i+1
 end

 if rev
   actions=reverse(actions) 
 end

 actions
end
