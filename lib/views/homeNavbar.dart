// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:apppetlife/views/Clinicas.dart';
import 'package:apppetlife/views/configteste.dart';
import 'package:apppetlife/views/historico.dart';
import 'package:apppetlife/views/homes.dart';
import 'package:apppetlife/views/minhaConta.dart';
import 'package:apppetlife/views/notificacoes.dart';
import 'package:apppetlife/views/pet.dart';
import 'package:apppetlife/views/planos.dart';
import 'package:apppetlife/views/sobre.dart';
import 'package:flutter/material.dart';

class TestNavnar extends StatefulWidget {
  const TestNavnar({super.key});

  @override
  State<TestNavnar> createState() => _TestNavnarState();
}

class _TestNavnarState extends State<TestNavnar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Homee(),
    Planos(),
    Consultas(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _abrirPlanos() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Planos()));
  }

  void _abrirHistorico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Historico()));
  }

  void _abrirMeuPet() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => meuPet()));
  }

  void _abrirMinhaConta() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MinhaConta()));
  }

  void _abrirNoti() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Notificacoes()));
  }

  void _abrirClinica() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LojasDisponiveisScreen()));
  }

  void _abrirSobre() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
  }

  void _abrirConfteste() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => configteste()));
  }

  void _abrirHomes() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Homes()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 165, 107, 255),
          title: Image.asset(
            "imagens/Logo.png",
            width: 50,
            height: 50,
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                _abrirHomes();
              },
              child: Icon(
                Icons.notification_add,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                _abrirConfteste();
              },
              child: Icon(
                Icons.settings,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 165, 107, 255),
          surfaceTintColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Image.asset("imagens/Logo.png"),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                  shadows: const <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
                title: Text(
                  "Meu Perfil",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  _abrirMinhaConta();
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outlined,
                  color: Colors.white,
                  shadows: const <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
                title: Text(
                  "Sobre nosso App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  _abrirSobre();
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.home_work_outlined,
                  color: Colors.white,
                  shadows: const <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
                title: Text(
                  "Clinicas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  _abrirClinica();
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.white,
                  shadows: const <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
                title: Text(
                  "Meu Pet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  _abrirMeuPet();
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 165, 107, 255),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pets_rounded,
                size: 30,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.schedule,
                size: 30,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedLabelStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 150),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Meu Plano",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  ;
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 165, 107, 255),
                  ),
                  child: Icon(
                    Icons.calendar_month,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Agendar Consulta",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  ();
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 165, 107, 255),
                  ),
                  child: Icon(
                    Icons.home_work_outlined,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Clínicas",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 165, 107, 255),
                ),
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Meu Perfil",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class Consultas extends StatelessWidget {
  Widget _buildHistorico(String title, String text) {
    return Card(
      color: const Color.fromARGB(255, 180, 180, 180),
      margin: EdgeInsets.all(0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Color.fromARGB(255, 165, 107, 255),
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          text,
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(children: [
          _buildHistorico(
              "1. Consulta mensal - Clinica Oscar Freire (14/05/2023)",
              "Consulta mensal realizada na clinica oscar Freire, Jorginho está suavao (POR ENQUANTO HAHA)"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "1. Consulta mensal - Clinica Oscar Freire (14/05/2023)",
              "Consulta mensal realizada na clinica oscar Freire, Jorginho está suavao (POR ENQUANTO HAHA)"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "1. Consulta mensal - Clinica Oscar Freire (14/05/2023)",
              "Consulta mensal realizada na clinica oscar Freire, Jorginho está suavao (POR ENQUANTO HAHA)"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "1. Consulta mensal - Clinica Oscar Freire (14/05/2023)",
              "Consulta mensal realizada na clinica oscar Freire, Jorginho está suavao (POR ENQUANTO HAHA)"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "1. Consulta mensal - Clinica Oscar Freire (14/05/2023)",
              "Consulta mensal realizada na clinica oscar Freire, Jorginho está suavao (POR ENQUANTO HAHA)"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "1. Consulta mensal - Clinica Oscar Freire (14/05/2023)",
              "Consulta mensal realizada na clinica oscar Freire, Jorginho está suavao (POR ENQUANTO HAHA)"),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    ));
  }
}
