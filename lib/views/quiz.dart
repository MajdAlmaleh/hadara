import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:hadara/constants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final _controller = ConfettiController();
  int counter = 1;
  bool _changeColor = false;
  bool isDone = false;
  List<String> q = ['السؤال الاول', 'السؤال الثاني', 'السؤال الثالث', ''];
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _changeColor ? Colors.red : Colors.white,
      appBar: AppBar(
          backgroundColor: kAppColor,
          leading: Center(
              child: counter == 4 ? const Text('1/3') : Text('$counter/3')),
          title: Row(
            children: [
              const SizedBox(
                width: 65,
              ),
              SizedBox(
                width: 150,
                child: LinearProgressIndicator(
                  value: counter / 3,
                ),
              ),
            ],
          )),
      body: Column(
        children: [
          ConfettiWidget(
            confettiController: _controller,
            blastDirection: 90,
            blastDirectionality: BlastDirectionality.explosive,
            numberOfParticles: 50,
          ),
          Center(child: Image.asset('assets/images/1.png')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(q[counter - 1]),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(_changeColor
                            ? const Color.fromARGB(255, 0, 252, 13)
                            : const Color.fromARGB(255, 23, 37, 195)),
                      ),
                      onPressed: () {
                        counter += 1;
                        setState(() {
                          _controller.play();
                        });

                        if (counter == 4) {
                          counter = 1;
                          showDialog(
                            context: context,
                            builder: (context) => Container(
                              height: 300,
                              width: 400,
                              color: Colors.white,
                              child: const Scaffold(
                                body: Center(
                                    child:
                                        Text('احسنت! لقد اجبت على كل الاسئلة')),
                              ),
                            ),
                          );
                        }
                      },
                      child: const Text('1')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 122, 59, 203))),
                      onPressed: () async {
                        counter += 1;
                        setState(() {
                          _controller.stop();
                        });
                        _changeColor = true;
                        await Future.delayed(const Duration(milliseconds: 150),
                            () {
                          setState(() {
                            _changeColor = false;
                          });
                        });
                        await Future.delayed(const Duration(milliseconds: 50),
                            () {
                          setState(() {
                            _changeColor = true;
                          });
                        });

                        await Future.delayed(const Duration(milliseconds: 150),
                            () {
                          setState(() {
                            _changeColor = false;
                          });
                        });

                        if (counter == 4) {
                          counter = 1;
                          showDialog(
                            context: context,
                            builder: (context) => Container(
                              height: 300,
                              width: 400,
                              color: Colors.white,
                              child: const Scaffold(
                                body: Center(
                                    child:
                                        Text('احسنت! لقد اجبت على كل الاسئلة')),
                              ),
                            ),
                          );
                        }
                      },
                      child: const Text('2')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 140, 205, 223))),
                      onPressed: () async {
                        counter += 1;
                        setState(() {
                          _controller.stop();
                        });
                        _changeColor = true;
                        await Future.delayed(const Duration(milliseconds: 150),
                            () {
                          setState(() {
                            _changeColor = false;
                          });
                        });
                        await Future.delayed(const Duration(milliseconds: 50),
                            () {
                          setState(() {
                            _changeColor = true;
                          });
                        });

                        await Future.delayed(const Duration(milliseconds: 150),
                            () {
                          setState(() {
                            _changeColor = false;
                          });
                        });

                        if (counter == 4) {
                          counter = 1;
                          showDialog(
                            context: context,
                            builder: (context) => Container(
                              height: 300,
                              width: 400,
                              color: Colors.white,
                              child: const Scaffold(
                                body: Center(
                                    child:
                                        Text('احسنت! لقد اجبت على كل الاسئلة')),
                              ),
                            ),
                          );
                        }
                      },
                      child: const Text('3')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 162, 99, 154))),
                      onPressed: () async {
                        counter += 1;
                        setState(() {
                          _controller.stop();
                        });
                        _changeColor = true;
                        await Future.delayed(const Duration(milliseconds: 150),
                            () {
                          setState(() {
                            _changeColor = false;
                          });
                        });
                        await Future.delayed(const Duration(milliseconds: 50),
                            () {
                          setState(() {
                            _changeColor = true;
                          });
                        });

                        await Future.delayed(const Duration(milliseconds: 150),
                            () {
                          setState(() {
                            _changeColor = false;
                          });
                        });

                        if (counter == 4) {
                          counter = 1;
                          showDialog(
                            context: context,
                            builder: (context) => Container(
                              height: 300,
                              width: 400,
                              color: Colors.white,
                              child: const Scaffold(
                                body: Center(
                                    child:
                                        Text('احسنت! لقد اجبت على كل الاسئلة')),
                              ),
                            ),
                          );
                        }
                      },
                      child: const Text('4')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
