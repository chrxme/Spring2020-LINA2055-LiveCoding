###synth and sample defaults

notes = (scale :a3, :whole_tone, num_octaves: 0) #declaring/defining list here

live_loop :one do
  with_synth_defaults amp: 0.4, attack: 1, release: 2 do
    use_synth :chiplead
    play notes.choose, pan: -1
    sleep 4
    use_synth :chipbass
    play notes.choose, pan: 1
    sleep 4
  end
  
end


live_loop :two do
  with_sample_defaults amp: rrand(0.3, 0.6), pan: rrand(1, -1) do #controls the parameters of all samples within the block
    sample :elec_beep
    sleep [0.5, 0.25].choose
    sample :elec_blip
    sleep [0.5, 0.25].choose
  end
end