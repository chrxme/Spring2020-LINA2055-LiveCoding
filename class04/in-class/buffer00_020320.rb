## Try out different tempos with this beat
use_bpm 100 #bpm = beats per minute

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

