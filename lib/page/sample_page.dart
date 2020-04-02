
import 'package:flutter/material.dart';
import 'package:redhotblocpatternsample/bloc/sample_bloc.dart';
import 'package:redhotblocpatternsample/model/user.dart';

class SamplePage extends StatefulWidget {
  SamplePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _printUserData()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          sampleBloc.updateUser2();
        },
        tooltip: 'UpdateUser',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _printUserData() {
    return StreamBuilder<User>(
      stream: sampleBloc.data.stream,
      builder: (context, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.code == "Success") {
            return Text("Error");
          }
          return Container(
            height: 200,
            child: ListView(
              children: <Widget>[
                Text(snapshot.data.name),
                Text(snapshot.data.addr),
                Text(snapshot.data.count.toString()),
                Divider(color: Colors.black,),
              ],
            ),
          );
        } else {
          return Text("No data");
        }
      },
    );
  }
}
