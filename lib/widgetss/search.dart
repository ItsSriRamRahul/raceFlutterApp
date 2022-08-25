import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController searchController =  TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return (Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
            color: Color(0xff142f40), borderRadius: BorderRadius.circular(15)),
        // ignore: prefer_const_constructors
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            onChanged: (value) => {
print(searchController.text)
            },
            controller: searchController,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hoverColor: Colors.white,
                  border: InputBorder.none,
                
                  
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  hintText: "Search...",
                  )),
        )));
  }
}
