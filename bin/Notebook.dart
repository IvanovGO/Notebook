import 'package:event/event.dart';

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
void HandleEvent(){
print ("event handler");
}}


void main(){
var  args = ChangeArgs(0,[1,2,3,4,5]," Привет");
var e =Event<ChangeArgs>();

var app=Application();
var app2=Application2();
e+(args)=>app.HandleEvent();
e+(args)=>app2.HandleEvent(args);

e.broadcast(args);

}
