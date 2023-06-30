// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:apppetlife/views/Clinicas.dart';
import 'package:apppetlife/views/agendarConsulta.dart';
import 'package:apppetlife/views/configteste.dart';
import 'package:apppetlife/views/historico.dart';
import 'package:apppetlife/views/login.dart';
import 'package:apppetlife/views/meuPerfil.dart';
import 'package:apppetlife/views/meupet.dart';
import 'package:apppetlife/views/minhaConta.dart';
import 'package:apppetlife/views/minhasColsultas.dart';
import 'package:apppetlife/views/notificacoes.dart';
import 'package:apppetlife/views/pet.dart';
import 'package:apppetlife/views/planos.dart';
import 'package:apppetlife/views/sobre.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  int _currentIndex = 0;
  // ignore: unused_field
  int _selectedIndex = 0;

  void onItemTapped(int index) {
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

  void _abrirConf() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => configteste()));
  }

  void _abrirConfteste() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => configteste()));
  }

  void _abrirPerfil() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MeuPerfil()));
  }

  void _abrirLoguin() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  void _abrirAgendar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AgendarConsulta()));
  }

  void _abrirMinhasConsultas() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MinhasConsultas()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onTap: _abrirPerfil),
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
                onTap: _abrirSobre),
            ListTile(
                leading: Icon(
                  FontAwesomeIcons.paw,
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
                onTap: _abrirMeuPet),
            ListTile(
                leading: Icon(
                  FontAwesomeIcons.heartPulse,
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
                  "Meu Plano",
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
                onTap: _abrirPlanos),
            ListTile(
                leading: Icon(
                  Icons.calendar_month,
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
                  "Agendar Consulta",
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
                onTap: _abrirAgendar),
            ListTile(
                leading: Icon(
                  FontAwesomeIcons.arrowRightFromBracket,
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
                  "Sair",
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
                onTap: _abrirLoguin),
          ],
        ),
      ),
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
              _abrirNoti();
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
      body: _getBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 165, 107, 255),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 165, 107, 255),
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: Colors.white,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 165, 107, 255),
            icon: FaIcon(
              FontAwesomeIcons.paw,
              color: Colors.white,
              size: 30,
            ),
            label: 'Pet',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 165, 107, 255),
            icon: FaIcon(
              FontAwesomeIcons.hospital,
              color: Colors.white,
              size: 30,
            ),
            label: 'Clinícas',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 165, 107, 255),
            icon: FaIcon(
              FontAwesomeIcons.folderClosed,
              color: Colors.white,
              size: 30,
            ),
            label: 'Histórico',
          ),
        ],
      ),
    );
  }

  Widget _getBody() {
    switch (_currentIndex) {
      case 0:
        return homeBody();
      case 1:
        return const MeuPets();
      case 2:
        return LojasDisponiveisScreen();
      case 3:
        return const Historico();
      default:
        return Container();
    }
  }

  Widget homeBody() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.all(29),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        _abrirAgendar();
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
                      height: 20,
                    ),
                    Text(
                      "Agendar Consulta",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 2,
                      width: 120,
                      color: Color.fromARGB(255, 165, 107, 255),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        _abrirPerfil();
                      },
                      child: Container(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Meu Perfil",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 2,
                      width: 120,
                      color: Color.fromARGB(255, 165, 107, 255),
                    ),
                  ],
                ),
                SizedBox(
                  width: 85,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _abrirPlanos();
                      },
                      child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 165, 107, 255),
                          ),
                          child: Icon(
                            FontAwesomeIcons.heartPulse,
                            size: 50,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Meu Plano",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 2,
                      width: 120,
                      color: Color.fromARGB(255, 165, 107, 255),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        _abrirMinhasConsultas();
                      },
                      child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 165, 107, 255),
                          ),
                          child: Icon(
                            FontAwesomeIcons.calendarCheck,
                            size: 50,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Minhas Consultas",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 2,
                      width: 120,
                      color: Color.fromARGB(255, 165, 107, 255),
                    ),
                  ],
                ),
                Divider(
                  height: 32,
                  thickness: 1,
                  color: Colors.amber,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
