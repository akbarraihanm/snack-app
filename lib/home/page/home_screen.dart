import 'package:flutter/material.dart';
import 'package:snacks_app/core/components/form/search_form_field.dart';
import 'package:snacks_app/home/widgets/banner_indicator.dart';
import 'package:snacks_app/home/widgets/banner_item.dart';
import 'package:snacks_app/home/widgets/discount_item.dart';
import 'package:snacks_app/home/widgets/top_section.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentMenu = 0;
  int _currentBanner = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.06,
          ),
          const TopSection(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.03,
          ),
          const SearchFormField(
            bgColor: Colors.transparent,
            radius: 24,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 32),
            borderColor: Colors.grey,
            hint: "Search menu, restaurants, or etc",
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                height: MediaQuery.sizeOf(context).height*0.15,
                  child: Stack(
                    children: [
                      PageView(
                        onPageChanged: (v) => setState(() => _currentBanner = v),
                        children: const [
                          BannerItem(
                            title: "Text 1",
                            color: Colors.green,
                          ),
                          BannerItem(
                            title: "Text 2",
                            color: Colors.amber,
                          ),
                          BannerItem(
                            title: "Text 3",
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 16,
                        right: 32,
                        left: MediaQuery.sizeOf(context).width*0.725,
                        child: BannerIndicator(currentBanner: _currentBanner),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 64),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height*0.15,
                  child: Center(
                    child: ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_,__) => SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.05,
                      ),
                      itemBuilder: (context, pos) => Column(
                        children: [
                          const CircleAvatar(
                            radius: 36,
                            backgroundColor: Colors.green,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Title ${pos+1}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Discount",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: List.generate(2, (pos) {
                      return Expanded(
                        child: DiscountItem(
                          title: "Discount Place ${pos+1}",
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(
          color: Colors.green,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.green,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
        elevation: 2.0,
        currentIndex: _currentMenu,
        onTap: (v) => setState(() => _currentMenu = v),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 20,
            ),
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_bag,
              size: 20,
            ),
            label: "Orders",
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.bookmark,
              size: 20,
            ),
            label: "Bookmark",
            icon: Icon(
              Icons.bookmark_outline,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person_rounded,
              size: 20,
            ),
            label: "Profile",
            icon: Icon(
              Icons.person_outline,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
