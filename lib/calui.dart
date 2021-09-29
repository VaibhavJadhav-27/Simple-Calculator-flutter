import 'package:flutter/material.dart';

class CalUI extends StatefulWidget {
  const CalUI({Key? key}) : super(key: key);

  @override
  _CalUIState createState() => _CalUIState();
}

class _CalUIState extends State<CalUI> {
  List<String> datalist = ['+', '-', '*', '/', '%'];
  String dl = "";
  String ans = "";
  String output = "";
  double a = 0, b = 0;
  String sign = "";
  String temp = "";
  String temp1 = "";
  String c = "";

  int x = 0, y = 0, z = 0;

  void onepressed() {
    //1 button pressed
    dl = dl + "1";
    ans = output;
    setState(() {
      print(dl);
    });
  }

  void twopressed() {
    //2 button pressed
    dl = dl + "2";
    ans = output;
    setState(() {
      print(dl);
    });
  }

  void threepressed() {
    //3 button pressed
    dl = dl + "3";
    ans = output;
    setState(() {
      print(dl);
    });
  }

  void fourpressed() {
    //4 button pressed
    dl = dl + "4";
    ans = output;
    setState(() {
      print(dl);
    });
  }

  void fivepressed() {
    //5 button pressed
    dl = dl + "5";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void sixpressed() {
    //6 button pressed
    dl = dl + "6";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void sevenpressed() {
    //7 button pressed
    dl = dl + "7";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void eightpressed() {
    //8 button pressed
    dl = dl + "8";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void ninepressed() {
    //9 button pressed
    dl = dl + "9";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void zeropressed() {
    //0 button pressed
    dl = dl + "0";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void zero0pressed() {
    //00 button pressed
    dl = dl + "00";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void dotpressed() {
    //. button pressed
    dl = dl + ".";
    ans = dl;
    setState(() {
      print(dl);
    });
  }

  void ACpressed() {
    //AC button pressed

    setState(() {
      dl = "";
      output = "";
      a = 0;
      b = 0;
      sign = "";
      x = 0;
      y = 0;
      z = 0;
      temp = "";
      temp1 = "";
      c = "";
      print(dl);
      print(output);
    });
  }

  void addpressed() {
    //+ button pressed
    dl = dl + " + ";
    setState(() {
      print(dl);
    });
  }

  void subpressed() {
    //. button pressed
    dl = dl + " - ";
    setState(() {
      print(dl);
    });
  }

  void mulpressed() {
    //* button pressed
    dl = dl + " * ";
    setState(() {
      print(dl);
    });
  }

  void divpressed() {
    //div button pressed
    dl = dl + " / ";
    setState(() {
      print(dl);
    });
  }

  void perpressed() {
    //% button pressed

    //dl = dl + " % ";
    setState(() {
      c = dl;
      dl = "";
      for (int i = 0; i < c.length - 1; i++) {
        dl = dl + c[i];
      }
      print(dl);
    });
  }

  void ans1() {
    //ANS

    setState(() {
      print(ans);
      dl = ans;
      output = "";
    });
  }

  void splitfunction(String dl) {
    for (int i = 0; i < datalist.length; i++) {
      for (int j = 0; j < dl.length; j++) {
        if (datalist[i] == dl[j]) {
          sign = datalist[i];
          print(sign);
          x = i;
          print(x);
          y = j;
          print(y);
          break;
        }
      }
    }
    if (y == 1) {
      a = 0;
      print(a);
      for (int z = y + 1; z < dl.length; z++) {
        temp = temp + dl[z];
      }
      temp.trim();
      b = double.parse(temp);
      print(b.toString());
    } else if (sign == "") {
      a = double.parse(dl);
      b = 0;
    } else {
      for (z = 0; z < y - 1; z++) {
        temp1 = temp1 + dl[z];
      }
      for (z = y + 2; z < dl.length; z++) {
        temp = temp + dl[z];
      }
      temp1.trim();
      temp.trim();
      a = double.parse(temp1);
      b = double.parse(temp);
    }
  }

  void output1(double a, double b, String sign) {
    switch (sign) {
      case '+':
        output = (a + b).toString();
        break;
      case '-':
        output = (a - b).toString();
        break;
      case '*':
        output = (a * b).toString();
        break;
      case '/':
        if (b == 0) {
          output = "N.D";
        } else {
          output = (a / b).toString();
        }
        break;
      case '%':
        output = (a % b).toString();
        break;
      default:
        output = (a).toString();
    }
    ans = output;
  }

  void out2() {
    splitfunction(dl);
    output1(a, b, sign);
    setState(() {
      print(output);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.33,
          child: Container(
            color: Colors.amberAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
                Text(
                  '$dl',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
                Text(
                  '$output',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 05,
          color: Colors.black,
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical: 06)),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              color: Colors.white,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //1st column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                          onPressed: ACpressed,
                          child: Text(
                            'AC',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 48,
                                color: Colors.redAccent),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: sevenpressed,
                          child: Text(
                            '7',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: fourpressed,
                          child: Text(
                            '4',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: onepressed,
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      TextButton(
                          onPressed: zeropressed,
                          child: Text(
                            '0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
                  Column(
                    //2nd Column
                    children: <Widget>[
                      TextButton(
                          onPressed: perpressed,
                          child: Text(
                            'C',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.redAccent),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: eightpressed,
                          child: Text(
                            '8',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: fivepressed,
                          child: Text(
                            '5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: twopressed,
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      TextButton(
                          onPressed: zero0pressed,
                          child: Text(
                            '00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
                  Column(
                    //3rd Column
                    children: <Widget>[
                      TextButton(
                          onPressed: divpressed,
                          child: Text(
                            '/',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.redAccent),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: ninepressed,
                          child: Text(
                            '9',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: sixpressed,
                          child: Text(
                            '6',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: threepressed,
                          child: Text(
                            '3',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                      TextButton(
                          onPressed: dotpressed,
                          child: Text(
                            '.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
                  Column(
                    //4th Column
                    children: <Widget>[
                      TextButton(
                          onPressed: mulpressed,
                          child: Text(
                            '*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.redAccent),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: addpressed,
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.redAccent),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: subpressed,
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.redAccent),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 06)),
                      TextButton(
                          onPressed: out2,
                          child: Text(
                            '=',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.redAccent,
                            ),
                          )),
                      TextButton(
                          onPressed: ans1,
                          child: Text(
                            'Ans',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.redAccent),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
