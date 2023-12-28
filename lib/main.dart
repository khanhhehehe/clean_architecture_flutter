import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_practice_project/common/configs/locators.dart';
import 'package:my_practice_project/data/model/food_model.dart';
import 'package:my_practice_project/presentations/bloc/food/food_bloc.dart';
import 'package:my_practice_project/presentations/bloc/main_bloc.dart';
import 'package:my_practice_project/presentations/pages/game_play.dart';
import 'package:my_practice_project/presentations/pages/get_position.dart';
import 'package:my_practice_project/presentations/pages/manage_foods.dart';

enum Screen {
  manageFood('Manage Foods'),
  gamePlay('Play game'),
  getPosition('Get position');

  final String name;
  const Screen(this.name);
}

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: MainBloc.allBlocs(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int test = 0;
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
        length: Screen.values.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            TabBar(
                tabs: Screen.values.map((e) => Tab(text: e.name)).toList(),
                controller: _tabController),
            Expanded(
              child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: [
                    ManageFoods(test: test),
                    const GamePlay(),
                    const GetPositionScreen()
                  ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.yellow,
            onPressed: () {
              getIt<FoodBloc>().add(CreateFood(
                  food: FoodModel(
                      name: "Meo muop $test",
                      image:
                          "https://vuanem.com/blog/wp-content/uploads/2023/02/nguon-goc-meo-muop.jpg",
                      rating: 5,
                      ingredients: ["ing 1", "ing 2", "ing 3"],
                      time: "4 hours",
                      difficulty: "Hard",
                      calories: "110 cal",
                      color: "#CCCCCC",
                      description: "description",
                      steps: ["step 1", "step 2", "step 3"],
                      type: "cat")));
              test++;
            },
            child: const Icon(
              Icons.catching_pokemon,
              color: Colors.red,
            )));
  }
}
