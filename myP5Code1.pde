setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://www.pbs.org/wgbh/americanexperience/media/gallery_images/kennedys_gallery_01.jpg");

var forestImage = loadImage("https://www.capecodtimes.com/gcdn/authoring/2014/08/17/NCCT/ghows-CC-ef16e75d-8125-49f0-9c82-669b9db5ea9e-bb0e37cb.jpeg");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Choose which Kennedy room to explore?  [Press l for for left and r for right]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'l'){
       sceneImage = forestImage;   
       sceneText = "No fox here go back to the front of the house.  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
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



