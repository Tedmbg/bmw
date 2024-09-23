import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(carView());
}

class carView extends StatelessWidget {
  const carView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF222022),
      appBar: AppBar(
        title: const Text(
          'Welcome',
          style: TextStyle(
            fontFamily: 'Handjet',
            fontSize: 34.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFCA1628),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
             const CircleAvatar(
              radius:90.0,
              backgroundImage:AssetImage('assets/car 2.png')
             ),
              const Text(
                'BMW M3',
                style: TextStyle(
                  fontFamily: 'ProtestGuerrilla',
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              Container(
                width:200.0,
                child: Card(
                  child: ListTile(
                    leading:Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    title: Text(
                      '011488107',
                      style:TextStyle(
                        fontFamily:'Handjet',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                child: RichText(
                  text:TextSpan(
                    text:'Shear',
                    style:TextStyle(
                      color: Colors.white,
                      fontFamily: 'ProtestGuerrilla',
                    ),
                    children: [
                      TextSpan(
                        text: ' Driving ',
                        style:TextStyle(
                          color: Colors.orange,
                          fontFamily: 'ProtestGuerrilla'
                        ),
                      ),
                      TextSpan(
                        text:'Pleasure',
                        style:TextStyle(
                          color: Colors.white,
                          fontFamily: 'ProtestGuerrilla'
                        ),
                      ),
                    ]
                  ),
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.orange,
              ),
            ]
          ),
        ),
      ),
    ));
  }
}
