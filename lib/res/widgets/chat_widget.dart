import 'package:chatgpt/res/constant.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String msg;
  final int chatIndex;
  ChatWidget({super.key,required this.chatIndex,required this.msg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: chatIndex == 0 ? scafoldBackgroundColor : cardColor,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chatIndex == 0 ? Icon(Icons.person_pin,size: 30,color: Colors.white,) : Image.asset('images/chatgptlogo.png',width: 30,height: 30,),
              const SizedBox(width: 10,),
              Expanded(
                child: Text(msg,style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
        )
      ],
    );
  }
}
