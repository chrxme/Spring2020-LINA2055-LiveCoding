use_bpm 100

live_loop :one do
  cue :beat
  sample :bd_fat
  sleep 0.5
end

live_loop :two do
  # rhythm
  sync :beat
  3.times do
    sample :elec_blip, rate: 2
    sleep 0.25
  end
end

live_loop :three do
# low bass
  sync :beat
  with_fx :slicer, phase: 0.25 do
    sample :bass_drop_c, amp: 0.5, rate: [1, -1, 0.5, -0.5, 0.25].choose
    sample :bass_drop_c, amp: 0.5, rate: [2, -1].choose
  end
end

live_loop :four do
  # singing
  notes = (scale :c4, :major, num_octaves: 2) #declaring list here
  sync :beat
  use_synth :prophet
  play notes.choose, release: 8
  play notes.choose, release: 8
  sleep 3.5
end
