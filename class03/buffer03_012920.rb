## external samples pt.1

# check out the tutorial below for free samples and instructions how to use them in Sonic Pi
# https://sonic-pi.mehackit.org/exercises/en/05-advanced-topics-1/04-external-samples.html

externalsam1 = "/Users/professorloveless/Documents/livecoding/class03/solenoid_samples_1/hit_1.wav"
externalsam2 = "/Users/professorloveless/Documents/livecoding/class03/solenoid_samples_1/hit_2.wav"


use_bpm = 110

live_loop :one do
  cue :beat
  ####  sample ...... beat_stretch: x
  ####sleep x
  sample [externalsam1, externalsam2].choose
  sleep 1
end


