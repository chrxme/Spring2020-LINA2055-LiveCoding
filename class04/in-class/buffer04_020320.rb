live_loop :conductorLoop do
  cue :cue
  sleep 0.5
end

live_loop :one do##, sync: :cue do
  sync :cue
  sample :elec_blip
  sleep [0.5, 0.25, 0.75].choose
end