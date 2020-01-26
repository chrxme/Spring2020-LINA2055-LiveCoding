# Class 02 - Notes (pt.2)

## Syncing and Cuing
When working with multiple threads, it's easy for threads to become out of time with each other
Sonic Pi provides a solution to this problem with the functions cue and sync.

Cue allows us to send out "heartbeat" messages to all other threads".
It functions like a conductor, "cueing" other threads/sequences to start.
Threads that are "synced" to a "cue" will run their function on command then wait until it receives another cue.

