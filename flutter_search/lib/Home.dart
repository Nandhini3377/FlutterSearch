import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchtext = TextEditingController();
  List<Map<String, dynamic>> _results = [];

  @override
  void initState() {
    super.initState();
    _searchtext.addListener(_onSearchChange);
  }

  @override
  void dispose() {
    _searchtext.removeListener(_onSearchChange);
    _searchtext.dispose();
    super.dispose();
  }

  void _onSearchChange() {
    String search = _searchtext.text.trim();
    if (search.isEmpty) {
      setState(() {
        _results.clear();
      });
      return;
    }

    FirebaseFirestore.instance
        .collection('Jobs')
        .where('Name', isEqualTo: search)
        //  .where('Name', isGreaterThanOrEqualTo: search)
        .get()
        .then((querySnapshot) {
      setState(() {
        _results = querySnapshot.docs
            .map((documentSnapshot) => documentSnapshot.data())
            .toList();
      });
    }).catchError((error) {
      print("Error while searching: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purpleAccent.shade400, Colors.purple])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Flutter Search',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size / 2.8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ListTile(
                  title: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        hintText: 'Search Job Roles'),
                    controller: _searchtext,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // _searchtext.addListener(() {
                      //   _onSearchChange();
                      // });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
               
                Colors.purple.shade100,
                Colors.purple.shade100
              ])),
              child: ListView.builder(
                itemCount: _results.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> Data = _results[index];
                  return ListTile(
                    title: Text(
                      Data['Name'],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Data['Description'],
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
