#Process Music Example #1 - Slow Fast Slow

use_bpm 140

live_loop :somegroovething do
  sample :bd_fat,
    amp: 4
  sleep 1
  sample :sn_zome,
    amp: 1
  sleep 1
end

#Slow Fast Slow Using Sleeps
#4, 3, 2, 1, 2, 3, 4
live_loop :process1 do
  4.times do
    sample :elec_pop
    sleep 1
  end
  4.times do
    sample :elec_pop
    sleep 0.75
  end
  4.times do
    sample :elec_pop
    sleep 0.5
  end
  8.times do
    sample :elec_pop
    sleep 0.25
  end
  4.times do
    sample :elec_pop
    sleep 0.5
  end
  4.times do
    sample :elec_pop
    sleep 0.75
  end
end
