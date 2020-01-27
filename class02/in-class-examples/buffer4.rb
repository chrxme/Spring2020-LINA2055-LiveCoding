## working with lists pt.2

live_loop :one do
  
  notes = (scale :f0, :aeolian, num_octaves: 1) #declaring list here
  use_synth :tb303
  play notes.choose, release: 0.3, cutoff: rrand(60, 120)
  sleep 0.25
end
