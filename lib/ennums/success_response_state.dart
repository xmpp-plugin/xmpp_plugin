// ignore: constant_identifier_names
enum SuccessResponseState { group_created_success, group_joined_success, none }

extension SuccessResponseStateParser on String {
  SuccessResponseState toSuccessResponseState() {
    return SuccessResponseState.values.firstWhere((SuccessResponseState e) {
      // ignore: sdk_version_since
      return e.name.toString().toLowerCase() == toLowerCase();
    }, orElse: () {
      return SuccessResponseState.none;
    });
  }
}
