import 'package:flutter/material.dart';
import 'package:gradient_button/components/gradient_button.dart';

class Home extends StatelessWidget {

  TextStyle basicStyle  = TextStyle(
    color: Colors.white,
    fontSize: 16
  );

  Gradient gradient1 = LinearGradient(
    colors: [
      Colors.teal[600].withOpacity(0.8),
      Colors.green[500].withOpacity(0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  Gradient gradient2 = LinearGradient(
    colors: [
      Colors.red[600].withOpacity(0.8),
      Colors.orange[500].withOpacity(0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  Gradient gradient3 = LinearGradient(
    colors: [
      Colors.blue[600].withOpacity(0.8),
      Colors.cyan[300].withOpacity(0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  Gradient gradient4 = LinearGradient(
    colors: [
      Colors.black.withOpacity(0.8),
      Colors.grey[500].withOpacity(0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("My Gradient Buttons"), ),
      body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[

                GradientButton(
                  child: Text("Click me 1", style: basicStyle,),
                  onPressed: (){
                    print("CLICK ME 1");
                  },
                  gradient: gradient1
                ),

                SizedBox(height: 16,),

                GradientButton(
                    child: Text("Click me 2", style: basicStyle,),
                    onPressed: (){
                      print("CLICK ME 2");
                    },
                    gradient: gradient2
                ),

                SizedBox(height: 16,),

                GradientButton(
                    child: Text("Click me 3", style: basicStyle,),
                    onPressed: (){
                      print("CLICK ME 3");
                    },
                    gradient: gradient3
                ),

                SizedBox(height: 16,),

                GradientButton(
                    child: Text("Click me 4", style: basicStyle, ),
                    onPressed: (){
                      print("CLICK ME 4");
                    },
                    gradient: gradient4
                ),


              ],
            ),
      ),
    );

  }
}