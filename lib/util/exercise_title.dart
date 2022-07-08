import 'package:flutter/material.dart';

class Exercise_Title extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberofexercises;
  final color;
  const Exercise_Title({Key? key, this.icon, required this.exerciseName, required this.numberofexercises, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:20.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.all(17),
                      color:color,
                      child: Icon(
                       icon,
                        color: Colors.white,
                      ),

                    ),
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      //titre
                      Text(
                        exerciseName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      //sous titre
                      Text(
                        numberofexercises.toString()+ ' Exercises',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                  Icons.more_horiz),
            ],
          )
      ),
    );
  }
}
