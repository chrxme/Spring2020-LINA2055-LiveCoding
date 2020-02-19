// Operators
// Behind our screen and pixels, are numbers and code representing the data in our screen
// In Hydra, we can perform mathematical operations to manipulate our material
// For more on operators, see: https://github.com/ojack/hydra/blob/master/docs/funcs.md#operators

//.add
// .add(texture,amount)
// adds values together

osc(10, 0.03)
  .color(0,1,0) // makes white parts green
  .out(o0)

shape(3)
  .color(1,0,1) // makes shape fuschia
  .add(o0, 1) // the areas where the green and fuschia overlap become more white
  .out(o1)

/// color(1,0,1) + color(0,1,0) = color(1,1,1) = white
render(o1)

// blend
// .blend(texture/source, amount)
// blends textures

osc(10).blend(shape(4)).out(o0)

render(o0)

//.diff
//.diff(texture)
// returns the difference of textures

shape(3).rotate(0,0.1).out(o0) // rotating white shape

shape(5).color(1,1,0).out(o1) // yellow shape

src(o0).diff(o1).out(o2) // difference between white and yellow -> blue

// color(1,1,1) = white |||| color(1,1,0) = yellow ||| color(0,0,1) = blue

render(o2)

/////////////////
//.mult
// .mult(texture,amount)
// multiply images and blend with the texture by amount

osc(10,0.1,1)
  .mult(shape(2))
  .out(o0)

render(o0)


//.mask
/// .mask( texture, reps, offset )
// Works very similar to multiply

gradient()
  .mask(shape(2), 100, 0.1)
  .out(o0)

/// blue noisy diamond
  osc(10,-0.25,1).color(0,0,1).kaleid(4)
    .mask(noise(25,2))
    .out(o0)

render(o0)

//.layer
// overlay a texture based on alpha value

shape(3)
  .scrollY(0,0.1)
  .color(1,1,0, 0.3) // yellow with an alpha that's less than 1
  .repeat(20,20)
  .out(o0)

shape(2)
  .color(0,1,1)  // cyan shape
  .out(o1)

// layers o0 on top of o1
src(o1)
  .layer(o0)
  .out(o2)

render(o2)
