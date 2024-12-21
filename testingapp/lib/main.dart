import 'package:flutter/material.dart';
import 'package:testingapp/pages/call.dart';
import 'package:testingapp/pages/group.dart';
import 'package:testingapp/pages/message.dart';
import 'package:testingapp/pages/profiles.dart';
import 'package:testingapp/pages/update.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset("assets/images/RelaxChatting_Logo.png", height: 55),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
          ],
        ),
        leading: Builder(
          builder: (context) => Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Image.asset("assets/images/drawer-header.png"),
              Positioned(
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        bottom: _buildTabBar(),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
             const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("Mr.B Relax"),
              accountEmail: Text("mrbrelax56@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
            ),
            // ListTile(
            //   leading: const Icon(Icons.payments_rounded),
            //   title: const Text("RelPay"),
            //   onTap: () {},
            // ),
            ListTile(
              leading: Image.asset("assets/images/profile.png", scale: 12.0),
              title: const Text("Profile", style: TextStyle(color: Colors.black)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {return ProfilePages();}));
              },
            ),
            Divider(color: Colors.grey[350],),
            ListTile(
              leading: const Icon(Icons.ondemand_video_sharp, color: Colors.black),
              title: const Text("RelMovie", style: TextStyle(color: Colors.black)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.black),
              title: const Text("Settings", style: TextStyle(color: Colors.black)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          MessagPage(),
          GroupPage(),
          UpdatesPage(),
          CallPage(),
        ],
      ),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      unselectedLabelColor: Colors.black,
      indicatorColor: Colors.blue,
      labelColor: Colors.blue,
      controller: _tabController,
      tabs: <Widget>[
        Tab(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _tabController.index == 0 ? Colors.blue : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                "assets/images/message.png",
                width: 30,
                height: 30,
              ),
            ),
            text: 'Chat'),
        const Tab(icon: Icon(Icons.group), text: 'Group'),
        const Tab(icon: Icon(Icons.refresh), text: 'Updates'),
        const Tab(icon: Icon(Icons.call), text: 'Calls'),
      ],
    );
  }
}
