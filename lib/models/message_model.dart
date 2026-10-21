class MessageChat {
  String? id;
  String? customText;
  String? from;
  String? to;
  String? senderJid;
  String? time;
  String? type;
  String? body;
  String? msgtype;
  String? bubbleType;
  String? mediaURL;
  int? isReadSent;
  String? transportSource;
  String? carbonDirection;

  MessageChat({
    this.id,
    this.customText,
    this.from,
    this.to,
    this.senderJid,
    this.time,
    this.type,
    this.body,
    this.msgtype,
    this.bubbleType,
    this.mediaURL,
    this.isReadSent,
    this.transportSource,
    this.carbonDirection,
  });

  Map<String, dynamic> toEventData() {
    return {
      'id': id,
      'customText': customText,
      'from': from,
      'to': to,
      'senderJid': senderJid,
      'time': time,
      'type': type,
      'body': body,
      'msgtype': msgtype,
      'bubbleType': bubbleType,
      'mediaURL': mediaURL,
      'isReadSent': isReadSent,
      'transportSource': transportSource,
      'carbonDirection': carbonDirection,
    };
  }

  @override
  String toString() {
    return '{id: $id, customText: $customText, from: $from, to: $to, '
        'senderJid: $senderJid, time: $time, type: $type, body: $body, '
        'msgtype: $msgtype, bubbleType: $bubbleType, mediaURL: $mediaURL, '
        'isReadSent: $isReadSent, transportSource: $transportSource, '
        'carbonDirection: $carbonDirection}';
  }

  factory MessageChat.fromJson(dynamic eventData) {
    return MessageChat(
      id: eventData['id'] ?? '',
      customText: eventData['customText'] ?? '',
      from: eventData['from'] ?? '',
      to: eventData['to'] ?? '',
      senderJid: eventData['senderJid'] ?? '',
      time: eventData['time'] ?? '0',
      isReadSent: eventData['isReadSent'] ?? 0,
      type: eventData['type'] ?? '',
      body: eventData['body'] ?? '',
      msgtype: eventData['msgtype'] ?? '',
      bubbleType: eventData['bubbleType'] ?? '',
      mediaURL: eventData['mediaURL'] ?? '',
      transportSource: eventData['transportSource'] ?? '',
      carbonDirection: eventData['carbonDirection'] ?? '',
    );
  }
}
