import 'package:amazon_prime_music/data/assets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      appBar: AppBar(
        title: Image.asset(
          Assets.amazonLogo,
          width: MediaQuery.of(context).size.width * 1 / 3,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.notifications,
          ),
          onPressed: () {},
        ),
      ),
      body: Suggestions(), 
    );
  }
}

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: const Text(
                  "You Might Like",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "SEE MORE",
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: const [
        const BottomNavigationBarItem(
          label: "HOME",
          icon: const Icon(
            Icons.home,
          ),
        ),
        const BottomNavigationBarItem(
          label: "FIND",
          icon: const Icon(
            Icons.search,
          ),
        ),
        const BottomNavigationBarItem(
          label: "LIBRARY",
          icon: const Icon(
            Icons.headset,
          ),
        ),
        const BottomNavigationBarItem(
          label: "ALEXA",
          icon: const Icon(
            MdiIcons.amazonAlexa,
          ),
        ),
      ],
    );
  }
}

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        Assets.amazonLogo,
        width: MediaQuery.of(context).size.width * 1 / 3,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
          ),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(
          Icons.notifications,
        ),
        onPressed: () {},
      ),
    );
  }
}
