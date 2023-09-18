import 'package:flutter/material.dart';
import 'package:parsuram/bmiPage.dart';
import 'package:parsuram/calculatorPage.dart';
import 'package:parsuram/cardPage.dart';
import 'package:parsuram/constraintPage.dart';
import 'package:parsuram/containerAnimation.dart';
import 'package:parsuram/crossFadePage.dart';
import 'package:parsuram/dashboardPage.dart';
import 'package:parsuram/datePickerPage.dart';
import 'package:parsuram/expendedWidget.dart';
import 'package:parsuram/getDateTimePage.dart';
import 'package:parsuram/gridViewPage.dart';
import 'package:parsuram/heroAnimationPage.dart';
import 'package:parsuram/imageAvatarPage.dart';
import 'package:parsuram/introPage.dart';
import 'package:parsuram/listPage.dart';
import 'package:parsuram/listTilePage.dart';
import 'package:parsuram/listwheelPage.dart';
import 'package:parsuram/opacityAnimationPage.dart';
import 'package:parsuram/range%20Slidder%20Page.dart';
import 'package:parsuram/splashPage.dart';
import 'package:parsuram/stFULLpage.dart';
import 'package:parsuram/stack.dart';
import 'package:parsuram/ui_helper.dart';
import 'package:parsuram/userInputPage.dart';
import 'package:parsuram/widgets/rounded_btn.dart';
import 'package:parsuram/wrapPage.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          displayMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w800, color: Colors.orange),
          titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
      home: const SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callBack() => print('Clicked CallBack Function');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Demo'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shadowColor: Colors.blue,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Welcome',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: Colors.black38),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedButton(
                btnName: '3D List',
                callBack: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListAnimation(),
                      ));
                },
              ),
              RoundedButton(
                btnName: 'Animate Opacity',
                callBack: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OpacityAni(),
                      ));
                },
              ),
              RoundedButton(
                btnName: 'cross Fade',
                bgColor: Colors.blueGrey.shade300,
                callBack: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CrossFadePage(),
                      ));
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HiroAnim()));
                  },
                  child: Text('Hero Animation')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FoAnimation()));
                  },
                  child: Text('Container Animation')),
              RoundedButton(
                btnName: 'BMI Calculator',
                bgColor: Colors.blue,
                callBack: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMICalculatorPage(),
                      ));
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Range(),
                        ));
                  },
                  child: const Text('RangeSlidder')),
              RoundedButton(
                btnName: 'Data Passing',
                callBack: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ));
                },
              ),
              RoundedButton(
                btnName: 'ConstrainedBox',
                callBack: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConstraintBoxPage(),
                      ));
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SimpleCalculation(),
                        ));
                  },
                  child: const Text('Calculator')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WorkingFulW(),
                        ));
                  },
                  child: const Text('StatefulWidget')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WrapPage(),
                        ));
                  },
                  child: const Text('Wrap Widget')),
              SizedBox(
                // height: 50,
                width: 150,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: const Icon(Icons.play_arrow),
                  callBack: () {
                    print('Login in...');
                  },
                  textStyle: mTextStyle15(),
                ),
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: RoundedButton(
                  btnName: 'press',
                  callBack: () {
                    print('playing...');
                  },
                  bgColor: Colors.orange,
                  textStyle: mTextStyle15(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StackPage(),
                        ));
                  },
                  child: const Text('Stack')),
              ElevatedButton(
                  onPressed: callBack, child: const Text('CallBack Fun')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyPage(),
                        ));
                  },
                  child: const Text('Grid')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DatePickerPage(),
                        ));
                  },
                  child: const Text('Picker')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageDT(),
                        ));
                  },
                  child: const Text('Date Time')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserText()));
                  },
                  child: const Text('User')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CardWidget()));
                  },
                  child: const Text('Card')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ImageAvatar(),
                        ));
                  },
                  child: const Text('Avatar')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListTilePage(),
                        ));
                  },
                  child: const Text('List Tile')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExpandedWidget(),
                        ));
                  },
                  child: const Text('Expanded & Flex')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListPage()));
                  },
                  child: const Text('List')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroPage()));
                  },
                  child: const Text('click'))
            ],
          ),
        ),
      ),
    );
  }
}
