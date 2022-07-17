import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/src/second_screen.dart';

void main() {
  runApp(const RandomWordsState());
}

class RandomWordsState extends StatefulWidget {
  const RandomWordsState({key}) : super(key: key);

  @override
  _RandomWordsStateState createState() => _RandomWordsStateState();
}

class _RandomWordsStateState extends State<RandomWordsState> {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // theme: ThemeData.dark(),
      title: 'Welcome to Flutter',
      home:HomeScreen(), 
    );
  }

}
class HomeScreen extends StatefulWidget {
  const HomeScreen({ key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final _suggestions = <WordPair>[]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: const Text('My Flutter App'),
       //   backgroundColor: Colors.green,
        ),
        body: _buildSuggestions(),
      );
  }

  Widget _buildSuggestions(){
  return ListView.builder(itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
 final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        } 
         return _buildRow(_suggestions[index]);
           },
           );
}  

Widget _buildRow(WordPair pair){
  return  ListTile(
    subtitle:Text('MyApp Status') ,
    trailing: Icon(Icons.favorite,
    color: Colors.red,),

    leading:CircleAvatar(
      child: FlutterLogo(
          colors: Colors.red,
      ),
      //child:Text(pair.toString().substring(0,1).toUpperCase()),
    ) ,
          title: Text(
            pair.asPascalCase,
          ),
          onTap:(){
           // print(pair.toLowerCase());
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context)=>SecondScreen(pair),
              )
              );
          } ,
        );
}
}