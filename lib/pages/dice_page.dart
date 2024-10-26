import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  String rutaimagen = "assets/images/dice1.png";

  void cambiarADado6(){
    rutaimagen = "assets/images/dice6.png";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text("Dice Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                // TRES FORMAS PARA BORDER RADIUS
                // PRIMERA
                borderRadius: BorderRadius.circular(16),

                //SEGUNDA
                // borderRadius: BorderRadius.all(Radius.circular(16)),

                //TERCERA
                // shape: BoxShape.circle
              ),
              padding: EdgeInsets.all(16),
              child: Image.asset(
                rutaimagen,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                cambiarADado6();
              }, 
              child: Text("Cambiar a 6")
            )
          ],
        ),
      ),
    );
  }
}