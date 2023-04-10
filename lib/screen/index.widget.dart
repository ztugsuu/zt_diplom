part of 'index.dart';

extension _Widget on _NavigationBarWidgetState{
  Widget get _navigationButtons{
    return Scaffold(
      body: Center(
        child: _NavigationBarWidgetState._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Нүүр',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Мэдээлэл',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Хэрэглэгч',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 57, 7),
        onTap: _onItemTapped,
      ),
    );
  }
}