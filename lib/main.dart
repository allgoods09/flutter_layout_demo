import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo-lition',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  // final List<String> motorcyles = ['Yamaha R15', 'Honda Winner X', 'Suzuki Raider', 'Kawasaki GX25R', 'Panigale V4S', 'BMW S1000RR'];
  final List<Map<String, String>> songs = [
  {'title': 'Shape of You', 'artist': 'Ed Sheeran'},
  {'title': 'Blinding Lights', 'artist': 'The Weeknd'},
  {'title': 'Levitating', 'artist': 'Dua Lipa'},
  {'title': 'Uptown Funk', 'artist': 'Bruno Mars'},
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo-lition'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: ListTile(
              tileColor: Colors.green.shade300,
              leading: const Icon(Icons.music_note),
              title: Text(song['title'] ?? 'Unknown Title'),
              subtitle: Text(
                'Artist: ${song['artist'] ?? 'Unknown Artist'}\nSong Number: ${index + 1}',
              ),
              trailing: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Now Playing ${song['title']}!'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
                icon: const Icon(Icons.play_arrow_outlined, size: 35.0,),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You selected ${song['title']}!'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),

      // body: ListView.builder(
      //   itemCount: motorcyles.length,
      //   itemBuilder: (context, index) {
      //     final motorcycle = motorcyles[index];
      //     return Card(
      //       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      //       child: ListTile(
      //         leading: const Icon(Icons.motorcycle),
      //         title: Text(motorcycle),
      //         subtitle: Text('Item Number: ${index + 1}'),
      //         onTap: () {
      //           ScaffoldMessenger.of(context).showSnackBar(
      //             SnackBar(content: Text('You tapped on $motorcycle!'))
      //           );
      //         },
      //       )
      //     );
      //   },
      // ),
      // body: Column(
      //   children: [
      //     Container(
      //       margin: EdgeInsets.all(10.0),
      //       padding: EdgeInsets.all(10.0),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(5.0),
      //         color: Colors.blue,
      //       ),
      //       child: Center(
      //         child: Text(
      //           'Welcome to Layout Demo',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 20.0,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       child: Row(
      //         children: [
      //           Expanded(
      //             flex: 1,
      //             child: Container(
      //               color: Colors.red,
      //               child: Center(
      //                 child: Text('Left'),
      //               ),
      //             ),
      //           ),
      //           Expanded(
      //             flex: 2,
      //             child: Container(
      //               color: Colors.green,
      //               child: Center(
      //                 child: Text('Center')
      //               ),
      //             ),
      //           ),
      //           Expanded(
      //             flex: 1,
      //             child: Container(
      //               color: Colors.orange,
      //               child: Center(
      //                 child: Text('Right'),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: Column(
      //         children: [
      //           Expanded(
      //             flex: 1,
      //             child: Container(
      //               color: Colors.purple,
      //               child: Center(
      //                 child: Text('Top Box'),
      //               )
      //             ),
      //           ),
      //           Expanded(
      //             flex: 2,
      //             child: Container(
      //               color: Colors.teal,
      //               child: Center(
      //                 child: Text('Bottom Box'),
      //               )
      //             ),
      //           )
      //         ],
      //       ))
      //   ],
      // ),
    );
  }
}


