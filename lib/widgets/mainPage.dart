import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_bookings/defaults.dart';
import 'appDrawerDivider.dart';
import 'appDrawerTiles.dart';
import '../pages/Locations/SelectLocation.dart';
import '../pages/channels/selectchannel.dart';
import '../pages/counter/counter.dart';
import '../pages/profileLogin/profileLogin.dart';
import '../pages/profile_UI/profileUI.dart';
import '../pages/sampleImages.dart';
import '../main.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    const ProfileLogin(),
    const Profile_UI(),
    const MyCounter(),
    const SelectLocations(),
    const SelectChannels(),
    const SampleImages(),
  ];

  VoidCallback updateState(int index) {
    return () {
      setState(() {
        // Sets the state/page to the index of the clicked page
        indexClicked = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 100, 172),
        title: Text(
          "Wiz Travels",
          style: GoogleFonts.robotoMono(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: pages[indexClicked], // Opens the page that was clicked
      drawer: Drawer(
      backgroundColor: const Color.fromARGB(255, 60, 61, 61),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("Assets/Images/drawer.jpg"),
                ),
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("Assets/Images/placeholder.png"),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Profile view",
                      style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "profile@view.com",
                      style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // "Expanded" is a widget that gives a "ListView" unspecified height.
            // It helps the ListView to take up all available space in the column.
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  AppDrawerTiles(
                    index: 0,
                    onTap: updateState(0),
                  ),
                  AppDrawerTiles(
                    index: 1,
                    onTap: updateState(1),
                  ),
                  AppDrawerTiles(
                    index: 2,
                    onTap: updateState(2),
                  ),
                  AppDrawerTiles(
                    index: 3,
                    onTap: updateState(3),
                  ),
                  AppDrawerTiles(
                    index: 4,
                    onTap: updateState(4),
                  ),
                  AppDrawerTiles(
                    index: 5,
                    onTap: updateState(5),
                  ),
                  const SizedBox(height: 30),
                  const AppDrawerDivider(),
                  const SizedBox(height: 15),
                  Center(
                    child: Text(
                      "Obainho Designs",
                      style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Center(
                    child: Text(
                      "Version 1.2.5",
                      style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        color: Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AppDrawerDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

