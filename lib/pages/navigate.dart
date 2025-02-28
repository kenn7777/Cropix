


/*class Navigate extends StatefulWidget {
  Navigate({super.key});

  @override
  State<Navigate> createState() => _HomeState();
}

class _HomeState extends State<Navigate> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List _pages = [
    Home(),
    User(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,

        onTap: _navigateBottomBar,


        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          //
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],

      ),
    );
  }
}
*/