import 'package:event/event.dart';
import "package:console/console.dart";
import 'dart:io';
import 'dart:convert';



class ChangeArgs extends EventArgs {
  int ev_type;
  List <int> key_data;
  String msg;
  ChangeArgs(this.ev_type,this.key_data,this.msg);
}

class Application2 {
void Run(){print("Run");}
void HandleEvent(ChangeArgs val){print("${val.key_data} ${val.msg}");}}


class Application {
void HandleEvent(ChangeArgs val){

print (String.fromCharCodes(val.key_data));
}

void Run(){
ChangeArgs ar;

}}


void main(){

var app=Application();
var app2=Application2();


var e =Event<ChangeArgs>();

var  args = ChangeArgs(0,[1,2,3,4,5]," Привет");


e+(args)=>app.HandleEvent(args);
e+(args)=>app2.HandleEvent(args);


  stdin.echoMode = false;
  stdin.lineMode = false;
 stdin.listen((List<int>d){args.key_data=d; e.broadcast(args);}); //main cycle

}
