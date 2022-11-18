import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/controller/event/home/home_action.dart';
import 'package:project3/app/util/app_constant.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';
import 'package:readmore/readmore.dart';

class HomeCardDetails extends StatelessWidget {
  const HomeCardDetails({super.key, this.imageName});
  final String? imageName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context
                .read<AppBloc>()
                .add(HomeBackCardDetailsAction(context: context));
          },
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          color: ColorApp.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.grey,
          ),
          const NotificationsAppBar(),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Positioned(
              bottom: 0.0,
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(imageName!),
                            fit: BoxFit.cover)),
                    child: Transform.translate(
                      offset: const Offset(-120, 75),
                      child: DotsIndicator(
                        dotsCount: 3,
                        position: 1,
                        decorator: DotsDecorator(
                          activeColor: Colors.blue,
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Black turtleneck top",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Row(
                    children: const [
                      Text(
                        "\$42\t\t",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                      Text(
                        "\$62",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.black,
                            decorationThickness: 2),
                      ),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 1),
                              bottom:
                                  BorderSide(color: Colors.grey, width: 1))),
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(3)),
                                margin: const EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: const Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const Text(
                                "Very Good",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              )
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "49 Reviews",
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      )),
                  const Text(
                    "Description",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase oogle’s mobile UI open source framework to build high-quality native oogle’s mobile UI open source framework to build high-quality native.',
                    trimLines: 5,
                    style: TextStyle(color: ColorApp.blackShade),
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                      color: Colors.blue,
                    ),
                    lessStyle: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: ColorApp.blackShad1, width: 1),
                            bottom: BorderSide(
                                color: ColorApp.blackShad1, width: 1))),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "Select Size",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "Select Color",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    ColorApp.whiteElvBtn)),
                            onPressed: () {},
                            child: const Text(
                              "S",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      Container(
                        width: 50,
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {},
                            child: const Text(
                              "M",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      Container(
                        width: 50,
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    ColorApp.whiteElvBtn)),
                            onPressed: () {},
                            child: const Text(
                              "L",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      SizedBox(
                        width: 70,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                elevation: MaterialStateProperty.all(0)),
                            onPressed: () {},
                            child: const Text(
                              "XXL",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                ColorApp.whiteElvBtn)),
                        onPressed: () {},
                        child: Text(
                          atc,
                          style: const TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          buy,
                          style: const TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
