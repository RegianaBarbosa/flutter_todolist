import 'package:flutter/material.dart';
import 'package:flutter_todolist/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // get user input
            TextField(
              controller: controller,
              cursorColor: Colors.black, // Define a cor do cursor
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black12), // Cor da borda quando focado
                  ),
                  hintText: "Adicione uma nova tarefa"),
            ),

            // button -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // save button
                MyButton(
                    text: "Salvar",
                    onPressed: onSave,
                    backgroundColor: Colors.green,
                    textColor: Colors.white),

                const SizedBox(width: 8),
                // cancel button
                MyButton(
                    text: "Cancelar",
                    onPressed: onCancel,
                    backgroundColor: Colors.red,
                    textColor: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
