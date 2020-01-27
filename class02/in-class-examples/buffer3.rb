## rings / working with lists | tick

### define our own list here

notes = [60, 62, 63, 67] #pitches

live_loop :one do
  stop
  play notes.choose
  sleep 0.25
end

live_loop :two do
  
  play (ring 60, 72, 82, rrand_i(60, 72)).tick
  sleep 1
  
end