import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp(appTitle: "Les widgets Basiques"));
}

//Classe qui hérite de Stateless
class MyApp extends StatelessWidget {

  final String appTitle;
  const MyApp({super.key, required this.appTitle});

  //Constructeur
  // const MyApp({super.key}); //key est un accès à notre app. clé qui va référencer cette classe

  // This widget is the root of your application.
  //Buil qui va construire le visuel de l'application. On retourn eun widget
  @override
  Widget build(BuildContext context) { //BuilContext est comme le contexte(de construction) dans lequel va être cré notre application. exemple : taille de l'écran, somme nous en Dark ou light mmode, type d'apparaeil
    // final Size size = MediaQuery.of(context).size;
    // final understandContext = Theme.of(context).textTheme.titleLarge; //prendr le thèe par arapport au contexte de l'application'
    return MaterialApp(
      // title: 'Apprendre les widgets basiques',
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      // darkTheme: ThemeData.dark(),
      home: MyHomePage(title: appTitle),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: FlutterLogo(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //Propriéte de ma classe Stateless
  final String title;

  const MyHomePage({super.key, required this.title});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),
        // backgroundColor: Theme.of(context).colorScheme.onInverseSurface,

        // Les actions sont des listes de Widgets
        actions: const [
          Icon(Icons.person),
          Icon(Icons.access_time),
        ],
        bottom: PreferredSize( 
          preferredSize: Size.fromHeight(24), //Taille par rapport à la hauteur
          child: Text("Salut les codeurs"),
        ),
        // backgroundColor: Colors.blue,
        elevation: 8,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.black26],
            begin: Alignment.center,
              end: Alignment.bottomCenter
            )
          ),
          child: CircleAvatar(
            radius: 128,
            backgroundColor: Colors.deepPurpleAccent,
            backgroundImage: AssetImage(
              "assets/images/android_bot.jpg",
              // scale: 5
            ),
            child: Image.network("https://iconape.com/wp-content/png_logo_vector/flutter-logo.png"),
          ),
          // child: Image.network(
          //   height: MediaQuery.of(context).size.height,
          //   // height: 500,
          //   "https://iconape.com/wp-content/png_logo_vector/flutter-logo.png",
          //   fit: BoxFit.contain,
          //   alignment: Alignment.topLeft,
          // ),
        ),
        // child: Image.asset(
        //   "assets/images/android_bot.jpg",
        //   width: MediaQuery.of(context).size.width,
        //   height: 200,
        //   fit: BoxFit.contain,
        //   alignment: Alignment.topLeft,
        //   repeat: ImageRepeat.repeat,
        //   // fit: BoxFit.fill,
        // ),
        // child: Icon(
        //   // FontAwesomeIcons.apple,
        //   // FontAwesomeIcons.android,
        //   FontAwesomeIcons.houseMedical,
        //   // Icons.adb,
        //   color: Colors.deepPurple,
        //   size: 128,
        //   shadows: [
        //     BoxShadow(
        //       color: Colors.red.shade300,
        //       blurRadius: 3,
        //       offset: const Offset(4,4)
        //     )
        //   ],
        // ),


        // child: RichText(text: TextSpan(
        //   text: "Salut ",
        //   style: GoogleFonts.laBelleAurore(
        //     color: Colors.red,
        //     fontSize: 32
        //   ),
        //   children: <TextSpan> [
        //     TextSpan(
        //       text: "Les Flutteristes",
        //       style: GoogleFonts.aBeeZee(
        //         color: Colors.blue
        //       ),
        //     ),
        //     TextSpan(
        //       text: ' !',
        //       style: Theme.of(context).textTheme.headlineLarge
        //       // style: TextStyle(
        //       //   fontWeight: FontWeight.bold,
        //       //   color: Colors.deepPurple
        //       // )
        //     )
        //   ]
        // ))
        // Text(
        //     "Salut les codeurs ! Comment allez-vous aujourd'hui? Comment se passe votre apprentissage de Flutter",
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     fontFamily: 'coolvetica',
        //     fontSize: 34,
        //   ),
        //   // style: GoogleFonts.aBeeZee(
        //   //   color: Colors.red,
        //   //   fontSize: 34
        //   // ),
        //   // style: TextStyle(
        //   //   color: Colors.red,
        //   //   fontSize: 24,
        //   //   fontStyle: FontStyle.italic,
        //   //   fontWeight: FontWeight.bold,
        //   //   fontFamily: 'Roboto',
        //   //   // fontFamily: 'Times new roman',
        //   // ),
        //   // overflow: TextOverflow.ellipsis,
        //   // textDirection: TextDirection.rtl,
        //   // maxLines: 1,
        // ),
        // child: Container(
        //   //Si on veut juste utiliser de la dimension on va préférer utiliser un sizeBox mais si on utilise plus alors utiliser container
        //   color: Colors.deepOrange,
        //   // height: 128, //128 pixels
        //   height: MediaQuery.of(context).size.height / 3, //Prendra 1/3 de mon écran
        //   width: MediaQuery.of(context).size.width * 0.8, //80%
        //   alignment: Alignment.bottomCenter,
        //   // margin: const EdgeInsets.all(16),
        //   // padding: const EdgeInsets.all(16), //ESpace enrte conteneur et son contenu
        //   child: Container(
        //     color: Colors.deepPurple,
        //     // margin: const EdgeInsets.all(16),
        //     margin: const EdgeInsets.fromLTRB(10, 20, 30, 40),
        //     // margin: const EdgeInsets.only(
        //     //   left: 12,
        //     //   right: 24,
        //     //   top: 43,
        //     //   bottom: 54
        //     // ),
        //     // padding: const EdgeInsets.symmetric(
        //     // horizontal: 24,
        //     //   vertical: 34
        //     // ),
        //     // padding: const EdgeInsets.all(24),
        //     child: Padding(
        //         padding: const EdgeInsets.all(33),
        //       child: Container(
        //         // color: const Color.fromARGB(128, 255, 0, 0), //On auara la alpha value de 0 à transparent
        //         // color: const Color.fromRGBO(155, 54, 128, 0), // Opacity prend entre 0 et 1 car cecsont des pourcentages
        //         color: Colors.lightBlue,
        //         // color: const Color(0xFFFF99C8), //metre la couleur en hexadécimal
        //         // color: Theme.of(context).colorScheme.onPrimaryContainer,
        //       ),
        //     ),
        //
        //   ),


          // decoration:  BoxDecoration(
          //   color: Colors.red,
          //   // shape: BoxShape.circle,
          //   borderRadius: BorderRadius.circular(56),
          //   boxShadow: const [
          //     BoxShadow(
          //       color: Colors.black54,
          //       blurRadius: 4,
          //       offset: Offset(2, 2)
          //     )
          //   ],
          //   // border: Border.all(
          //   //   color: Colors.blue,
          //   //   width: 3,
          //   //   style: BorderStyle.solid,
          //   // )
          //   gradient: const LinearGradient(
          //     // colors: [Colors.red, Colors.blue, Colors.yellow],
          //     colors: [Colors.black, Colors.black38],
          //   begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //     // begin: Alignment.topCenter,
          //     // end: Alignment.bottomCenter,
          //     // stops: [0, 0.5, 1]
          //     stops: [0, 0.7],
          //   )
          // ),
        ),
        // widthFactor: 3,
        // heightFactor: 4,
        // child:  FlutterLogo(
        //   // size: MediaQuery.of(context).size.width / 2, //Que ce logo fasse la moitié de la largeur
        //   size: 128,
        //   style: FlutterLogoStyle.stacked,
        //   // textColor: Colors.red,
        //   // duration: Duration(milliseconds: 2000),
        //   // curve: Curves.bounceIn,
        // ),
        // child: const SizedBox.square(
        // child: SizedBox.expand(
        //   // height: 200,
        //   // width: 350,
        //   // dimension: 355,
        //   child: Card(),
        // ),
      // )


      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){
      //
      //     },
      //   child: const Icon(Icons.send),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // drawer: const Drawer(),
      // endDrawer: const Drawer(),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
      //   ]),
    );
  }

}

