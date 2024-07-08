import 'package:flutter/material.dart';

class ReportFormWidget extends StatelessWidget {
  final TextEditingController report1Controller = TextEditingController();
  final TextEditingController report2Controller = TextEditingController();
  final TextEditingController report3Controller = TextEditingController();
  final Function(String, String, String) onSubmit;

  ReportFormWidget({Key? key, required this.onSubmit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(234, 255, 255, 255),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Nuevo Reporte'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: report1Controller,
              decoration: InputDecoration(labelText: 'Reporte 1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: report2Controller,
              decoration: InputDecoration(labelText: 'Reporte 2'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: report3Controller,
              decoration: InputDecoration(labelText: 'Reporte 3'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  onSubmit(
                    report1Controller.text,
                    report2Controller.text,
                    report3Controller.text,
                  );
                  report1Controller.clear();
                  report2Controller.clear();
                  report3Controller.clear();
                },
                child: Text('Agregar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  List<List<Widget>> _reports = [
    [], // Reports for FirstPage
    [], // Reports for SecondPage
    [], // Reports for ThirdPage
  ];

  PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> _pageTitles = ['Extracción', 'Impresión', 'Sellado'];

  void _addReport(String report1, String report2, String report3) {
    setState(() {
      _reports[_currentPage].insert(
        0,
        _buildReportWidget(
          report1,
          report2,
          report3,
          _reports[_currentPage].length + 1,
          _pageTitles[_currentPage], // Pasar el título de la página actual
        ),
      );
    });
  }

  Widget _buildReportWidget(
      String report1, String report2, String report3, int index, String pageTitle) {
    return GestureDetector(
      onTap: () {
        _showOptionsDialog(index);
      },
      child: Card(
        color: Color.fromARGB(127, 151, 235, 228),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListTile(
          title: Text('Numero de Reporte #$index - $pageTitle'), // Mostrar el título aquí
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reporte 1: $report1'),
              Text('Reporte 2: $report2'),
              Text('Reporte 3: $report3'),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _deleteReport(index - 1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showOptionsDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Opciones de Reporte'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextButton(
                  child: Text('Imprimir Ticket'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Fin de Turno'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _deleteReport(int index) {
    setState(() {
      _reports[_currentPage].removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 38, 83),
        title: Text(
          'Pagina Reporte',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 206, 207, 209)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      bottomNavigationBar: PreferredSize(
  preferredSize: Size.fromHeight(kToolbarHeight),
  child: Container(
    color: Color.fromARGB(255, 241, 242, 245),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_circle_down),
              onPressed: () {
                _changePage(0);
              },
              color: _currentPage == 0
                  ? Color.fromARGB(255, 25, 38, 83)
                  : Color.fromARGB(255, 177, 177, 177),
            ),
             SizedBox(height: 0),
            Text(
              'Extracción',
              style: TextStyle(
                color: _currentPage == 0
                    ? Color.fromARGB(255, 25, 38, 83)
                    : Color.fromARGB(255, 177, 177, 177),
              ),
            ),
             SizedBox(height: 10),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.print),
              onPressed: () {
                _changePage(1);
              },
              color: _currentPage == 1
                  ? Color.fromARGB(255, 25, 38, 83)
                  : Color.fromARGB(255, 177, 177, 177),
            ),
              SizedBox(height: 0),
            Text(
              'Impresión',
              style: TextStyle(
                color: _currentPage == 1
                    ? Color.fromARGB(255, 25, 38, 83)
                    : Color.fromARGB(255, 151, 151, 151),
              ),
            ),
              SizedBox(height: 10),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.send_and_archive),
              onPressed: () {
                _changePage(2);
              },
              color: _currentPage == 2
                  ? Color.fromARGB(255, 25, 38, 83)
                  : Color.fromARGB(255, 151, 151, 151),
            ),
             SizedBox(height: 0),
            Text(
              'Sellado',
              style: TextStyle(
                color: _currentPage == 2
                    ? Color.fromARGB(255, 25, 38, 83)
                    : Color.fromARGB(255, 151, 151, 151),
              ),
            ),
             SizedBox(height: 10),
          ],
        ),
      ],
    ),
  ),
),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                ListView(
                  children: [
                    ..._reports[0],
                  ],
                ),
                ListView(
                  children: [
                    ..._reports[1],
                  ],
                ),
                ListView(
                  children: [
                    ..._reports[2],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 13, 139, 128),
        foregroundColor: Colors.white,
        onPressed: () {
          _addReport('Reporte 1', 'Reporte 2', 'Reporte 3');
        },
      ),
    );
  }

  void _changePage(int index) {
    setState(() {
      _currentPage = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }
}