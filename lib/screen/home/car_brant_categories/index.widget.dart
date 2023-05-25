part of 'index.dart';

extension _Widget on _CarBrandState {
  Widget get _carInfo {
    return Scaffold(
      body: _type,
    );
  }
}

Widget get _type {
  return Builder(
    builder: (context) {
      return ListView(
        children: [
          Column(
            children: List.generate(
              carBrandategoriesData.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 2, color: MyThemes.mainGreen),
                  ),
                  child: Material(
                    color: MyThemes.mainGreenBG,
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const CarServiceType()),
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
                        height: 75,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                carBrandategoriesData[index].logo.toString(),
                                height: 50,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 2,
                              child: Text(
                                carBrandategoriesData[index].name.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Icon(Icons.arrow_right),
                              
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
  );
}
