import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/InscriptionTel.dart';
import 'package:flutter/cupertino.dart';
import 'package:tikodc/Profil.dart';

class DateInscription extends StatefulWidget {
  const DateInscription({Key? key}) : super(key: key);

  @override
  State<DateInscription> createState() => _DateInscriptionState();
}

class _DateInscriptionState extends State<DateInscription> {

  DateTime _dateTime = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () =>{
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>const Profil(),)
                    )
                  },
                      icon: Icon(CupertinoIcons.back,
                        size: 30,)
                  ),
                  const Text('Inscription', textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  IconButton(onPressed: (){},
                      icon: Icon(CupertinoIcons.question_circle,
                      )
                  )
                ],
              ),

              SizedBox(height: 20,),


              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(left: 27),
                child: Text('Quelle est ta date de naissance ?',
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 10,),


              Container(
                alignment: AlignmentDirectional.topStart,
                padding: const EdgeInsets.only(left: 27, right: 50),
                child: const Text('Ta date de naissance ne sera pas affiché publiquement',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),

              SizedBox(height: 10,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Jan 1, 2001',
                  ),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: ElevatedButton(onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => InscriptionTel(),)
                      )
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        elevation: 2,
                      ),
                      child: Text('Suivant',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),

                      ),
                    ),
                  ),

                  Container(
                    height: 150,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (dateTime) {
                        print(dateTime);
                        setState(() {
                          _dateTime = dateTime;
                        });
                      },
                    ),
                  ),
                ] ,
              ),
            ],
          )

      ),

    );
  }
}
