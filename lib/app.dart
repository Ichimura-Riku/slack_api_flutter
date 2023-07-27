import 'package:flutter/material.dart';
import 'package:slack_api_flutter/slackControl.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // PostModel postData = PostModel(title: "test", postId: "111111111");
    // Slack.slack(postData, "reason");
    return Scaffold(
      appBar: AppBar(
        title: const Text("slackBotTest"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hello World'),
            FloatingActionButton(onPressed: () =>
              SlackControl.slackSend()
            ),
          ],
        ),
      ),
    );
  }
}
