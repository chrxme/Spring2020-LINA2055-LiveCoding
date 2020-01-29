#### rings

live_loop :one do
  
  ## If you are working with one more than one ring in a live_loop,
  ## you'll need to give each ring it's own unique name.
  
  use_synth (ring :piano, :pretty_bell).tick(:a)
  play (ring 60, 62, 63, 62).tick(:b)
  sleep (ring 1, 0.5).tick(:c)
end