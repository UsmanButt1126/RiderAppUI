import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapplication/home.dart';

class SelectRide extends StatefulWidget{
  var from;
  var _to;
  SelectRide(this.from  , this._to);
  @override
  State<StatefulWidget> createState() {
    return _SelectRide();
  }

}

class _SelectRide extends State<SelectRide>{
  final List<Map<String,dynamic>> rideData=[
    {},
    {
      "timeStart" : "10:00",
      "timeArrival": "11: 30",
      "name" : "Mark",
      "price" : "500",
      "profileImage" : "assets/images/h1.jpg"
    },
    {
      "timeStart" : "12:00",
      "timeArrival": "01: 30",
      "name" : "Cotlin",
      "price" : "600",
      "profileImage" : "assets/images/h2.jpg"
    },
    {
      "timeStart" : "02:00",
      "timeArrival": "03: 30",
      "name" : "Anderson",
      "price" : "550",
      "profileImage" : "assets/images/h3.jpg"
    },
    {
      "timeStart" : "09:30",
      "timeArrival": "10: 45",
      "name" : "Wood",
      "price" : "600",
      "profileImage" : "assets/images/h4.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: Colors.grey.shade300,
      body: ListView.builder(itemCount: rideData.length, itemBuilder: (context , index){
        if(index == 0){
          return ClipRRect(
           borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.cyan.shade200,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
              ),
               child:  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 22,),
                      Padding(
                        padding: const EdgeInsets.only(left: 31.0),
                        child: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage(),));
                        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
                           ),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(left: 35.0),
                       child: RichText(
                         text: TextSpan(
                           style: TextStyle(
                             fontSize: 26,
                             fontWeight: FontWeight.bold,
                           ),
                           children: <TextSpan>[
                             TextSpan(
                               text: 'Ride from ',
                               style: TextStyle(color: Colors.white),
                             ),
                             TextSpan(
                               text: '${widget.from}', // Changing color for 'from' location
                               style: TextStyle(color: Colors.cyan.shade100),
                             ),
                             TextSpan(
                               text: '\nto ', // Regular text
                               style: TextStyle(color: Colors.white),
                             ),
                             TextSpan(
                               text: '${widget._to}', // Changing color for 'to' location
                               style: TextStyle(color: Colors.cyan.shade100),
                             ),
                           ],
                         ),
                       )

                     )
                   ],
                 ),


            ),
          );
        }else {
          final ride = rideData[index];
          final colors = index % 2 == 0 ? Colors.blueGrey : Colors.white;
          final Color = index % 2 == 0 ? Colors.white : Colors.blueGrey;
          final txtColor = index % 2 == 0 ? Colors.white : Colors.blueGrey;
          return
              Container(
                height: 205,
                width: width,
                decoration: BoxDecoration(
                  color: colors,
                  borderRadius: BorderRadius.all( Radius.circular(21)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(

                    child: Row(
                      children: [
                        Container(
                          width: width*0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(ride['timeStart'] , style: TextStyle(
                                        fontWeight: FontWeight.w800 , fontSize: 16,
                                        color: Color,
                                      ),),
                                      SizedBox(height: 60,),
                                      Text(ride['timeArrival'], style: TextStyle(
                                          fontWeight: FontWeight.w800 , fontSize: 16,
                                        color: Color,
                                      ),),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(4),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: txtColor,
                                                  blurStyle: BlurStyle.inner,
                                                  blurRadius: 2,
                                                  spreadRadius: 1)
                                            ]),
                                      ),
                                      Container(
                                        height: scrHeight * 0.15,
                                        width: 1,
                                        color: txtColor,
                                      ),
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(4),
                                            color: txtColor),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     RichText(text: TextSpan(
                                       style: TextStyle(
                                         fontWeight: FontWeight.w800 , fontSize: 16,
                                       ),
                                       children: <TextSpan>[
                                         TextSpan(
                                           text: "From",
                                           style: TextStyle(
                                             color: Colors.blueGrey.shade200,
                                           )
                                         ),
                                         TextSpan(
                                           text: "\n${widget.from}",
                                           style: TextStyle(color: txtColor)
                                         )
                                       ]
                                     ),
                                     ),
                                     SizedBox(height: 20,),
                                      RichText(text: TextSpan(
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800 , fontSize: 16,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(text:  "To",
                                          style: TextStyle(color: Colors.blueGrey.shade200)),
                                          TextSpan(
                                            text: "\n${widget._to}", style:
                                              TextStyle(color: txtColor)
                                          )
                                        ]
                                      ),
                                      )
                                    ],
                                  )


                                ],
                              ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 CircleAvatar(backgroundImage: AssetImage(ride['profileImage'] ),),
                                 SizedBox(width: 20,),
                                 Text(ride['name'],style: TextStyle(
                                     fontWeight: FontWeight.w800 , fontSize: 18,
                                   color: Color,
                                 ),)
                               ],
                             )

                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(ride['price'],style: TextStyle(
                                    fontWeight: FontWeight.w800 , fontSize: 18,
                                  color: Color,
                                ),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );


        }
        }),

    );
  }

}
