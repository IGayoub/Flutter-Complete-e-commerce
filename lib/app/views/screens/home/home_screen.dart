import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/controller/event/home/home_action.dart';
import 'package:project3/app/views/util/app_images.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';
import 'widget/home_options_categories.dart';
import 'widget/home_type_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            context.read<AppBloc>().add(HomeMenuAction(context: context));
          },
          color: Colors.black,
        ),
        actions: [
          const NotificationsAppBar(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter,
                color: Colors.grey,
                size: 20,
              ))
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 5,
                  child: const SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "\tSearch Your Product",
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none),
                        ),
                      )),
                ),
              ),
              const HomeOptionsCategorie(),
              const HomeTypeProduct(
                htc: "Feautred",
                image: Images.$images1,
              ),
              const HomeTypeProduct(
                htc: "Best Sell",
                image: Images.$images2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
