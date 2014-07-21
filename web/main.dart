import 'dart:html';
import 'package:stagexl/stagexl.dart';

void main() {
  var element = new DivElement();
  element.text = "Hello, World!";
  document.body.children.add(element);
  
  /*// setup the Stage and RenderLoop
  var canvas = querySelector('#stage');
  var stage = new Stage(canvas);
  var renderLoop = new RenderLoop();
  renderLoop.addStage(stage);*/
  
  /*// draw a red circle
  var shape = new Shape();
  shape.graphics.circle(100, 100, 60);
  shape.graphics.fillColor(Color.Red);
  stage.addChild(shape);*/
}
