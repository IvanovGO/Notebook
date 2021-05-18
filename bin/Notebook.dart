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

abstract class IApplication{
bool hasEvent=false;
String ch;
void HandleEvent(ChangeArgs val);
void Run();
}


class Application2 {
void Run(){print("Run");}
void HandleEvent(ChangeArgs val){print("${val.key_data} ${val.msg}");}}


class Application extends IApplication {

void HandleEvent(ChangeArgs val){
//print (String.fromCharCodes(val.key_data));
switch (val.key_data.length){
	case 0: print("0");break;
	case 1:ch=String.fromCharCodes(val.key_data);
	print("1");
		break;
	case 2:print("2");
		break;
	case 3:		print("3");
	if (val.key_data[2]==65) {print("UP");}
	if (val.key_data[2]==66) {print("DOWN");}
	if (val.key_data[2]==68) {print("LEFT");}
	if (val.key_data[2]==67) {print("RIGHT");}
		
	
	break;
	case 4:print("4");break;
	case 5:print("5");
        if (val.key_data[3]==48) {print("F9");}
	if (val.key_data[3]==49) {print("F10");}
		break;	


}}




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
