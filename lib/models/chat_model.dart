class ChatModel {
  final String name;
  final String message;
  final String time;
  final String url;

  ChatModel({this.name, this.message, this.time, this.url});
}

List<ChatModel> dummyData = [
  ChatModel(
    name: "Manideep",
      message: "Hello!",
      time: "22:30",
      url:
          "https://st.depositphotos.com/1359043/1436/i/950/depositphotos_14367695-stock-photo-violet-blue-butterfly-isolated-on.jpg",),
  ChatModel(name: "Shashi Kumar",
      message: "Hmmmmm!",
      time: "22:00",
      url:
          "https://st.depositphotos.com/1359043/1436/i/950/depositphotos_14367695-stock-photo-violet-blue-butterfly-isolated-on.jpg",),
  ChatModel(
    name: "Prathima",
      message: "Hola!",
      time: "21:30",
      url:
          "https://st.depositphotos.com/1359043/1436/i/950/depositphotos_14367695-stock-photo-violet-blue-butterfly-isolated-on.jpg",),
];
