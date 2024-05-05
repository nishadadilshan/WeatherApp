import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/weather_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(35, 1.0 * kToolbarHeight, 35, 20),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if(state is WeatherSuccess){
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(4, -0.2),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-4, -0.2),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, -1.2),
                    child: Container(
                      height: 300,
                      width: 600,
                      decoration: const BoxDecoration(
                        // color: Color(0xFFFFAB40),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.transparent),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '📌 Nittambuwa',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Good Morning',
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Image.asset('assets/2.png'),
                        const Center(
                          child: Text(
                            '21˚C',
                            style: TextStyle(color: Colors.white, fontSize: 55, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'SNOW',
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Center(
                          child: Text(
                            'Friday 15 - 09.41am',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ''
                                  'assets/11.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sunrice',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '05.34 am',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ''
                                  'assets/12.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sunset',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '06.34 pm',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ''
                                  'assets/13.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Max Temp',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '21˚C',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ''
                                  'assets/14.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Min Temp',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '12˚C',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
            }else{
              return const Center(
                child: Column(
                  children: [
                    CircularProgressIndicator()
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
