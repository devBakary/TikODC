import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/PassForget.dart';
import 'package:tikodc/Profil.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  bool _obscureText = true;
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
                  IconButton(onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>const Profil(),)
                    );

                        },
                      icon: Icon(Icons.arrow_back_ios_new,
                        size: 30,)
                  ),
                  const Text('Connexion', textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  IconButton(onPressed: (){},
                      icon: const Icon(CupertinoIcons.question_circle,
                      )
                  )
                ],
              ),

              SizedBox(height: 20,),


              Container(
                alignment: AlignmentDirectional.topStart,
                padding: const EdgeInsets.only(left: 27),
                child: const Text('Telephone',
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 3,
                color: Colors.black,
                indent: 20,
                endIndent: 290.0,

              ),
              SizedBox(height: 10,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: TextFormField(
                  decoration:  InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Numero de telephone',
                    labelText: 'Numero de telephone',

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,),
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState((){
                          _obscureText = !_obscureText;
                        });

                      },
                      child: Icon(_obscureText? Icons.visibility: Icons.visibility_off_outlined ),
                    ),

                    border: UnderlineInputBorder(),
                    labelText: 'Mot de passe ',
                    hintText: 'Entrer Mot de passe',

                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: InkWell(
                  child: const Text('Mot de passe oublié ?',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),),
                    onTap: () =>{
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>const PassForget(),)
                    )
                  },
                )
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: ElevatedButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_) => Profil())); },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white54,
                        elevation: 2,
                      ),
                      child: const Text('Connexion',
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
