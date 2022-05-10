import 'package:flutter/material.dart';

void main() {
  runApp(const Caculator());
}

class Caculator extends StatelessWidget {
  const Caculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic _currentResult = '0';
  dynamic _lastResult = '';
  String _method = '';

  @override
  Widget build(BuildContext context) {
    var numbers = [
      [
        {"value": "C", "type": "clear"},
        {"value": "()", "type": "method"},
        {"value": "%", "type": "method"},
        {"value": "+", "type": "method"}
      ],
      [
        {"value": 1, "type": "number"},
        {"value": 2, "type": "number"},
        {"value": 3, "type": "number"},
        {"value": "-", "type": "method"}
      ],
      [
        {"value": 4, "type": "number"},
        {"value": 5, "type": "number"},
        {"value": 6, "type": "number"},
        {"value": "*", "type": "method"}
      ],
      [
        {"value": 7, "type": "number"},
        {"value": 8, "type": "number"},
        {"value": 9, "type": "number"},
        {"value": "/", "type": "method"}
      ],
      [
        {"value": ".", "type": "number"},
        {"value": 0, "type": "number"},
        {"value": ",", "type": "number"},
        {"value": "=", "type": "result"}
      ]
    ];

    void onClear(dynamic clear) {
      setState(() {
        _lastResult = '';
        _currentResult = '0';
        _method = '';
      });
    }

    void setNumber(dynamic num) {
      String _number = '';
      if (_currentResult == '0' ||
          _currentResult == '+' ||
          _currentResult == '-' ||
          _currentResult == '/' ||
          _currentResult == '*' ||
          _currentResult == '%') {
        _number = "$num";
      } else {
        if (_method == '' || (_method != '' && _lastResult != '0')) {
          _number = "$_currentResult$num";
        } else {
          _number = "$num";
        }
      }
      setState(() {
        _currentResult = _number;
      });
    }

    void setMethod(String method) {
      setState(() {
        if (_method == '') {
          _lastResult = _currentResult;
          _currentResult = method;
          _method = method;
        } else {
          _currentResult = method;
          _method = method;
        }
      });
    }

    void handleResult(dynamic result) {
      dynamic _result = 0;
      if (_method == '' || (_method != '' && _lastResult == '')) {
        _result = _currentResult;
      } else {
        double _lastNumber = _lastResult.runtimeType == String
            ? double.parse("$_lastResult")
            : _lastResult;
        double _currentNumber = _currentResult.runtimeType == String
            ? double.parse("$_currentResult")
            : _currentResult;
        switch (_method) {
          case '+':
            _result = _lastNumber + _currentNumber;
            break;
          case '-':
            _result = _lastNumber - _currentNumber;
            break;
          case '*':
            _result = _lastNumber * _currentNumber;
            break;
          case '/':
            _result = _lastNumber / _currentNumber;
            break;
          case '%':
            _result = _lastNumber % _currentNumber;
            break;
          default:
        }
      }
      setState(() {
        _lastResult = '0';
        _method = '';
        _currentResult = _result;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 500,
            child: Row(
              children: [
                const Expanded(child: SizedBox()),
                Center(
                  child: Text(
                    "$_currentResult",
                    textDirection: TextDirection.rtl,
                    maxLines: 3,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 4))
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: numbers
                  .map((items) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: items.map((e) {
                          dynamic colorBtn;
                          dynamic onPerss;
                          switch (e['type']) {
                            case 'number':
                              colorBtn = Colors.grey;
                              onPerss = setNumber;
                              break;
                            case 'clear':
                              colorBtn = Colors.red;
                              onPerss = onClear;
                              break;
                            case 'method':
                              colorBtn = Colors.orange;
                              onPerss = setMethod;
                              break;
                            case 'result':
                              colorBtn = Colors.green;
                              onPerss = handleResult;
                              break;
                            default:
                              break;
                          }
                          return Column(children: <Widget>[
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            ElevatedButton(
                              child: Text(
                                "${e['value']}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24),
                              ),
                              onPressed: () => onPerss(e['value']),
                              style: ElevatedButton.styleFrom(
                                  primary: colorBtn,
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(24)),
                            )
                          ]);
                        }).toList(),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
