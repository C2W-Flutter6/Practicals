//This file has styling properties for Container Widget.

import 'package:flutter/material.dart';

class styleContainer extends StatefulWidget {
  const styleContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    return styleContainerState();
  }
}

class styleContainerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Container Styling",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(59, 142, 237, 1),
      ),
      body: Center(
        child: Container(
          //Property 1: height and width
          height: 200,
          width: 200,

          //Property 2: Padding
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),

          //Property 3: margin
          margin: const EdgeInsets.only(top: 10, bottom: 8.0),

          //Property 4: decoration

          decoration: BoxDecoration(
            //Property 4.1: border
            border: Border.all(
              color: Colors.blue,
              width: 5,
            ),

            //Property 4.2: borderRadius
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),

            //Property 4.3: color
            //color can be inside the decoration property or directly given after height, etc.
            color: Colors.yellow,

            //Property 4.4: boxShadow
            //+ve offset : right and down ; -ve offset: left and up (opp. y axis values are counted in offset, and not according to graph)
            boxShadow: [
              BoxShadow(
                color: Colors.purple,
                offset: Offset(30, 30),
                blurRadius: 8,
              ),
              BoxShadow(
                color: Colors.red,
                offset: Offset(20, 20),
                blurRadius: 6,
              ),
              BoxShadow(
                color: Colors.green,
                offset: Offset(10, 10),
                blurRadius: 8,
              ),
            ],
            //Property 5: gradient (Types: Gradient, Linear, Radial)
            gradient: LinearGradient(
              //stops should be used in ascending order
              //if values are 0.5, 0.4, 0.6 then 0.4 is considered as 0.5 (equal to previous color stop value).
              stops: [0.3, 0.5],
              colors: [Colors.red, Colors.green],
            ),
          ),
        ),
      ),
    );
  }
}
