import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import 'result_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isTextFieldEmpty = true;
  String _enteredText = '';


  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(() {
      setState(() {
        _isTextFieldEmpty = _textEditingController.text.isEmpty;
        _enteredText = _textEditingController.text;
      });
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              width: 300,
              height: 280,
              image: AssetImage(
                  'images/home_page_image.png',

              ),
            ),

            const SizedBox(
              height: 30.0,
            ),

            const Center(
              child: Text(
                "ENTER PASSPHRASE",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(
              height: 30.0,
            ),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.67,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(color: Colors.blue, width: 4.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(

                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: "Enter Security Key",
                      suffixIcon: _isTextFieldEmpty ? null : IconButton(
                        icon: const Icon(
                          Icons.clear,
                        ),
                        onPressed: () {
                          setState(() {
                            _textEditingController.clear();
                            _isTextFieldEmpty = true;
                            _enteredText = '';
                          });
                        },
                      )
                    ),
                  ),
                ),
              ),
            ),

            BottomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> ResultPage(
                      flag: _enteredText,
                    )
                  )
                );
              },
              text: 'Check PassPhrase',
            )

          ],
        ),
      ),
    );
  }
}
