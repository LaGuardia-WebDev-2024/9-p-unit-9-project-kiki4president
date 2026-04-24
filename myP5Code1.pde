setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://www.pbs.org/wgbh/americanexperience/media/gallery_images/kennedys_gallery_01.jpg");

var forestImage = loadImage("https://www.capecodtimes.com/gcdn/authoring/2014/08/17/NCCT/ghows-CC-ef16e75d-8125-49f0-9c82-669b9db5ea9e-bb0e37cb.jpeg");

var rimage = loadImage("https://assets.vogue.com/photos/5891e97b186d7c1b6493b8e5/master/pass/00-holding-5-things-marilyn-monroe.jpg")
//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Choose which room to explore?  [Press l for left and r for right]";

draw = function(){
    
   drawScene();

// if no one here
   if(keyPressed){
     if(key == 'l'){
       sceneImage = forestImage;   
       sceneText = "NO ONES HERE  [Press s to restart]";
     } 
// back to the begining 
   if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press l for left and r for right]";
    } 
// the scandal 
 if(key == 'r'){
      sceneImage = rimage;
      sceneText = "YOUR IN JFK'S ROOM WITH MARYLIN... scandaleous";
    } 
   
 }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



