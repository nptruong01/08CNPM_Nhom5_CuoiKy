class MessageModel {
  String type;
  String message;
  String time;
  String path;
  MessageModel({
    this.message="",
    this.type="",
    this.time="",
    required this.path,
  });
}