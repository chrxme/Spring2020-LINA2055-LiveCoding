#Process Music Example #2 - ring

use_bpm 120


#Pattern of 4 part 1
live_loop :process2a do
  with_synth :tri do
    play (ring 48, 50, 57, 50).tick(:line1), #Look at 9.4 in the Tutorial for more information - Naming Ticks
      attack: 2,
      release: 2,
      pan: -1
    sleep 4
  end
end

#Pattern of 3 part 1
live_loop :process2b do
  with_synth :square do
    sleep 2
    play (ring 48 + 12, 50 + 12, 57 + 12).tick(:line2),
      attack: 2,
      release: 2,
      pan: 1
    sleep 2
  end
end

#2 Against 3
live_loop :process2c do
  sample (ring :elec_blip, :elec_twang).tick(:poly1)
  sleep 0.5
end

#3
live_loop :process2d do
  sample :elec_plip,
    pan: (ring -1, 1).tick(:moveit)
  sleep 0.75
end
