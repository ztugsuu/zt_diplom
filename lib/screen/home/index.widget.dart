part of 'index.dart';

extension _Widget on _ServiceTypeState {
  Widget get _serviceType {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 57, 7),
        elevation: 0.0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: const Text(
          'Авто засвар',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
           const Padding(
             padding:  EdgeInsets.all(25),
             child:  Text(
                     'Санал болгож буй үйлчилгээ',
                     textAlign: TextAlign.left,
                     style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color.fromARGB(255, 255, 72, 0),
                     ),
                   ),
           ),
          _type,
        ],
      ),
    );
  }
}

Widget get _type {
  return Wrap(
    alignment: WrapAlignment.center,
    children: List.generate(
      _typeService.length,
      (index) => Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 255, 72, 0),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          width: 150,
          height: 150,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Icon(
                  _typeService[index]["icon"],
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  _typeService[index]["text"],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

List<Map<String, dynamic>> _typeService = [
  {"icon": Icons.car_repair, "text": "Машин угаалга"},
  {"icon": Icons.car_repair, "text": "Кузов засвар"},
  {"icon": Icons.car_repair, "text": "Явах эд анги"},
  {"icon": Icons.car_repair, "text": "Авто оншилгоо"},
  {"icon": Icons.car_repair, "text": "Явах эд анги"},
  {"icon": Icons.car_repair, "text": "Авто оншилгоо"},
  {"icon": Icons.car_repair, "text": "Явах эд анги"},
  {"icon": Icons.car_repair, "text": "Авто оншилгоо"},
];
