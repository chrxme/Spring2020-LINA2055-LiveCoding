## external samples pt.2

# check out the tutorial below for free samples and instructions how to use them in Sonic Pi
# https://sonic-pi.mehackit.org/exercises/en/05-advanced-topics-1/04-external-samples.html

sampleLoop1 = "/Users/professorloveless/Documents/livecoding/class03/solenoid_samples_1/loop_1.wav"


use_bpm = 110

live_loop :one do
  cue :beat
  ####  sample ...... beat_stretch: x
  ####sleep x
  
  sample sampleLoop1, beat_stretch: 2
  sleep sample_duration sampleLoop1
  
end


live_loop :two do
  stop
  sync :beat
  sample :bd_fat
end