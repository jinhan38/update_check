import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:update_check/firebase_api/firebase_api.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _html = "html";
  String htmlWithLink =
      "gs://update-check-c616c.appspot.com/temp/temp_html_file.html";
  String htmlNoLink =
      "gs://update-check-c616c.appspot.com/temp/temp_html_no_link.html";
  String htmlWithButton =
      "gs://update-check-c616c.appspot.com/temp/temp_html_button.html";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => _getData(htmlWithLink),
                child: const Text("불러오기(링크)"),
              ),
              ElevatedButton(
                onPressed: () => _getData(htmlNoLink),
                child: const Text("불러오기(링크 없음)"),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _html = "html"),
                child: const Text("초기화"),
              ),
              const SizedBox(height: 50),
              Html(
                data: _html,
                onLinkTap: (url, context, attributes, element) {
                  showToast(url.toString());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _getData(String htmlLink) async {
    _html = await FirebaseApi().getHtmlText(htmlLink);
    setState(() {});
  }

  void showToast(String msg) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.black.withOpacity(0.75));
  }
}
