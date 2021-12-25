// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
import 'guess.dart';
void main() {
 var game = Game();
 int c=0;
 var q = true;
for(;;){
  if(c==0){
    game.playgame();
    c++;
  }
  else {
    if(q){
      stdout.write("Do you want to play again? y/n: ");
      q = false;
    }
    var k  = stdin.readLineSync();
    if(k=='y' || k=='Y'){
      game.playgame();
      q=true;
    }else if(k=='n'|| k=='N' ) {
      return;
    }
    else {
      stdout.write("Do you want to play again? y/n: ");
    }
  }
  }






}