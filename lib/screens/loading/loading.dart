import 'package:flutter/material.dart';
import 'package:bplnet/screens/loading/components/spinner.dart';
import 'package:bplnet/style/themes.dart';

class Loading extends StatefulWidget{
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future<void> doDelay() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState(){
    super.initState();
    doDelay();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _body()
          ),
          _footer()            
        ],
      ),

    
    );
  }

  Widget _body(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,        
      children: [
        Text('BPLNet Mobile', 
        style: TextStyle(
            fontFamily: 'PermanentMarker',
            fontWeight: FontWeight.bold, fontSize: 30.0,
            color: Colors.white
          )
        ),
        SizedBox(height: 10.0,),
        Text('Loading', style: TextStyle(fontSize: 18.0),),
        SizedBox(height: 20,),
        Spinner(),
        SizedBox(height: 30,)
      ],
    );
  }

  Widget _footer(){
      return Column(
        children: [
          Text(
            'Mobilized digital service', 
            style: TextStyle(fontFamily: 'Pacifico', fontSize: 18),
          ),
          SizedBox(height: 30,)
        ],
      );
    }
}



