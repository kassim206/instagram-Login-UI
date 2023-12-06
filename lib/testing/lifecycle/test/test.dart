import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key});

  @override
  State<Test> createState() => _TestState();
}
class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Card(
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child:Container(
      height: 100,
      width: 400,
      child: Row(children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12))
          ),
          height: 100,
          width: 135,

        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12))

          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text('@@@@@@@@@@@@'),
          InkWell(
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>EditView(countobj: widget.data,)));
                        },
                        child: Text('Edit',style: TextStyle(color: Colors.blueAccent),)),
                ],
              ),
              Text('50'),
              Text('VEG'),
              Text('Stock In')
            ],
          ),
          height: 100,
          width: 239,

        )
      ],),
    )
  ),
),
    ) ;
  }
}
