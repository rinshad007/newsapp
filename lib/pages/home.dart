import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/categorymodel.dart';
import 'package:newsapp/services/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories=[];
  bool _loading=false;

  @override
  void initState() {
    getcatogaries();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter'),
            Text(
              'News',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: _loading?Center(child: CircularProgressIndicator(),):SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context,index){
                        return CategoryTile(image: categories[index].image,categoryName: categories[index].categoryname,);
                      }),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
class CategoryTile extends StatelessWidget {
  final image, categoryName;

  CategoryTile({super.key, this.image, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image, width: 120, height: 60, fit: BoxFit.cover,)),
          Container(
            height: 120,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
            child: Center(child: Text(categoryName, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14),)),
          )
        ],
      ),

    );
  }

}