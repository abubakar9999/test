import 'package:flutter/material.dart';

class TimerPackage extends StatefulWidget {
  TimerPackage({Key? key}) : super(key: key);

  @override
  State<TimerPackage> createState() => _TimerPackageState();
}

class _TimerPackageState extends State<TimerPackage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => SelecetedTime());
                },
                child: Text("SelectTime")),
          ),
        ],
      ),
    );
  }

  SelecetedTime() {
    List hour = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
    ];
    List Flist = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ];
    
    List munite = ["00", "15", "30", "45"];
    String am = "AM";
    String pm = "PM";
    bool isSelected=false;

    return AlertDialog(
      content: Container(
        height: 200,
        width: 400,
        color: Colors.green,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: StatefulBuilder(
                builder: (BuildContext context,
                    void Function(void Function()) setState) {
                  return Container(
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                        itemCount: hour.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 10.0),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                         if(isSelected==false){
                             setState((){
                                // Flist[index]=!Flist[index];
                                isSelected=!Flist[index];
                                Flist[index]=isSelected;
                                print('True list is//true $isSelected');
                                print(Flist);
                            });
                         }

                                

                               
                           
                           
                              if(isSelected==true){
                                  Flist.forEach((element) {
                                
                            
                                
                                 setState((){
                                  if(element==true){
                                     element=false;
                                  isSelected=element;
                                  }
                                  
                                 });
                                 print(Flist);
                            
                                
                                print("eeeee//false$isSelected");
                              
                              
                              

                                
                              });
                              }
                              
                           
                          
                             
                              
                              
                              

                                

                              
                              
                              
                              
                              
                                 
                      
                             
                            },
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color:Flist[index]==true
                                        ? Colors.blue[300]
                                        : Colors.amber),
                                child: Center(
                                  child: Text(
                                    hour[index].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          );
                        },
                      ));
                },
              ),
            ),
            Container(
              color: Colors.black,
              width: 0.5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: munite.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 4),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue[300]),
                          child: Center(
                            child: Text(
                              munite[index].toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ));
                    },
                  )),
            ),
            Container(
              color: Colors.black,
              width: 0.5,
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(onPressed: () {}, child: Text(am)),
                    ElevatedButton(onPressed: () {}, child: Text(pm)),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
