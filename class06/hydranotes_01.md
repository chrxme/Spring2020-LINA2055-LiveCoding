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
Based off of oscillators found in analog [video synthesizers](https://youtu.be/RipbiF4EGsI), this function takes values and outputs a visualization of corresponding oscillations.
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
Outputs a shape.
```
// shape
// shape(sides, radius, smoothing)
// sides - # of sides on shape
// radius - size of shape
// smoothing - blurs and stretches edges

shape(3).out() // triangle

shape(4).out() // square

shape(50).out() // circle - has so many "sides" that it's a smooth line

shape(3, 0.5).out() // larger triangle

shape(3, 0.1, 0.1).out() // smaller blurry triangle
```
#### [solid](https://github.com/ojack/hydra/blob/master/docs/funcs.md#solid)
Outputs a solid color. 
```
// solid
// solid(r, g, b, a)
// red - red
// green - green
// blue - blue
// alpha - alpha

solid(1,0,0).out() // pure red

solid(0,1,0).out() // pure green

solid(0,0,1).out() // pure blue

solid(0.5,0,0).out() // like a red light at half brightness

solid(1,0,1).out() // red light + blue light = fuschia

solid(1,1,0).out() // red light + green light = yellow
```
Tip: Remember, since you're working with a screen, you're mixing with pixels and light.
![A representation of additive color mixing - Wikipedia](https://upload.wikimedia.org/wikipedia/commons/2/28/RGB_illumination.jpg)
> [A representation of additive color mixing - Wikipedia](https://en.wikipedia.org/wiki/RGB_color_model) 
#### [gradient](https://github.com/ojack/hydra/blob/master/docs/funcs.md#gradient)
Outputs a gradient. 
```
// gradient
// gradient(speed)

gradient(0.1).out() // slow gradient

gradient(2).out() // faster gradient

gradient(0).out() // frozen gradient
```
#### [noise](https://github.com/ojack/hydra/blob/master/docs/funcs.md#noise)
Outputs noise. 
```
// noise
// noise(scale, offset)

noise(1).out() // big blurry noise

noise(40, 0).out() // like a composition notebook

noise(40,50).out() // like static
```
#### [voronoi](https://github.com/ojack/hydra/blob/master/docs/funcs.md#voronoi)
Generates [voronoi shapes](https://en.wikipedia.org/wiki/Voronoi_diagram)
```
// voronoi
// voronoi(scale, speed, blending)
// For more information, visit - https://en.wikipedia.org/wiki/Voronoi_diagram

voronoi(1).out()

voronoi(20).out() // zoomed out

voronoi(1, 0).out() // zoomed in, not moving

voronoi(20, 0.7).out() // zoomed out

voronoi(20, 0.7, 10).out() // reveals more points, looks like dust
```
