import 'package:dribbleui/util/emojis_face.dart';
import 'package:dribbleui/util/exercise_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 90, 205),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:''),
        BottomNavigationBarItem(icon: Icon(Icons.message),label:''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:''),
      ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //salutation
                  Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          SizedBox(height: 25,),
                          Text("Hi Soso",
                            style: TextStyle(
                              color: Color.fromARGB(255, 240, 243, 242),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            "10 mai 2003",
                            style: TextStyle(
                              color:  Color.fromARGB(255, 89, 140, 226),

                            ),
                          )
                        ],
                      ),

                      //notif

                      Container(
                        decoration: BoxDecoration(
                          color:  const Color.fromARGB(255, 10, 63, 173),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20,),

                  //rechercher
                  Container(
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(245, 10, 63, 173),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width:5,),
                        Text("Search",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 25,),

                  //How do yo feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Icon(Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(height: 25,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      //bad
                      Column(
                        children: const [
                          EmojisFace(
                            emojiface:"😪",
                          ),
                          SizedBox(height: 8,
                          ),
                          Text("Bad",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //fine
                      Column(
                        children: const [
                          EmojisFace(
                            emojiface:"😁",
                          ),
                          SizedBox(height: 8,
                          ),
                          Text("Fine",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //well
                      Column(
                        children: const [
                          EmojisFace(
                            emojiface:"😎",
                          ),
                          SizedBox(height: 8,
                          ),
                          Text("Well",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // excellent
                      Column(
                        children: const [
                          EmojisFace(
                            emojiface:"😜",
                          ),
                          SizedBox(height: 8,
                          ),
                          Text("Excellent",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration:  const BoxDecoration(
                  color: Color.fromARGB(245, 195, 210, 239),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),

                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      //exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Exercises",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 20,),

                      //listview of exercises
                     Expanded(child: ListView(
                       children: const [
                         Exercise_Title(
                           icon: Icons.favorite,
                           exerciseName: "Speaking Skills",
                           numberofexercises: 8,
                           color:Colors.orange,
                         ),
                          SizedBox(height: 10,),

                         Exercise_Title(
                           icon: Icons.person,
                           exerciseName: "Reading Skills",
                           numberofexercises: 16,
                           color:Colors.green,
                         ),

                         SizedBox(height: 10,),

                         Exercise_Title(
                           icon: Icons.star,
                           exerciseName: "WritingSkills",
                           numberofexercises: 32,
                           color:Colors.pink,
                         ),
                       ],
                     ),
                     )
                    ],
                  ),
                ),
              ),
            )


          ],
        ),

      ),

    );
  }


}