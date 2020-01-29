
use_bpm 100 #bpm = beats per minute

notes = (scale :f1, :aeolian, num_octaves: 2) #declaring/defining list here


live_loop :one do
  cue :beat
  with_fx :echo do
    sample :bd_fat, amp: 0.1
    sleep 1
    sample :sn_dub, amp: 0.1 #amp = amplitude (think of it as volume)
    sleep 1
  end
end


live_loop :two do
  sync :beat #syncs to cue
  3.times do
    sample :elec_blip, amp: 0.1, pan: rrand(-1, 1)
    sleep [0.5, 0.25].choose # let's add choose here
  end
end

live_loop :three do
  ###sync :beat #syncs to cue
  sync :beat
  3.times do
    use_synth :pretty_bell #lets us pick a different synth to work with
    play notes.choose, release: 0.25#attack: 0.5, release: 4 #effects how long the synths rings
    sleep 0.25
  end
end


