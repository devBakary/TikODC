import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/Accueil.dart';
import 'package:tikodc/Connexion.dart';

class PassForget extends StatefulWidget {
  const PassForget({Key? key}) : super(key: key);

  @override
  State<PassForget> createState() => _PassForgetState();
}

class _PassForgetState extends State<PassForget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){},
                      icon: Icon(CupertinoIcons.question_circle,
                      )
                  )
                ],
              ),

              SizedBox(height: 20,),


              Container(
                alignment: AlignmentDirectional.center,
                //padding: EdgeInsets.only(left: 27),
                child: Text('saisir le code à six 6 chiffres',
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Container(
                alignment: AlignmentDirectional.center,
                //padding: EdgeInsets.only(left: 20, right: 20),
                child: Text('Ton code a été envoyé au +223 90909090',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                     height: 40,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),

                    Container(
                      height: 40,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50,),


              Padding(

                padding:  EdgeInsets.only(left: 20, right: 2),
                child: Row(
                 // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Tu n\'as pas reçu de code ?',
                      style: const TextStyle(fontWeight: FontWeight.bold,),),
                    SizedBox(width: 5,),
                    InkWell(
                      child: const Text('Demander un appel téléphonique',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                      onTap: () =>{
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) =>const PassForget(),)
                        )
                      },
                    )

                  ],
                ),
              ),



              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: ElevatedButton(onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) =>const Accueil(),)
                      )
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white54,
                        elevation: 2,
                      ),
                      child: const Text('renvoyer un code',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),

                      ),
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
