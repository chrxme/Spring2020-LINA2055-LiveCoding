#playing with form - try alternating between starting/stopping :partA and :partB
use_bpm 100 #bpm = beats per minute

notes = (chord :C, :m11, num_octaves: 2) #declaring/defining list here


live_loop :time do
  cue :beat
  sleep 1
end

live_loop :one do
  sync :beat
  sample :bd_fat
end


live_loop :two do
  sync :beat
  sleep 1
  sample :sn_generic
  
end

live_loop :three do
  sync :beat
  sleep 0.5
  sample :drum_cymbal_closed
end

live_loop :partA do
  sync :beat
  use_synth :tri
  with_synth_defaults release: 8 do
    play notes.choose
    ## modify this - add another voice, change the value of sleep, etc.
    sleep 8
  end
end

live_loop :partB do
  sync :beat
  ### Add some code here
end



