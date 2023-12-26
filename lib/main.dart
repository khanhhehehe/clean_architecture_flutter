import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_practice_project/common/configs/locators.dart';
import 'package:my_practice_project/data/model/food_model.dart';
import 'package:my_practice_project/presentations/bloc/food/food_bloc.dart';
import 'package:my_practice_project/presentations/bloc/food/food_state.dart';
import 'package:my_practice_project/presentations/bloc/main_bloc.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  int test = 0;

  @override
  void initState() {
    getIt<FoodBloc>().add(const GetFoods());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: BlocBuilder<FoodBloc, FoodState>(
          buildWhen: (previous, current) =>
              previous.foodStatus != current.foodStatus,
          builder: (context, state) {
            return ListView.separated(
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(height: 1, color: Colors.purpleAccent),
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(state.foods[index].name),
                    IconButton(
                        onPressed: () {
                          getIt<FoodBloc>().add(const DeleteFood(id: '6'));
                        },
                        icon: const Icon(
                          Icons.dangerous,
                          color: Colors.orangeAccent,
                        )),
                    IconButton(
                        onPressed: () {
                          getIt<FoodBloc>().add(UpdateFood(
                              id: '6',
                              food: FoodModel(
                                  name: "Meo muop $test hoa hong",
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
                        },
                        icon: const Icon(Icons.upcoming,
                            color: Colors.purpleAccent))
                  ],
                ),
              ),
              itemCount: state.foods.length,
            );
          },
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
