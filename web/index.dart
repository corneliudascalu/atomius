library mygame;

import 'dart:html';
import 'dart:math' as math;
import 'package:stagexl/stagexl.dart';

void main() {
  querySelector("#sampleText").text="hello"; 
  
  // setup the Stage and RenderLoop
  var canvas = querySelector('#stage');
  var stage = new Stage(canvas);
  var renderLoop = new RenderLoop();
  renderLoop.addStage(stage);
  
  // draw a red circle
  var shape = new Shape();
  shape.graphics.circle(100, 100, 60);
  shape.graphics.fillColor(Color.Red);
  stage.addChild(shape);
  
  var random = new math.Random();
  
  Function completeHandler;
  Function restartHandler;
  
  completeHandler = (){
    var x = random.nextInt(500);
    var y = random.nextInt(400);
    
    Tween tween = new Tween(shape, 1.0, TransitionFunction.easeOutBack);
    tween.animate.x.to(x);
    tween.animate.y.to(y);
    tween.onComplete = restartHandler;
    
    renderLoop.juggler.add(tween);
  };
  
  restartHandler = (){
    var x = random.nextInt(500);
    var y = random.nextInt(400);
    
    Tween retween = new Tween(shape, 1.0, TransitionFunction.easeOutCubic);
    retween.animate.x.to(x);
    retween.animate.y.to(y);
    retween.onComplete = completeHandler;
    
    renderLoop.juggler.add(retween);
  };
  
  Function mouseClickHandler = (MouseEvent event){
    Tween retween = new Tween(shape, 1.0, TransitionFunction.easeOutCubic);
    retween.animate.x.to(event.stageX-shape.width/2);
    retween.animate.y.to(event.stageY-shape.height/2);
    
    renderLoop.juggler.add(retween);
  };
  
  //completeHandler();
  stage.addEventListener(MouseEvent.CLICK,mouseClickHandler);
  
}
