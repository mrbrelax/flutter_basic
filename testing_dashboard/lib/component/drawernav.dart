import 'package:flutter/material.dart';

class DrawerNavPage extends StatelessWidget {
  const DrawerNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Bimantara Sutato Putra"),
            accountEmail: const Text("bimantara2000.bsp2521@gmail.com"),
            currentAccountPicture: ClipOval(
              child: Image.network(
                  "https://media.licdn.com/dms/image/D5603AQGCkGVMk94q7A/profile-displayphoto-shrink_400_400/0/1690715307990?e=2147483647&v=beta&t=i46Y1Azfb3c0yb4U5AVGUwDCQpOx--d0GPGmAoKSK7o"),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1518070588484-2b53926cba76?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z3VudW5nfGVufDB8fDB8fHww"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Friends"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.movie),
            title: const Text("Movie"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: const Text("Library"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.headphones),
            title: const Text("Music & Podcast"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
