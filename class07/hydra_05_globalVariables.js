// Global Variables
// Hydra has a predefined variables that can be used as parameters within functions

// window.innerWidth
// width of window

// () => /// tells Hydra to look/update when values change

// change size of window to change color
solid(() => window.innerWidth / 1000,0,0).out(o0)

//window.innerHeight
// height of window

// change size of window to change color
solid(0, () => window.innerHeight / 1000,0).out(o0)

/// mouse
// mouse.x - x position of mouse
// () => mouse.x
// mouse.y - y position of mouse
// () => mouse.y

// when mouse is on left, oscillation is smaller
osc( () => mouse.x ).out(o0)

// can divide the value of mouse.x by the width of the Window to scale the values down
osc( () => mouse.x / window.innerWidth * 100 ).out(o0)

render(o0)

//////////

// move mouse left and right to change the scale of the shape
shape(3).scale( () => mouse.x / 500 ).out(o0)

shape(4).repeat(() => mouse.y, () => mouse.x).out(o0)

/// time

/// Math.sin
// sine wave - gives as a smooth ramp of numbers to work with
shape(3)
.scale(
 () => Math.sin(time)
)
.out()

// divide time to slow down rate
shape(3)
.scale(
 () => Math.sin(time/4)
)
.out()

// grows into a square
shape( () => Math.sin(time/10) * 4).out(o0)


// bpm(___)
// can adjust the global speed

bpm(20) // beats per minute

// some values to use with fast to be "on beat"
// 0.125, 0.25, 0.5, 0.75, 1, 2 etc.
shape([2,3,4].fast(0.125)).out(o0)

render(o0)
