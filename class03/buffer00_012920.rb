
use_bpm 100 #bpm = beats per minute

live_loop :one do
  cue :beat
  with_fx :echo do
    sample :bd_fat
    sleep 1
    sample :sn_dub, amp: 0.5 #amp = amplitude (think of it as volume)
    sleep 1
  end
end


live_loop :two do
  sync :beat #syncs to cue
  3.times do
    sample :elec_blip, pan: rrand(-1, 1)
    sleep [0.5, 0.25].choose # let's add choose here
  end
end

