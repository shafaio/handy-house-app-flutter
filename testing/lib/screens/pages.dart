import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:testing/screens/bellas.dart';
import 'package:testing/screens/berkeley.dart';
import 'package:testing/screens/bhajo.dart';
import 'package:testing/screens/myan.dart';
import 'package:testing/screens/sicth.dart';
import 'package:testing/screens/takken.dart';
import 'package:testing/screens/tezz.dart';
import 'package:testing/screens/travis.dart';

class Travis extends StatelessWidget {
  const Travis({super.key});

  @override
  Widget build(BuildContext context) {
    // Fuction yang menampilkan/memunculkan dialog yang diimpor dari pubspec
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'FOREMAN!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/travis.png'),
          Text(
            'Travis Crecker',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              'Travis Cracker is a foreman who is very skilled in his field. A foreman is someone who has a leadership and supervisory role in a construction or other project. The foreman is responsible for organizing and supervising the work in the field, ensuring that the work is in accordance with the specified schedule and specifications, as well as ensuring the safety and quality of the work.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child:
                  Text('His expertise', style: TextStyle(color: Colors.black))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Crecker())));
              },
              child: Text('His services'))
        ],
      ),
    );
  }
}

class John extends StatelessWidget {
  const John({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'BUILDER!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/john.png'),
          Text(
            'John Berkeley,',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
              'A builder is someone who has skills in carrying out construction work and physical development. They are trained in various aspects of development, such as structural construction, installation of building materials, maintenance and repair, and the use of tools required for the job. The duties of a builder include installing building materials such as bricks, concrete blocks, or wood, installing tiles, installing roof trusses, installing windows and doors, and installing pipes and drains.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child:
                  Text('His Expertise', style: TextStyle(color: Colors.black))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Berkeley())));
              },
              child: Text('His service'))
        ],
      ),
    );
  }
}

class Terry extends StatelessWidget {
  const Terry({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'TECHNICIAN!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/terry.png'),
          Text(
            'Terry Bhajo,',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
              'An electrician is someone who has knowledge and skills in the field of installation, repair and maintenance of electrical systems. They are trained to work with a variety of electrical components, including cables, electrical panels, switches, sockets, and other electrical devices. The duties of an electrician include the installation of electrical systems, including the installation of cables and electrical devices such as switches and outlets. They also carry out routine repairs and maintenance, such as replacing damaged components, repairing frayed cables.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child:
                  Text('His Expertise', style: TextStyle(color: Colors.black))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Bhajo())));
              },
              child: Text('His service'))
        ],
      ),
    );
  }
}

class Paul extends StatelessWidget {
  const Paul({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'GARDENER!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/paul.png'),
          Text(
            'Paul Takken,',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
              'A gardener is someone who has expertise and knowledge in caring for, maintaining and managing a park or garden. The main job of a gardener is to maintain the beauty and health of the garden and ensure that the plants grow well. The duties of a gardener include planting crops, lawn care, pruning trees and shrubs, controlling pests and plant diseases, fertilizing, and proper watering. They can also design and plan gardens, choose plants according to the climate and soil conditions.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child:
                  Text('His Expertise', style: TextStyle(color: Colors.black))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Takken())));
              },
              child: Text('His service'))
        ],
      ),
    );
  }
}

class Masha extends StatelessWidget {
  const Masha({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'DRIVER!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/masha.png'),
          Text(
            'Masha Sicth,',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
              'A driver is a person who operates a vehicle to transport people, goods, or both from one location to another. They are responsible for safely navigating the roads, following traffic laws, and ensuring the well-being of passengers or the safe delivery of goods. The duties of a driver can vary depending on the type of vehicle they operate. For example, taxi drivers transport passengers to their requested destinations, while truck drivers transport goods over long distances.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child:
                  Text('His Expertise', style: TextStyle(color: Colors.black))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Sicth())));
              },
              child: Text('His service'))
        ],
      ),
    );
  }
}

class David extends StatelessWidget {
  const David({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'MECHANIC!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/david.png'),
          Text(
            'David Tezz,',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
              ' Mechanic is a skilled professional who specializes in repairing, maintaining, and diagnosing issues with vehicles or machinery. They possess expertise in the mechanical, electrical, and sometimes electronic systems of various types of vehicles or equipment. The duties of a mechanic can include inspecting vehicles or machinery, identifying problems or malfunctions, performing repairs or replacements of faulty parts, conducting regular maintenance services.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child:
                  Text('His Expertise', style: TextStyle(color: Colors.black))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Tezz())));
              },
              child: Text('His service'))
        ],
      ),
    );
  }
}

class Shenny extends StatelessWidget {
  const Shenny({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'ARTIST!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/shenny.png'),
          Text(
            'Shenny Myan,',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
              'An artist is someone who creates works of art as a form of creative expression. They use various mediums and techniques, such as painting, sculpture, photography, sculpture, printmaking, installation art, performance art, and many more, to produce works of art that are unique and meaningful. An artists duties include developing creative concepts or ideas, planning and designing works of art, mastering the necessary techniques and tools.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child: Text(
                'His Expertise',
                style: TextStyle(color: Colors.black),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Myan())));
              },
              child: Text('His service'))
        ],
      ),
    );
  }
}

class Cherrys extends StatelessWidget {
  const Cherrys({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      QuickAlert.show(
          confirmBtnColor: Color(0xfff9dc5c),
          context: context,
          title: 'ARCHITECT!',
          text: 'Very experienced in this field!',
          type: QuickAlertType.success);
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/cherrys.png'),
          Text(
            'Cherrys Bellas,',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
              'Architect is a professional who has knowledge and skills in designing, planning and supervising the construction of buildings and the environment. They are responsible for incorporating functional, aesthetic and technical aspects in building design. The duties of an architect include designing building concepts and drawings, coordinating with clients to understand their needs and expectations, producing detailed blueprints or technical drawings, selecting materials according to needs and budget.'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                showAlert();
              },
              child:
                  Text('Her Expertise', style: TextStyle(color: Colors.black))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Bellas())));
              },
              child: Text('Her service'))
        ],
      ),
    );
  }
}
