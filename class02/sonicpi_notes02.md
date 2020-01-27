# Class 02 - Notes (pt.2)

## Syncing and Cuing
When working with multiple threads, it's easy for threads to become out of time with each other.</br>
Sonic Pi provides a solution to this problem with the functions cue and sync.

Cue allows us to send out "heartbeat" messages to all other threads.</br>
It functions like a conductor, "cueing" other threads/sequences to start.</br>
Threads that are "synced" to a "cue" will run their function on command then wait until it receives another cue.

You must give a unique name to your cue. In other words, you cannot run two live_loops with the same name at the same time.

Example 1
```
live_loop :one do
  cue :beat 
  sample :bd_fat
  sleep 1 #controls speed of both loops
end


live_loop :two do
  sync :beat
  sample :drum_cymbal_closed, amp: 0.2
end
```
Example 2
```
live_loop :one do
  cue :beat
  sample :elec_bong
  sleep 1
  sample :elec_chime
  sleep 1
end


live_loop :two do
  sync :beat
  sample :bass_trance_c
end

live_loop :three do
  sync :beat
  3.times do
    sample :drum_cymbal_closed, amp: 0.2
    sleep 0.25
  end
end
```
