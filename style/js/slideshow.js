var options = {

    // OPTIONS LIST
    effect:          "fade", // or
                             // effect: "effect name", example: "fade","blur"...
                             // effect: "name, name", example: "fade, blur..."
    prev:                "", // prev button text
    next:                "", // next button text
    duration:          1000, // duration of switching  images
    delay:             2000, // delay between slides
    captionDuration:   1000, // caption show duration
    captionEffect:   'none', // = "none" | "fade" | "slide" | "move" | [{left1,top1,left2,top2,distance,easing},...]
                    //      left1,top1,left2,top2 = "INT%" || INT
                    //      distance = FLOAT - delay between caption parts = captionDuration*distance
                    //      easing = easing type, now support "linear|swing|easeInOutExpo|easeOutBack|easeOutElastic1|easeOutCirc" from http://jqueryui.com/demos/effect/easing.html
    width:              960, // slider width (need for some effect only)
    height:             360, // slider height (need for some effect only)
    thumbRate:            1, // scrolling speed and method: 0< scroll when approaching the limits, 0> smartscroll algorithm
    gestures:             2, // gestures support (swipe slides on touch or click)
                             // 0 - none
                             // 1 - devices
                             // 2 - all
    caption:           true, // show caption
    controls:          true, // show controls button (prev/next)
    controlsThumb:    false, // array with thumb images inside controls
                             // (templates: Boundary, Dodgy, Utter)
                             // example ["image1.jpg", "image2.jpg", ...]
    keyboardControl:  false, // use keyboard to control slides (â† left arrow, â†’ right arrow, space - play/pause)
    scrollControl:    false, // use mouse ccroll to control slides
    autoPlay:          true, // auto play slides
    autoPlayVideo:    false, // autoplay youtube/vimeo video
    responsive:           1, // responsive
                             // 0 - no responsive
                             // 1 - resposive only;
                             // 2 - full width slider;
                             // 3 - full width and height slider
    support: jQuery.fn.wowSlider.support, // browser support [transform, transition]
    options.loop:         0, // cycles autoplay, Number.MAX_VALUE by default
    stopOnHover:          0, // stop slideshow on mouse over
    preventCopy:          1, // prevent image copy
    playPause:            1, // - show play/pause controll
    // startSlide:0 - number of the first slide
    images:               0, // on demand images loading
                             // example: [{src:"./image1.jpg",title:"1"},{src:"./image2.jpg",title:"2"}]

    revers:               0, // reverse direction of some effects
    stopOn:               0, // stop on current slide



    // EVENTS LIST
    // raised on before slide step, used to change the switch slides order
    // @curIdx - current slide, @count - slides count
    // @return - next slide number
    onBeforeStep: function(curIdx,count){
        // return curIdx+1 // next slide
        // return curIdx-1 // prev slide - back order
        // return (curIdx+1 + Math.floor((count-1)*Math.random())); // random order
    },
    // raised after step complete
    onStep: function(index){
        // console.log( 'New slide index: ' + index )
    }
};

jQuery('#wowslider-container1').wowSlider(options);

// DOM API
var slider = jQuery('#wowslider-container1').get(0);

// restart playing
slider.wsRestart();

// go to another slider
// slider.wsStart(index, touch, direction);
// @index - index of next slide
// @touch - if touch action
// @direction - custom direction of effect
slider.wsStart(1, false, 1);

// go to next slide
slider.wsStart();

// stop autoplay
slider.wsStop();