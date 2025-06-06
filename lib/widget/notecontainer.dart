import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class Notecontainer extends StatelessWidget {
  const Notecontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
   Navigator.push(context, MaterialPageRoute(builder: (context){
    return const EditNoteView();
   }));
      },
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "flutter tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "build your career with omar gherbawi",
                  style: TextStyle(
                      color: Color.fromARGB(255, 55, 54, 54), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                  )),
            ),
            Text(
              'May 12 , 2025',
              style: TextStyle(color: const Color.fromARGB(255, 47, 46, 46)),
            )
          ],
        ),
      ),
    );
  }
}
