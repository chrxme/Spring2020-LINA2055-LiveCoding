## play (numbers vs note names), synths (use_synth vs with_synth)
## sleep, use_bpm
## samples (built-in) || sleep sample_duration vs numbers
## parameters - amp, pan, attack, release || rate
## remember - there are more parameters to explore! just poke around to see what's available

use_bpm 120


use_synth :prophet
play 60, amp: 0.1, pan: -1 # midi range 0-127
sleep 0.5 #sleep (rest) for one beat
use_synth :dull_bell
play 72, pan: 1
sleep 0.5


##| use_synth :prophet
##| play 60, attack: 2, release: 4
##| sleep 4

live_loop :one do
  stop #stops the live loop
  x = 2
  sample :loop_amen, rate: x
  sleep (sample_duration :loop_amen)/x
end

##| with_synth :prophet do
##|   play :C4
##|   sleep 1
##| end

## how to comment a selected amount of text: cmd + (?/)
  
  