import 'package:flutter/material.dart';
class Roy extends StatefulWidget {
  const Roy({super.key});

  @override
  State<Roy> createState() => _RoyState();
}

class _RoyState extends State<Roy> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
    _focusNode.addListener(_onFocusChanged);
  }

  void _onTextChanged() {
    setState(() {
      _isTyping = _controller.text.isNotEmpty;
    });
  }

  void _onFocusChanged() {
    setState(() {
      // Update the state when the focus changes
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      // Send the message
      print('Message sent: ${_controller.text}');
      _controller.clear();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
        actions: [
          const  Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/Ellipse 8.png"),
            ),
          ),
          const   Padding(
            padding: EdgeInsets.only(right: 70),
            child: Text("Roy",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
          ),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.call,color: Colors.white,)),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.video_camera_back_rounded,color: Colors.white,)),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.more_vert_outlined,color: Colors.white,)),
        ],
      ),
      bottomSheet: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 310,
              child: TextFormField(
                controller: _controller,
                focusNode: _focusNode,
                decoration: const InputDecoration(
                    hintText: "Message",
                    fillColor: Color(0xfffE5E5E5),
                    filled: true,
                    prefixIcon: Icon(Icons.emoji_emotions_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(10),top: Radius.circular(10)),
                    )
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(400),
            ),
            child: IconButton(
              icon: Icon(
                _isTyping ? Icons.send : Icons.mic,
                color: _isTyping ? Colors.white : Colors.white,
              ),
              onPressed: _isTyping ? _sendMessage : _sendMessage,

            ),
          ),
        ],
      ),

    );
  }
}
