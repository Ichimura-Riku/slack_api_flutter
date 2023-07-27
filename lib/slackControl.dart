library slack.api;

import 'package:slack_notifier/slack_notifier.dart';

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

class SlackControl {
  static slackSend() {
    Fluttertoast.showToast(msg: "slack Send!");
    final slack =
        SlackNotifier('<webhookLink>');
    debugPrint('slack Send');
    slack.send(
      '物品の貸し出しがありました',
      channel: 'flutterアプリテストチャンネル',
      iconEmoji: ':chart_with_upwards_trend:',
      iconUrl: 'https://picsum.photos/48/48',
      username: 'My Bot',
      blocks: [SectionBlock(text: '物品の貸し出しがありました')],
      attachments: [Attachment(pretext: '○○さん', text: '物品名')],
    );
  }
}
