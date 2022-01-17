import 'package:flutter/material.dart';
import 'package:oboarding_pageview/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    const SliderPage(
      title: "Seluruh Dunia",
      description: "Ayo terhubung dengan teman, saudara diseluruh dunia",
      image: "assets/img/connected_world.svg",
    ),
    const SliderPage(
      title: "Group Chat",
      description: "Gabung ke Group Chat tanpa batas pengguna",
      image: "assets/img/group_chat.svg",
    ),
    const SliderPage(
      title: "Online Chat",
      description:
          "Mengirim Pesan dengan santai dan nyaman dimana saja dan kapan saja",
      image: "assets/img/online_chat.svg",
    ),
    const SliderPage(
      title: "Terenkripsi",
      description:
          "Terenkripsi sehingga Mengirim pesan sampai telpon dengan aman dan nyaman",
      image: "assets/mobile_encryption.svg",
    ),
  ];
  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, int index) {
              return _pages[index];
            },
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _onChanged,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (int index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 10,
                    width: (index == _currentPage) ? 30 : 10,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: (index == _currentPage)
                          ? Colors.blue
                          : Colors.blue.withOpacity(0.5),
                    ),
                  );
                }),
              ),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOutQuint,
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 70,
                  alignment: Alignment.center,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: (_currentPage == (_pages.length - 1))
                      ? const Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      : const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50,
                        ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
