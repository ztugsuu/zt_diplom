part of 'index.dart';

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/car_main.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 50),
                      Text(
                        "Жолооч болон жижиг,\nдунд авто засварын\nгазарт зориулсан \nгар утасны \nпрограмм",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Тавтай морил :)",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Material(
                    color: MyThemes.mainGreen,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      splashColor: MyThemes.mainGray,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const BottomNav())));
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          "Эхлэх",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
