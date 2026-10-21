// ignore_for_file: sdk_version_since

enum XmppConnectionState { connected, authenticated, connecting, disconnected, failed }

extension XmppConnectionStateParser on String {
  XmppConnectionState toConnectionState() {
    return XmppConnectionState.values.firstWhere((XmppConnectionState e) {
      return e.name.toString().toLowerCase() == toLowerCase();
    }, orElse: () {
      return XmppConnectionState.disconnected;
    });
  }
}
