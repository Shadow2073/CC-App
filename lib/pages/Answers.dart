import 'package:flutter/material.dart';
import 'package:project_1/pages/Home.dart';

class Answers extends StatelessWidget {
  const Answers({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title:
          const Center(
            child: Text('Flashcards',
              style:TextStyle(fontFamily: 'IndieFlower',
                  fontSize: 50 ),
            ),
          ),
          bottom: PreferredSize(preferredSize: const Size.fromHeight(10), child: Container(
            color: Colors.blueGrey,
            height: 5,)),
        ),
        backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
      child: Card(
            margin: const EdgeInsets.all(15),
            color: Colors.grey[900],
            child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 10, 100, 20),
              child: SizedBox(width: 180,
                child: (
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  const SizedBox(height: 10),
                  const Text('CARD #1',
                    style: TextStyle(color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                      const SizedBox(height: 100,),
                      Text('TITLE',
                      style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 100,)
                  ],
                  )
                ),
              ),
            ),
          ),
          ),
          SizedBox(height: 100,),
          Row(
            children: [
              SizedBox(width: 20,),
              OutlinedButton(onPressed: () {},child: Text('Show Answer',
                style: TextStyle(fontSize: 20, color: Colors.white),)
                , style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green)
                ),
          SizedBox(width: 100,),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, size: 50,),
              color: Colors.green,
            )]
          )
            ],
          ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items:[
        BottomNavigationBarItem(label:'Cards', icon: Icon(Icons.add_card_outlined) ),
        BottomNavigationBarItem(label:'Practice', icon: Icon(Icons.pending))
      ],
          onTap: (index) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
    },
      ),
    );
  }
}
