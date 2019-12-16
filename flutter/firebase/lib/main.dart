import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firestore db = Firestore.instance; /** Firestore é um banco de dados não */

  // /**
  //  * Como fazer post e put de um dado no banco de dado. Quando passamos document('001') estamos informando o id desse objeto
  //  */
  db.collection('usuarios').document('001').setData(
    {
      'nome': 'Rafael',
      'sobrenome': 'Pereira',
      'idade': 19,
    },
  );

  // /**
  //  * Como fazer um post de um dado no banco de dados. Diferente do metodo anterior ele não server para atualizar (put),
  //  * isto por que  não é passado o 'id' do objeto, neste caso um novo objeto é inserido no bd com um id 'randomico'
  //  */
  DocumentReference ref = await db.collection('usuarios').add(
    {
      'nome': "Bia",
      'Sobrenome': 'Alice',
      'Idade': '666666',
    },
  );

  // /**
  //  * Como atualizar dados do bd
  //  */
  // db
  //     .collection('usuarios')
  //     .document(
  //         'TasVebXb9WXzWe6X1fKg') /** no lugar dessa string deve ficar o id do objeto */
  //     .setData({
  //   'Idade': '28'
  // });
  /** O objeto será substituido... por este passado, para o caso de ser atualizado um unico campo... todo objeto deve ser passado, com apenas a modificação do objeto sendo informada */

  // print(ref.documentID);

  // /** como deletar o objeto */
  // db.collection('usuarios').document('TasVebXb9WXzWe6X1fKg').delete();

  DocumentSnapshot usuario =
      await db.collection('usuarios').document('m5MNs2Xm9wxWTixBj2uG').get();
  print('dados: ' + usuario.data.toString());

  // /** capturando os todos os documentos  (objetos) da coleção de usuarios */

  // print(querySnapshot.documents
  //     .map((item) => ("usuario " + item.data.toString())));

  // /** Captura constatemente o estado do banco de dados e na ocorrencia da mundaça do estado do bd excuta uma função */
  db.collection('usuarios').snapshots().listen((snapshot) =>
      print(snapshot.documents.map((item) => item.data.toString() + "\n")));

  // /**
  //  * fazendo consultas
  //  *
  // */
  QuerySnapshot querySnapshot = await db
      .collection('usuarios')
      .where('nome', isEqualTo: 'Rafael') // que podem ter um filtro
      .where('idade', isEqualTo: '19') // que podem ter mais de um filtro...
      .orderBy('idade', descending: true) // que podem ser ordenadas
      .orderBy('nome',
          descending:
              true) // que podem ter mais de uma ordenção (desde que se crie um index no bd)
      .limit(50) // e que pode ter um numero maximo de resultados
      .getDocuments();
  print(querySnapshot.documents.map((item) => item.data.toString()));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
