import 'package:flutter/material.dart';

import '../../../../../data/categories.dart';
import '../../../../../model/service/service_categories.dart';
import '../../../../../theme/themes.dart';
import 'detailsPost/index.dart';

class PublishPost extends StatelessWidget {
  const PublishPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: MyThemes.mainGreen,
        elevation: 0.0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: const Text(
          'зар',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          return ListView(
            children: [
              Column(
                children: List.generate(
                  carPostData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 2, color: MyThemes.mainGreen),
                      ),
                      child: Material(
                        color: const Color.fromARGB(46, 52, 152, 115),
                        // borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          // borderRadius: BorderRadius.circular(5),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const DetailsPost()),
                              ),
                            );
                          },
                          splashColor: MyThemes.mainGray,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              // color: Color.fromARGB(255, 255, 72, 0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            width: double.infinity,
                            height: 150,
                            child: Row(
                              children: [
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Image.asset(
                                      carPostData[index].photo.toString(),
                                      scale: 1,
                                      // height: 50,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        carPostData[index].title.toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        carPostData[index].text.toString(),
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                      ),
                                      Text(
                                        "Үнэ: " +
                                            carPostData[index].price.toString(),
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Утас: " +
                                            carPostData[index].phone.toString(),
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
