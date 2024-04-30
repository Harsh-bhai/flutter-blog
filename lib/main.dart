// main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Blog App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BlogListPage(),
    );
  }
}

class BlogListPage extends StatelessWidget {
  final List<Blog> blogs = [
    Blog(
      image: 'icons.png',
      title: 'Icons Class',
      code: '''
const Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.blue,
      size: 36.0,
    ),
  ],
)
''',
      description:
          'This example shows how to create a Row of Icons in different colors and sizes. The first Icon uses a semanticLabel to announce in accessibility modes like TalkBack and VoiceOver.',
    ),
    Blog(
      image: 'owl.png',
      title: 'Image',
      code: '''const Image(
  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
)''',
      description:
          'The following image formats are supported: JPEG, PNG, GIF, Animated GIF, WebP, Animated WebP, BMP, and WBMP. Additional formats may be supported by the underlying platform. Flutter will attempt to call platform API to decode unrecognized formats, and if the platform API supports decoding the image Flutter will be able to render it.',
    ),
    Blog(
      image: '2.png',
      title: 'Blog 1',
      code: "print('Hello, World!');",
      description:
          'This is the description for Blog 1jasdflkhjasdlkfjsdalk;jasdlk;fjsad;lkfhjd;lkdasfjl;kasjla;sdkfjfasdlo;kjfsdal;kfhjalk;fdhaslk;asdhjfl;kasdfjlkfsdahjlasdjkfhasodfhsdzflk;jhsdalkjhzdxkjhasd;lkhjfasdl;kfjdsal;kfjasdlok;fasdhj;lksdfahlasdk;fhjasdo;hjfasdl;khjfsdal;kfasdjlk;fadsjla;fsdkjasd',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Center(
          child: Text(
            'SOVA',
            style: TextStyle(
              fontSize: 30, // Adjust font size as needed
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 4, 103, 184), // Adjust color as needed
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: blogs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  blogs[index].title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  height: 200, // Square image
                  child: Image.asset(
                    blogs[index].image,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  color: Colors.black.withOpacity(0.2),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        blogs[index].description,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        color: Colors.grey[800],
                        padding: EdgeInsets.all(8),
                        child: Text(
                          blogs[index].code,
                          style: TextStyle(
                            fontFamily: 'monospace',
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(), // Optional: Add a divider between blogs
              ],
            ),
          );
        },
      ),
    );
  }
}

class Blog {
  final String image;
  final String title;
  final String description;
  final String code;

  Blog(
      {required this.image,
      required this.title,
      required this.description,
      required this.code});
}
