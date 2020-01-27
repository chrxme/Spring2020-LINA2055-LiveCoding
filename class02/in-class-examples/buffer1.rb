## __.times do, loop, live_loop
## cue and syncing threads


live_loop :bassdrum do
  cue :main
  sample :bd_fat
  sleep 1
  sample :elec_blip
  sleep 1
end


live_loop :cymbal do
  sync :main
  sample :drum_cymbal_closed
  sleep 0.72016
end