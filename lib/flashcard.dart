import 'package:flutter/material.dart';

class Flashcard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2),
        child: Row(
          children: [
            SizedBox(width: 180,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                   const SizedBox(height: 10),
                    const Text('TITLE',
                        style: TextStyle(color: Colors.white,
                          fontSize: 20,
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                    const SizedBox(height: 10),
                        Text(' Answer', style: TextStyle(color: Colors.white),),
                    const SizedBox(height: 10),
                    Align(alignment:Alignment.bottomRight,
                      child:TextButton(onPressed: ( ){}, child: Icon(Icons.delete))
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}