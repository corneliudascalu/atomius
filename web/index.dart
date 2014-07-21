library mygame;

import 'package:dartrocket/dartrocket.dart';

part "play.dart";

void main() {

  //adding play state to the statemanager
  game.stateManager.addState("play", new Play("play"));

  //start the play state
  game.stateManager.initState("play");
}