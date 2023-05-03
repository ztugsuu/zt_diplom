part of 'index.dart';

extension _Widget on _ProfileState {
  Widget get _profilePage {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: bgColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileContainer(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Last Service",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: subText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              lastServiceList(),
              const SizedBox(height: 8),
              const Text(
                "Service List",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: subText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 80,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: serviceData.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(right: 18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyThemes.mainGreen.withOpacity(0.5),
                        ),
                        child: Image.asset(
                          serviceData[index].logo.toString(),
                          height: 20,
                          width: 40,
                        ),
                      );
                    })),
              ),
              const SizedBox(height: 25),
              Material(
                color: MyThemes.mainGreen,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  splashColor: MyThemes.mainGray,
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "Гарах",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox lastServiceList() {
  return SizedBox(
    height: 190,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: lastService.length,
      itemBuilder: ((context, index) {
        return Container(
          width: 150,
          height: 120,
          margin: const EdgeInsets.fromLTRB(0, 15, 15, 15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xff616161),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: MyThemes.mainGreen.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lastService[index].day.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          // color: subText,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        lastService[index].clock.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          // color: mainColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    lastService[index].serviceTime.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        // color: mainColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Service",
                textAlign: TextAlign.center,
                style: TextStyle(
                    // color: subText,
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                lastService[index].desc.toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                    // color: mainColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Material(
                color: const Color(0xff349874),
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  splashColor: index == 0 ? Colors.amber : Colors.amberAccent,
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "Харах",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    ),
  );
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff616161),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: MyThemes.mainGreen.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/profile_logo.png",
                width: 40,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Зоригоо Төгсжаргал",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // color: mainColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )
            ],
          ),
          const Icon(
            Icons.notifications_outlined,
            // color: mainColor,
            size: 30,
          )
        ],
      ),
    );
  }
}
