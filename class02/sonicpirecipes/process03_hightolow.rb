#Process Music #3 - high to low, low to high, rate

notez = [45, 49, 52, 56, 57, 59, 61, 64, 68, 69, 71, 73, 76] # 0-12

#low to high
live_loop :process3a do
  use_synth :pluck
  with_fx :bitcrusher do
    4.times do
      play notez.choose
      sleep [0.25, 0.5].choose
    end
    4.times do
      play notez.choose + 12
      sleep [0.25, 0.5].choose
    end
    4.times do
      play notez.choose + 24
      sleep [0.25, 0.5].choose
    end
  end
end

#high to low
live_loop :process3b do
  use_synth :piano
  with_fx :distortion do
    4.times do
      play notez.choose
      sleep [0.25, 0.5, 0.75].choose
    end
    4.times do
      play notez.choose - 12
      sleep [0.25, 0.5, 0.75].choose
    end
    4.times do
      play notez.choose - 24
      sleep [0.25, 0.5, 0.75].choose
    end
  end
end

#low to high to low
live_loop :process3c do
  4.times do
    sample :ambi_haunted_hum,
      rate: (ring 0.5, 1, 2, 1).tick(:wow),
      amp: 0.5,
      attack: 1,
      release: 1
    sleep [2, 4, 8].choose
  end
end
