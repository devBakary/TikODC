import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/Connexion.dart';
import 'package:tikodc/DateInscription.dart';
import 'package:tikodc/InscriptionTel.dart';


class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

           AppBar(
             title: const Text(
               'Profil',
             ),
             backgroundColor: Colors.white,
             titleTextStyle: const TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 24,
               color: Colors.black,
             ),
             centerTitle: true,
             elevation: 1,
           ),

            const SizedBox(height: 20,),

            Center(
             child: Container(

                height: 100,
                width: 100,
               decoration: const BoxDecoration(
                   color: Colors.black,
                  shape: BoxShape.circle,
               ),
               child: const Center(
                 child: Icon(
                   Icons.camera_alt,
                   size: 50,
                   color: Colors.white,
                 ),
               ),
             ),
            ),
              const SizedBox(height: 4,),
            const Center(
              child: Text(
                '@nomd\'utilisateur',
                    style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
              ),
            ),

            const SizedBox(height: 10,),
            Center(
              child: Container(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text('0',
                            style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Abonnements')
                        ],
                      ),

                      Column(
                        children: const [
                          Text('0', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Abonné(e)')
                        ],
                      ),

                      Column(
                        children: const [
                          Text('0', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('J\'aime'),
                        ],
                      )
                    ],
                  )
              ),
            ),

            const SizedBox(height: 50,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        elevation: 2,
                      ),
                      onPressed: (){
                        _ouvrirPopup(context);
                      },
                      child: const Text('Connecte-toi ou inscris-toi',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),)
                  ),
                ),
              ] ,
            ),
            
          ],
        ),
      ),
    );
  }
}

// debut de la page pour afficher le popup de connexion
void _ouvrirPopup(context){
  showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc)
  {
    return Container(
      height: MediaQuery.of(context).size.height * .92,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                          Icons.close
                      ),
                    ),
                  const Icon(CupertinoIcons.question_circle)
                ],
              )
          ),

          const SizedBox(height: 20,),

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text('Inscription à TikODC',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)
                    ,),
                ),

                const Padding(padding: EdgeInsets.only(right: 24, left: 24, top: 10),
                  child: Text('Crée un profil, abonne-toi à d\'autre comptes, crée tes propres vidéos et'
                      ' bien plus encore. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 24, left: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,

                    ),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) =>DateInscription(),)
                      );
                    },
                    child: const Text('Utilise un téléphone',
                    style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold),),
                  ),

                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * .40,
                ),

                const Padding(padding: EdgeInsets.only(right: 24, left: 24, top: 10),
                  child: Text('En continuant, tu acceptes les Conditions d’utilisation et reconnais avoir lu '
                      'notre Politique de Confidentialité pour savoir comment nous collectons, utilisons et '
                      'partageons tes données.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12
                    ),
                  ),
                ),
            ],
            ),

          ),
        const   SizedBox(
            height: 15,
          ),

          Expanded(child: Container(
            color: Colors.black12,

            child:  Center(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tu as déjà un compte ?',
                  style: const TextStyle(fontWeight: FontWeight.bold,),),
                 SizedBox(width: 5,),
                 InkWell(
                  child: const Text('Connexion',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                  onTap: () =>{
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) =>const Connexion(),)
                  )
                  },
                )



            ],
            ),
            ),

          ))
        ],
      ),
    );
  });
}
