import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        'name': 'Greeshma',
        'dp':
            'https://images.pexels.com/photos/3772509/pexels-photo-3772509.jpeg?auto=compress&cs=tinysrgb&w=600',
        'bg':
            'https://images.pexels.com/photos/25561067/pexels-photo-25561067/free-photo-of-white-flowers-in-nature.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
      },
      {
        'name': 'Rahul',
        'dp':
            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600',
        'bg':
            'https://images.pexels.com/photos/27601341/pexels-photo-27601341/free-photo-of-leaf-nature.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
      },
      {
        'name': 'Anjali',
        'dp':
            'https://images.pexels.com/photos/12244376/pexels-photo-12244376.jpeg?auto=compress&cs=tinysrgb&w=600',
        'bg':
            'https://images.pexels.com/photos/27563723/pexels-photo-27563723/free-photo-of-the-view-of-a-building-with-a-reflection-of-the-sky.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
      },
      {
        'name': 'Sanjana',
        'dp':
            'https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=600',
        'bg':
            'https://images.pexels.com/photos/27592130/pexels-photo-27592130/free-photo-of-a-man-pushing-a-cart-through-an-archway.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
      },
      {'name':'Hakkim',
      'dp':'https://images.pexels.com/photos/13143554/pexels-photo-13143554.jpeg?auto=compress&cs=tinysrgb&w=600',
      'bg':'https://images.pexels.com/photos/20801879/pexels-photo-20801879/free-photo-of-man-sitting-under-a-palm-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
      },
      {'name':'Isha',
      'dp':'https://images.pexels.com/photos/1559086/pexels-photo-1559086.jpeg?auto=compress&cs=tinysrgb&w=600',
      'bg':'https://images.pexels.com/photos/27354543/pexels-photo-27354543/free-photo-of-two-buildings-with-balconies-and-windows-in-the-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
      }

    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: myDataList.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(myDataList[index]['bg']))),
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myDataList[index]['dp']),
                    ),
                    title: Text(
                      myDataList[index]['name'],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    // subtitle: Text(
                    //   'Sponsored',
                    //   style: TextStyle(color: Colors.white, fontSize: 14),
                    // ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: Text(
                            'Send message',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
