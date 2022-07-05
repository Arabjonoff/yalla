import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla/src/colors/colors.dart';
import 'package:yalla/src/ui/detail/detail_screen.dart';
import 'package:yalla/src/utils/utils.dart';
import 'package:yalla/src/widget/menu/menu_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController _controller = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.grey,
        leading: const MenuWidget(),
        actions: [
          SvgPicture.asset('assets/menu/card_unselected.svg'),
          SizedBox(
            width: 16 * w,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
            width: MediaQuery.of(context).size.width,
            height: 150*w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.white
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network('https://img.livestrong.com/375/cme-data/getty%2F1c5230aa716042b788a0c75483d78691.jpg',fit: BoxFit.cover,)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFFC7C7C7).withOpacity(0.2),
            ),
            width: MediaQuery.of(context).size.width,
            height: 60 * w,
            child: Row(
              children: [
                SizedBox(
                  width: 16 * w,
                ),
                SvgPicture.asset('assets/icons/serach.svg'),
                SizedBox(
                  width: 16 * w,
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Taom nomi kiriting",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          DefaultTabController(
            length: 6,
            child: Column(
              children: [
                TabBar(
                  tabs: const [
                    Tab(
                      child: Text('Burger'),
                    ),
                    Tab(
                      child: Text('Lavash'),
                    ),
                    Tab(
                      child: Text('Pizza'),
                    ),
                    Tab(
                      child: Text('Snack'),
                    ),
                    Tab(
                      child: Text('Water'),
                    ),
                    Tab(
                      child: Text('Lavash'),
                    ),
                  ],
                  unselectedLabelColor: AppColor.black.withOpacity(0.5),
                  padding: EdgeInsets.only(left: 16 * w, top: 40 * w),
                  isScrollable: true,
                  labelColor: AppColor.orange,
                  labelStyle: TextStyle(fontSize: 17),
                  indicatorColor: AppColor.orange,
                ),
                SizedBox(
                  height: 32 * w,
                ),
                SizedBox(
                  height: 210 * w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailScreen(
                                  indexs: index,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 16 * w),
                          width: 160 * w,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(57, 57, 57, 0.1),
                                blurStyle: BlurStyle.normal,
                                blurRadius: 5,
                                offset: Offset(2, 8),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: AppColor.white,
                            border: Border.all(color: AppColor.grey),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 150*w,
                                  child: Hero(
                                    tag: '$index',
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        'https://www.buffalowildwings.com/globalassets/menuitems/bww_traditionalwings_sauce2.png?format=png&width=900&v=2'
                                      ),
                                    ),
                                  )),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text(
                                        'KFC',
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18 * w,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5*w,),
                                    Center(
                                      child: Text(
                                        '33 000 som',
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColor.orange,
                                          fontSize: 17 * w,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  margin: EdgeInsets.symmetric(
                      horizontal: 16 * w, vertical: 26 * w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network('https://i0.wp.com/dinepartner.com/blog/wp-content/uploads/2019/12/fastfood.jpg?fit=750%2C342&ssl=1',fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
