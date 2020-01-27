## reverb, gverb, echo, slicer


use_bpm 120

live_loop :one do
  
  stop
  
  with_fx :echo do
    notes = (scale :f0, :aeolian, num_octaves: 1) #declaring list here
    use_synth :tb303
    play notes.choose, release: 0.1, cutoff: rrand(60, 120)
    sleep 0.25
  end
end


live_loop :two do
  
  with_fx :slicer, phase: rrand(0.1, 0.3) do
    notes = (scale :f0, :aeolian, num_octaves: 1) #declaring list here
    use_synth :tb303
    play notes.choose, release: 8
    sleep 8
  end
end