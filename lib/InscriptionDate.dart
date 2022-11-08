import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/InscriptionPass.dart';
import 'package:tikodc/InscriptionTel.dart';

class InscriptionNom extends StatelessWidget {
  const InscriptionNom({Key? key}) : super(key: key);

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
                      MaterialPageRoute(builder: (_) =>const InscriptionTel(),)
                  )
                },
                    icon: Icon(Icons.arrow_back_ios_new,
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
              padding: EdgeInsets.only(left: 20),
              child: Text('Creation d\'un nom d\'utilisateur',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              ),
            ),
            SizedBox(height: 10,),

            Container(
              alignment: AlignmentDirectional.topStart,
              padding: EdgeInsets.only(left: 20),
              child: Text('Tu peux toujours modifier plus tard',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Donner votre nom d\'utilisateur ',
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
                        MaterialPageRoute(builder: (_) =>const InscriptionPass(),)
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
