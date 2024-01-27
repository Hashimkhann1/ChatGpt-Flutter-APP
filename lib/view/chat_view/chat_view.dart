import 'package:chatgpt/res/constant.dart';
import 'package:chatgpt/res/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {

  final bool isTyping = false;
  final TextEditingController _dialogController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _dialogController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/chatgptlogo.png',),
        ),
        title: Text("ChatGPT",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
                itemBuilder: (context , index) {
              return ChatWidget(msg: chatMessages[index]['msg'].toString(),chatIndex: int.parse(chatMessages[index]['chatIndex'].toString()),);
            }),
          ),
          isTyping ? SpinKitThreeBounce(color: Colors.white,size: 20,) :Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 66,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "How can i Help You",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.white,size: 30,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
