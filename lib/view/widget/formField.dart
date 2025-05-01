import 'package:flutter/material.dart';

class TextEditor extends StatefulWidget {
  late TextEditingController textEditingController;
 // late FocusNode focusNode;
  //late TextInputType inputType;
 // final String labelText;
  final String hintText;
  //final bool isPassword;

  TextEditor({
    super.key,
   // required this.isPassword,
    required this.hintText,
    //required this.labelText,
    required this.textEditingController,
   // required this.inputType,
   // required this.focusNode,
  });

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  @override
  Widget build(BuildContext context) {
    bool _isObscured = true;
    return TextFormField(
      controller: widget.textEditingController,
     // keyboardType: widget.inputType,
     // focusNode: widget.focusNode,
      //obscureText: widget.isPassword ? _isObscured : false,

      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: widget.hintText,
       hintStyle: TextStyle(color: Colors.black87),
       prefixIcon: Padding(
         padding: const EdgeInsets.only(left: 20),
         child: Icon(Icons.search_sharp, size: 35,),
       ),
       prefixIconColor: Colors.black87,
       // labelText: widget.labelText,
        // suffixIcon: widget.isPassword ? IconButton(onPressed: (){
        //   setState(){
        //     _isObscured= !_isObscured;
        //   }
        // },
        //     icon: Icon(_isObscured? Icons.visibility_off : Icons.visibility)): null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 10.0,
            //style: BorderStyle.solid,
          ),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(color: Colors.yellow, width: 2), // Non-focused border
        // ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red, width: 3), // Focused border
        ),
      ),
    );


  }
}
