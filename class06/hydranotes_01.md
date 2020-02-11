# Hydra
## Getting Started
This is a tutorial/lesson to help get you started with Hydra.
For more resources and a complete list of functions, visit the [Hydra GitHub Repository](https://github.com/ojack/hydra/tree/master/examples).

Generally, Hydra does the following:</br>
Generates/accesses source material -> lets you add effects/modify the material -> outputs the result out

### How to run your code
To run the code in the Atom editor, place the line of your text editor on the code you'd like to run and then hit CTRL+enter/return.

## Sources
When live coding in Hydra, you will first need to generate some source material to manipulate. 

Here are a few functions to get you started.

#### [osc](https://github.com/ojack/hydra/blob/master/docs/funcs.md#osc)
Based off of oscillators found in analog video synthesizers, this function takes values and outputs a visualization of corresponding oscillations. [Here's an example of a video oscillator in action](https://youtu.be/RipbiF4EGsI).
```
// oscillator
// osc(frequency, sync, offset)
// frequency - controls the freqency/number of oscillations
// sync - modifies the speed and direction of oscillations
// offset - seperates the values/colors of the light

osc().out() //unmodified oscillator - default is the same as osc(60).out()

osc(10).out() // oscillator with a frequency of 10

osc(10, 1).out() // fast, moves to the left

osc(10, -0.1).out() // slow, moves to the right

osc(10, 0, 0.6).out() // no movement, just seperates the colors

osc(2, 0.5, 1).out() // slow oscillation with seperated colors
```

#### [shape](https://github.com/ojack/hydra/blob/master/docs/funcs.md#shape)

#### solid

## Effects

### Geometry/Movement

#### kaleid
#### repeat
#### scale
#### rotate
#### scrollX
#### scrollY
#### pixelate

For a full list of sources, see the [official Hydra documentation](https://github.com/ojack/hydra/blob/master/docs/funcs.md#geometry).
