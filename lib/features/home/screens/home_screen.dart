import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pizza_app/features/home/screens/pasta_and_rice_screen.dart';
import 'package:pizza_app/features/home/screens/pizza_screen.dart';
import 'package:pizza_app/features/home/screens/starter_screen.dart';
import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

void openDrawer(BuildContext context) {
  Scaffold.of(context).openDrawer();
}

class _HomeScreenState extends State<HomeScreen>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('piZZA'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                height: 30,
              ),
            )
          ],
          leading: Builder(
            builder: (context) {
              return InkWell(
                onTap: () => openDrawer(context),
                child: SvgPicture.asset(
                  'assets/icons/ frame.svg',
                  width: 3,
                ),
              );
            },
          ),
          bottom: TabBar(
            controller: tabController,
            indicatorColor: CustomColors.redColor,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: CustomColors.blueColor,
            unselectedLabelColor: Colors.black,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: const [
              Tab(
                text: 'PIZZA',
              ),
              Tab(
                text: 'PASTA & RICE',
              ),
              Tab(
                text: 'STARTER',
              ),
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          controller: tabController,
          children: const [
            PizzaScreen(),
            PastaAndRiceScreen(),
            StarterScreen(),
          ],
        ),
      ),
    );
  }
}
