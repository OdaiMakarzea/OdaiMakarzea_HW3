import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: First(),
    );
  }
}
class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("First page"),),
        body: Text("first page"),
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                      children:[
                        Image.asset('m4.jpg',width: 90,),
                        Text("Sandra Adams",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        Text('sandra_a88@gmail.com',style: TextStyle(fontWeight: FontWeight.w600),),
                      ]
                  ),
                ),
                buildMenuItem(
                    icon: Icon(Icons.folder),
                    title: "My Files",
                    onClick: (){
                      ThemeData(
                        textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.deepPurpleAccent),
                      );
                      selectItem(context, 0);
                    }
                ),
                buildMenuItem(
                    icon: Icon(Icons.people),
                    title: "Shared with me",
                    onClick: (){
                      selectItem(context, 1);
                    }
                )
                ,
                buildMenuItem(
                    icon: Icon(Icons.access_time),
                    title: "Recent",
                    onClick: (){
                      selectItem(context, 2);
                    }
                ),
                buildMenuItem(
                    icon: Icon(Icons.restore_from_trash),
                    title: "Trash",
                    onClick: (){
                     selectItem(context,3);
                    }
                ),
                ListTile(
                    subtitle: const Text('Labels'),
                ),
                buildMenuItem(
                    icon: Icon(Icons.bookmark_rounded),
                    title: "Family",
                    onClick: (){
                      selectItem(context, 0);
                    }
                ),
              ],
            ),
          ),

        )
    );
  }
  buildMenuItem({required Icon icon, required String title, required Function onClick}){
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: (){
        onClick();
      },
    );
  }
  selectItem(BuildContext context, int index){
    switch(index){
      case 0: Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => second())
      );
      break;
      case 1: Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => third())
      );
      break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => forth())
        );
       break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => fifth())
        );
        break;
    }
  }
}
class second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Text("Second Page"),
    );
  }
}
class third extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("third Page"),),
      body: Text("third Page",),
    );
  }
}
class forth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("forth Page"),),
      body: Text("forth Page",),
    );
  }
}class fifth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("fifth Page"),),
      body: Text("fifth Page"),
    );
  }
}




