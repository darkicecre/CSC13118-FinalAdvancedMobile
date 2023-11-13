import 'package:final_advanced_mobile/screens/CourseDetailPage/CoursesDetailPage.dart';
import 'package:final_advanced_mobile/screens/CoursesPage/CoursesTab.dart';
import 'package:flutter/material.dart';

class ListCourses extends StatefulWidget {
  const ListCourses({super.key,
    this.listItems = const {
      "Key" : []
    }
  });

  final Map<String,List<CustomItem>> listItems;
  @override
  State<ListCourses> createState() => _ListCoursesState();
}

class _ListCoursesState extends State<ListCourses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
          widget.listItems.length,
          (int index) {
            return GestureDetector(
              onTap: () {
                print("Click event on Container");
              },
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10),

                      margin: EdgeInsets.only(top: 40,bottom: 20),
                      child: Text(widget.listItems.keys.elementAt(index),style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                    Column(
                      children: List<Widget>.generate(
                          widget.listItems.values.elementAt(index).length,
                          (int itemIdx) {
                            return InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const CoursesDetailPage()
                                      ,settings: RouteSettings(
                                      arguments: widget.listItems.values.elementAt(index)[itemIdx]
                                  )
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Column(
                                  children: [
                                    Image.network(widget.listItems.values.elementAt(index)[itemIdx].image,),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(widget.listItems.values.elementAt(index)[itemIdx].title,
                                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
                                      ),
                                      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(widget.listItems.values.elementAt(index)[itemIdx].description,
                                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                                      ),
                                      margin: EdgeInsets.only(top: 10,left: 20,right: 10),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(widget.listItems.values.elementAt(index)[itemIdx].subTitle,
                                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                                      ),
                                      margin: EdgeInsets.only(top: 20,left: 20,right: 10,bottom: 5),
                                    ),
                                    Container(
                                      child: SizedBox(),
                                      color: Color.fromRGBO(216, 216, 216, 1),
                                      height: 5,
                                      width: double.infinity,
                                    ),

                                  ],
                                ),
                                
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
