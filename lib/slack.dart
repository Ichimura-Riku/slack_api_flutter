library slack.api;

import "dart:async";
import "dart:convert";
import "dart:io";

// エラーが出るから一旦コメントアウト
import "package:flutter/cupertino.dart";
import "package:fluttertoast/fluttertoast.dart";
import "package:http/http.dart" as http;

// part "src/slack/client.dart";
// part "src/slack/bot.dart";
// part "src/slack/events.dart";
// part "src/slack/errors.dart";

class Slack {
  static Future<void> slack(PostModel postData, String reasonValue) async {
    Fluttertoast.showToast(msg: "slack bot button");
    const String slackToken =
        '';
    Uri slackUri = Uri.parse("https://slack.com/api/chat.postMessage");
    Map<String, Object> data = {
      "channel": "T05F98P6F28",
      "text": postData.title,
      "attachments": [
        {
          "fallback": "fallback string",
          "title": "このスレッドを削除しますか？",
          "callback_id": "callback_id value",
          "color": "#FF0000",
          "attachment_type": "default",
          "actions": [
            {
              "name": "削除",
              "text": "削除",
              "type": "button",
              "style": "danger",
              "value": postData.postId,
              "confirm": {
                "title": "本当に削除しますか？",
                "text": "このスレッドは削除されてしまいます",
                "ok_text": "Yes",
                "dismiss_text": "No"
              }
            }
          ]
        }
      ]
    };
    final http.Response response = await http.post(
      slackUri,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $slackToken",
      },
      body: json.encode(data),
    );

  }
}

class PostModel {
  final String title;
  final String postId;
  PostModel({required this.title, required this.postId});
}
