import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 35),
                child: Container(
                  width: 159,
                  height: 159,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://scontent.febl5-1.fna.fbcdn.net/v/t39.30808-6/270869939_1555738224795354_7757631607559473577_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGItWy-tQKaVGnC0mSooDfFQGrCk7JCqFRAasKTskKoVGb1Lq_-WHVVY_dvhzPW9D3MWAYmyBlbbcCq8a6VSU-9&_nc_ohc=Oau9nO6qbGAAX-Y5zDp&_nc_ht=scontent.febl5-1.fna&oh=00_AT_7MA5txoywmrf-zAF1TeNDfQmDXLdFw5-xcTAv8omtgw&oe=62C3154C'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(90.0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 230, 0),
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              const Text(
                'Karim Kurda',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 60, top: 15, right: 60),
                child: Center(
                  child: Text(
                    'Programmer, Front-End Developer and Freelancer.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              myWidget(
                text: 'Karim kurda',
                color: Colors.white,
                icon: const FaIcon(FontAwesomeIcons.linkedin),
              ),
              myWidget(
                text: 'kkurdaaa',
                color: Colors.white,
                icon: const FaIcon(FontAwesomeIcons.instagram),
              ),
              myWidget(
                text: 'karim kurda',
                color: Colors.white,
                icon: const FaIcon(FontAwesomeIcons.facebook),
              ),
              myWidget(
                text: 'kkurdaaa',
                color: Colors.white,
                icon: const FaIcon(FontAwesomeIcons.github),
              ),
              myWidget(
                text: '7507571920',
                color: Colors.white,
                icon: const FaIcon(FontAwesomeIcons.whatsapp),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myWidget(
      {required String text, required Color color, required Widget icon}) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        height: 54,
        width: 299,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget myContainer({required IconData icon, required Color color}) {
  return Container(
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      color: color,
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    ),
    width: 40,
    height: 40,
    child: Center(
      child: Icon(icon),
    ),
  );
}
