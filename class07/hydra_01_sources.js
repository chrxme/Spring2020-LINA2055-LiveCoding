// Sources
/// In computer science, a buffer is a place where we can store data to access later
// In Hydra, we can group inputs and effects within source buffers and output buffers

/// You can have a max of four (o0, o1, o2, o3) output buffers and max of four (s0, s1, s2, s3) source buffers

osc(20).out(o0) // outputs to output 0

shape(3).out(o1) // outputs to output 1

render(o0) // render output 0

render(o1) // render output 1


///////

/// Ex. 1

osc(20).out(o0) // outputs to o0

shape(3)
  .add(o0) // adds o0 to o1
  .out(o1) // outputs to o1

render(o1) // render o1

///////

/// Ex. 2

noise(200, 1)
  .invert()
  .color(1,0,0)
  .modulate(o1) // o0 is being modulated by o1
  .scrollX(0,-0.08)
  .out(o0)

osc(20)
  .scale([1,0.5,2])
  .out(o1)

render(o0) // render o0

///////

/// We can call a buffers source name to use as material

// Webcam Kaleidoscope
s0.initCam() // initialize a webcam in source buffer source 0 (s0)

src(s0).kaleid(4).out(o0) // render the webcam to a kaleidoscope

render(o0) // render to output 0 (o0)
