import 'package:flutter/material.dart';
import 'package:gpp_mobile/models/on_boarding.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';

import 'login_view.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemCount: onBoarding.length,
          itemBuilder: (context, index) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 350,
                      width: double.infinity,
                      child: Image.asset(
                        onBoarding[index].image,
                        height: 300,
                      ),
                      // color: ColorPallete.box,
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //     image: AssetImage(onBoarding[index].image),
                      //   ),
                      // ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: ColorPallete.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 15,
                          width: onBoarding[index].width1,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: ColorPallete.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 15,
                          width: onBoarding[index].width2,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorPallete.primary,
                              borderRadius: BorderRadius.circular(10)),
                          height: 15,
                          width: onBoarding[index].width3,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      onBoarding[index].title,
                      style: const TextStyle(
                          fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      onBoarding[index].subTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w200),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginView(),
                              ),
                            );
                          },
                          child: Text(
                            'Lewati',
                            style: TextStyle(
                                color: ColorPallete.primary, fontSize: 24),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_controller.hasClients) {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut);
                            }
                            if (currentIndex == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginView(),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPallete.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
