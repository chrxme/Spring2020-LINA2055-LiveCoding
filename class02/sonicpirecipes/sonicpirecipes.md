## Sonic Pi Recipes
There are many ways of making music. Here are a few ways to explore how to do so using Sonic Pi.</br>
Instructions: Explore each prompt by coding with musical goals in mind while using all of the required ingredients. Use a combination of ingredients to create your piece. If you need more help making decisions, try listening to an example and break down the events happening within it.

Required Ingredients:
- At least four (4) commands
- At least four (4) parameters
- At least one (1) effect (with_fx)

### 1. Traditional/Dance Music

Instructions: Code music that emulates traditional/dance music.

Useful Ingredients:
- cue and sync
- sleep

Tips:
- Use “cue” and “sync” to line up your loops (live_loop)
- See <a href="https://sonic-pi.net/tutorial.html#section-9-3">Tutorial 9.3</a> to read more about syncing live loops
- If you don't know where to start, listen to a song you like and copy the process that you hear. 
-- Drum beat happens 4 times, then the synth comes in to play chords, etc.

### 2. Ambient/Soundscape

Instructions: Create a piece that is considered loose in time or meant to emulate a space.

If you need a starting point/inspiration, try creating a piece based off of:
- The Future
- Outer Space
- Ocean
- Haunted House

Useful Ingredients:
- rrand
- rrand_i
- rate
- choose

### 3. Process Music 

Instructions: Create a song/piece based on a process.

Examples of Processes:
- Slow to Fast and/or Fast to Slow
- High to Low and/or Low to High
- Happy to Angry and/or Sad to Angry

Useful Ingredients:
- ring / tick
- sleep
- rate

Tips:
Slow to Fast:
- Change the value of sleep from larger to smaller numbers
- Change the rate of the sample from a smaller number to a larger number