import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';
import 'functions.dart';

double bmi =0.0;
int height = 160;
int weight = 50;
int x =10;
String _state="";


void hisstate(){
    if(bmi<18.5){
      _state="Under Normal";
       resultcolor=Color.fromARGB(255, 116, 171, 220);
    }
    else if(bmi>=18.5 && bmi<25){
      _state="Normal";
       resultcolor=Color.fromARGB(255, 7, 187, 76);
      
    }
    else if(bmi>=25 && bmi<30){
      _state="Over Weight";
       resultcolor=Color.fromARGB(255, 209, 178, 1);
    }
    else if(bmi>=30 && bmi<35){
      _state="Obesity Class 1";
       resultcolor=Color.fromARGB(255, 221, 133, 0);
    }
    else if(bmi>=35 && bmi<40){
      _state="Obesity Class 2";
       resultcolor=Color.fromARGB(255, 164, 69, 56);
    }
    else if(bmi>=40){
      _state="Obesity Class 3";
       resultcolor=Color.fromARGB(255, 237, 0, 0);
    }
 
  }
   void calculating(){
    double height_float=height.toDouble();
    double height_m=height_float/100;
    //double bmi = weight/pow(height_m, 2);
     bmi = double.parse((weight/pow(height_m, 2)).toStringAsFixed(2));
    print(bmi);
  }





class mybody extends StatefulWidget {
  const mybody({Key? key}) : super(key: key);

  @override
  State<mybody> createState() => _mybodyState();
}

class _mybodyState extends State<mybody> {
  
  
  
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: containercolor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Your Height",
                    style: TextStyle(fontSize: 20, color: titlecontainer),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              if (height > 0) {
                                height--;
                              }
                            });
                          },
                          elevation: 2.0,
                          fillColor: buttoncolor,
                          child: Icon(
                            Icons.remove,
                            size: 35.0,
                            color: iconcolor,
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                          "$height",
                          style: TextStyle(fontSize: 45, color: numcont),
                        )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              height++;
                            });
                          },
                          elevation: 2.0,
                          fillColor: buttoncolor,
                          child: Icon(
                            Icons.add,
                            size: 35.0,
                            color: iconcolor,
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          
          height: 60,
          color: bgcolor,
          width: 100,
          child:IconButton(
            onPressed: () {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    backgroundColor: containercolor,
                    content: Container(
                      height: 250,width: 290,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[
                          Text("How to classify?",style: TextStyle(fontSize: 20,color: titlecontainer,fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Text("BMI > 18.5 = Under Normal",style: TextStyle(fontSize: 17,color: titlecontainer)),
                          Text("BMI (18.5 -> 24.9) = Normal",style: TextStyle(fontSize: 17,color: titlecontainer)),
                          Text("BMI (25 -> 29.9) = Overweight",style: TextStyle(fontSize: 17,color: titlecontainer)),
                          Text("BMI (30 -> 34.9) = obesity 1",style: TextStyle(fontSize: 17,color: titlecontainer)),
                          Text("BMI (35 -> 39.9) = obesity 2",style: TextStyle(fontSize: 17,color: titlecontainer)),
                          Text("BMI > 39.9 = obesity 3",style: TextStyle(fontSize: 17,color: titlecontainer)),

                        ],
                      ),
                        
                      ),
                  );
                }
                );
                },
           icon: Icon(Icons.help_outlined,color: Colors.white,size: 50,)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: containercolor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Your Weight",
                    style: TextStyle(fontSize: 20, color: titlecontainer),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              if (weight > 0) {
                                weight--;
                              }
                            });
                          },
                          elevation: 2.0,
                          fillColor: buttoncolor,
                          child: Icon(
                            Icons.remove,
                            size: 35.0,
                            color: iconcolor,
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                          "$weight",
                          style: TextStyle(fontSize: 45, color: numcont),
                        )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          elevation: 2.0,
                          fillColor: buttoncolor,
                          child: Icon(
                            Icons.add,
                            size: 35.0,
                            color: iconcolor,
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: lastbutoncolor,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
              calculating();
              hisstate();
              print(resultcolor);
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    content: Container(
                      height: 200,width: 100,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          //Text("Results",style: TextStyle(fontSize: 18,color: Colors.white),),
                         // SizedBox(height: 40,),
                          Text("Your BMI ",style: TextStyle(fontSize: 30,color: resultcolor)),
                          SizedBox(height: 15,),
                          Text("$bmi",style: TextStyle(fontSize: 40,color: resultcolor)),
                          SizedBox(height: 20,),
                          Text("$_state",style: TextStyle(fontSize: 25,color: resultcolor,fontWeight: FontWeight.bold))
                        ],
                      ),
                        
                      ),
                  );
                }
                );
                },
              child: Text(
                "Claculate",
                style: TextStyle(color: titlelast,fontSize: 18),
              )),
              
        ),
      ],
    );
  }
}
