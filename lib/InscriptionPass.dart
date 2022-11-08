import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/InscriptionDate.dart';
import 'package:tikodc/Profil.dart';

class InscriptionPass extends StatefulWidget {
  const InscriptionPass({Key? key}) : super(key: key);

  @override
  State<InscriptionPass> createState() => _InscriptionPassState();

}

class _InscriptionPassState extends State<InscriptionPass> {
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
                  IconButton(onPressed: () =>{
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>const InscriptionNom(),)
                    )
                  },
                      icon: const Icon(CupertinoIcons.back,
                        size: 30,)
                  ),
                  const Text('Inscription', textAlign: TextAlign.center,
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
                padding: EdgeInsets.only(left: 20),
                child: Text('Creation du mot de passe',
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 10,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                child: TextFormField(
                  maxLength: 25,
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

              SizedBox(height: 10,),

              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(left: 20),
                child: const Text('Ton mot de passe doit contenir:',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              SizedBox(height: 8,),

              Row(

                  children: [

                    Container(
                      alignment: AlignmentDirectional.topStart,
                      padding: EdgeInsets.only(left: 20),
                      child:
                      Icon(Icons.check_circle_outline,
                        color: Colors.green,
                        size: 25,),
                    ),

                    SizedBox(width: 10),

                    Text('8 à 20 Caractères',
                      style: TextStyle(
                        fontSize: 14,
                      ),)
                  ]
              ),

              Row(

                  children: [
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      padding: EdgeInsets.only(left: 20),
                      child:
                      const Icon(Icons.check_circle_outline,
                        color: Colors.green,
                        size: 25,),
                    ),

                    SizedBox(width: 10),

                    const Text('Lettres, chiffres et caractères spéciaux',
                      style: TextStyle(
                        fontSize: 14,
                      ),)
                  ]
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: ElevatedButton(onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) =>const Profil(),)
                      )
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        elevation: 2,
                      ),
                      child: Text('Inscription',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),

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

