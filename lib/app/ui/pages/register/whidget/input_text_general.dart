import 'package:flutter/material.dart';



class inputTextGeneral extends StatelessWidget {
    final String text;
  
  const inputTextGeneral({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 40,
      child: Padding(
        padding: EdgeInsets.only(bottom: 0),
        child: TextField(
          keyboardType: TextInputType.number,
         
          style: TextStyle(
              color: Colors.black), // Color del texto del input
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 129, 129,
                    129)), // Color del hint (texto gris)
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
