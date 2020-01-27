#Ambient Music #1 - rrand, rrand_i, using variables
#For general information about using rrand and rrand_i, go to Tutorial 4 and/or Appendix 9
#For more about sample slicing, go to Appendix 12

use_bpm 70

live_loop :ambient1 do
  play [:f5, :e5, :f4, :e4].choose,
    attack: 4,
    release: 2,
    pan: rrand(-1, 1)
  sleep [4, 6, 8].choose
end

live_loop :ambient2 do
  
  x = rrand_i(2, 8)
  print x #we can use print to see what the variable represents
  y = rrand(-1, 1)
  print y
  
  sample :ambi_lunar_land,
    amp: 0.5,
    rate: y,
    attack: x/4,
    release: x/4
  sleep x
end


live_loop :ambient3 do
  
  x = rrand_i(2, 8)
  y = rrand(-1, 1)
  z = rrand(0, 0.5)
  w = z + 0.25
  
  sample :loop_amen,
    start: z,
    finish: w,
    amp: [0.5, 0.25].choose,
    rate: y,
    attack: x/4,
    release: x/4
  sleep x
end


live_loop :ambient4 do
  
  x = rrand_i(4, 16)
  y = rrand(-1, 1)
  z = rrand(0, 0.5)
  w = z + 0.33
  
  with_fx [:bitcrusher, :wobble].choose do #chooses between effects
    sample [:ambi_glass_rub, :ambi_glass_hum].choose, #chooses between samples
      start: z,
      finish: w,
      amp: [0.5, 0.25].choose,
      rate: y,
      attack: x/4,
      release: x/4
    sleep x
  end
end
