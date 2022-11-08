import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tikodc/DateInscription.dart';
import 'package:tikodc/InscriptionDate.dart';
import 'package:tikodc/Profil.dart';

class InscriptionTel extends StatefulWidget {
  const InscriptionTel({Key? key}) : super(key: key);

  @override
  State<InscriptionTel> createState() => _InscriptionTelState();
}

class _InscriptionTelState extends State<InscriptionTel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () =>{
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>const DateInscription(),)
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
                child: Text('Telephones',
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
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                child:  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    inputBorder: const UnderlineInputBorder(
                        borderSide:
                        BorderSide(style: BorderStyle.solid, width: 1)),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
              ),

              Container(
                alignment: AlignmentDirectional.topStart,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text('En continuant, tu acceptes les Conditions d’utilisation et reconnais avoir lu '
                    'notre Politique de Confidentialité pour savoir comment nous collectons, utilisons et '
                    'partageons tes données. En savoir plus',
                  style: TextStyle(
                    fontSize: 14,
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
                          MaterialPageRoute(builder: (_) =>const InscriptionNom(),)
                      )
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white54,
                        elevation: 2,
                      ),
                      child: Text('Envoyer un code',
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


