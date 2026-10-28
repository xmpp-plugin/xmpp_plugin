// ignore: constant_identifier_names
enum ErrorResponseState {
  group_creation_failed,
  group_joined_failed,
  send_message_failed,
  none,
}

extension ErrorResponseStateParser on String {
  ErrorResponseState toErrorResponseState() {
    return ErrorResponseState.values.firstWhere((ErrorResponseState e) {
      // ignore: sdk_version_since
      return e.name.toString().toLowerCase() == toLowerCase();
    }, orElse: () {
      return ErrorResponseState.none;
    });
  }
}
