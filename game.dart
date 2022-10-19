import 'dart:io';
import 'dart:math';
enum situation{stone,paper,scissors}
void main() {
  print("Enter Action:");
  var usermovement=stdin.readLineSync()??"";
  var rnd = Random().nextInt(2); 
  var temp;
  if(rnd==0){
    temp=situation.stone.name;
  }
  if(rnd==1){
    temp=situation.paper.name;
  }
  if(rnd==2){
    temp=situation.scissors.name;
  }

  if (temp==usermovement) {
    print("There is NO WİNNER in the game!");
  }
  if (temp==situation.stone.name&&usermovement=="paper") {
    print("You WON the game!");
  }
  if (temp==situation.stone.name&&usermovement=="scissors") {
    print("You LOST the game!");
  }
  if (temp==situation.paper.name&&usermovement=="scissors") {
    print("You WON the game!");
  }
  if (temp==situation.scissors.name&&usermovement=="paper") {
    print("You LOST the game!");
  }
if (temp==situation.paper.name&&usermovement=="stone") {
  print("You LOST the game!");
}
if (temp==situation.scissors.name&&usermovement=="stone") {
  print("You WON the game!");
}


}