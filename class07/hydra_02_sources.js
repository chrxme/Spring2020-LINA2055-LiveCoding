// Image/Video as a Source - Hydra

//////////
//// Video Example

catVideo = document.createElement('video'); // <img /> // for element - must be specfic if you are reading video or image
// video = video, image = img
catVideo.autoplay = true // plays the video
catVideo.loop = true // loops the video
catVideo.src = 'https://media.giphy.com/media/VbnUQpnihPSIgIXuZv/giphy.mp4';  // file's location

// Initiliazes catVideo as s0
s0.init(
  {
    src: catVideo , // variable that holds element
    dynamic: true   // set true for video
  }
);

src(s0).out(o0)

render(o0)

//////////
//// Picture Example

algoraveLogo = document.createElement('img'); // <img /> // for element - must be specfic if you are reading video or image
// video = video, image = img
algoraveLogo.autoplay = false // plays the video
algoraveLogo.loop = false // loops the video
algoraveLogo.src = 'https://upload.wikimedia.org/wikipedia/commons/2/25/Algorave_logo.png';  // file's location

s0.init(
  {
    src: algoraveLogo , // variable that holds element
    dynamic: false   // set true for video
  }
);

src(s0).scrollX(2,0.1).out(o0)

render(o0)
