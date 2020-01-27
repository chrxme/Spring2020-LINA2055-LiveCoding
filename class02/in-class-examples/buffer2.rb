## rrand, rrand_i, choose

live_loop :one do
  play rrand_i(60,72), amp: rrand(0.6, 0.7), release: rrand(0.1, 0.6) #play a random integer between 60-72
  sleep 0.25
end

live_loop :two do
  sample :drum_cymbal_closed
  sleep [0.25, 0.5, 0.75, rrand(0.1, 0.5)].choose
end