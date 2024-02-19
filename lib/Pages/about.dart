import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  Widget drawerItem(String text, String subtext, IconData icon, IconData trailicon){
    return Container(
      margin: const EdgeInsets.only(left: 10.0,right: 10.0),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: Colors.purple, // Set the color of the border to purple
          width: 2.0, // Set the width of the border
    ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left:20.0, right: 20.0),
        horizontalTitleGap: 30.0,
        leading: Icon(icon, color: const Color.fromARGB(255, 80, 13, 97),),
        trailing: Icon(trailicon, color:  const Color.fromARGB(255, 80, 13, 97),),
        title: Text(text, style:  const TextStyle(color:  Color.fromARGB(255, 80, 13, 97), fontSize: 20.0, fontWeight: FontWeight.bold)),
        subtitle: Text(subtext, style: const TextStyle(color:  Color.fromARGB(255, 80, 13, 97), fontSize: 20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
          const SizedBox(height: 20.0,),
          drawerItem('Names', 'Stephanie Umutoni', Icons.person,Icons.edit),
          const SizedBox(height: 20.0,),
          drawerItem('Major', 'Software Engineering', Icons.book,Icons.edit),
          const SizedBox(height: 20.0,),
          drawerItem('Phone', '0793546728', Icons.phone,Icons.edit),
          const SizedBox(height: 20.0,),
          drawerItem('Email', 'steumutoni@gmail.com', Icons.email,Icons.edit),

        ]
      ),
    );
  }
}