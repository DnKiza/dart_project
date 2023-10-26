import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Layouts',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        brightness: Brightness.light,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.cloud_queue), onPressed: () {})
        ],
      ),
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _buildJournalHeaderImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildJournalEntry(),
                Divider(),
                _buildJournalWeather(),
                Divider(),
                _buildJournalTags(),
                Divider(),
                _buildJournalFooterImages(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _buildJournalHeaderImage() {
  return Image(
    image: AssetImage('assets/images/Aimage.jpg'),
    fit: BoxFit.cover,
  );
}

Column _buildJournalEntry() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'My Journey',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        "'It was not the easiest one but it was the most enjoyable I have ever had in my life"
      "Moving from Bujumbura to Makamba and from there to Gitega."
            "I enjoyed the landscape and everything I encountered..'"
            "I received a lot that I consider as gifts",
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _buildJournalWeather() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.orange,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '81º Clear',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'N°4 Gihosha, Ntahangwa, Buja Burundi',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _buildJournalTags() {
  return Wrap(
    spacing: 8.0,
    children: List.generate(7, (int index) {
      return Chip(
        label: Text(
          'Gift ${index + 1}',
          style: TextStyle(fontSize: 10.0),
        ),
        avatar: Icon(
          Icons.card_giftcard,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _buildJournalFooterImages() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/Bimage.jpg'),
        radius: 40.0,
      ),
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/Fimage.jpg'),
        radius: 40.0,
      ),
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/Eimage.jpg'),
        radius: 40.0,
      ),
      SizedBox(
        width: 100.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.cake),
            Icon(Icons.star_border),
            Icon(Icons.music_note),
//Icon(Icons.movie),
          ],
        ),
      ),
    ],
  );
}
