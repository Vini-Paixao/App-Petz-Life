// ignore_for_file: prefer_const_constructors

import 'package:apppetlife/views/historico.dart';
import 'package:apppetlife/views/homes.dart';
import 'package:apppetlife/views/pet.dart';
import 'package:apppetlife/views/planos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MinhaConta extends StatefulWidget {
  const MinhaConta({super.key});

  @override
  State<MinhaConta> createState() => _MinhaContaState();
}

File? _selectedImage;

class _MinhaContaState extends State<MinhaConta>
    with SingleTickerProviderStateMixin {
  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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

  void _abrirHomes() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Homes()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 165, 107, 255),
        title: Image.asset(
          "imagens/Logo.png",
          width: 50,
          height: 50,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_selectedImage != null)
                ClipOval(
                    child: Image.file(
                  _selectedImage!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                )),
              ElevatedButton(
                onPressed: () => _pickImage(ImageSource.gallery),
                child: Text("Selecionar uma imagem da galeria"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: Color.fromARGB(255, 212, 148, 255)),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.name,
                cursorColor: Color.fromARGB(255, 165, 107, 255),
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.fingerprint,
                    size: 20,
                    color: Color.fromRGBO(69, 161, 255, 0.45),
                  ),
                  labelText: "Nome",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                cursorColor: Color.fromARGB(255, 165, 107, 255),
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.idCard,
                    size: 20,
                    color: Color.fromRGBO(69, 161, 255, 0.45),
                  ),
                  labelText: "RG",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.datetime,
                cursorColor: Color.fromARGB(255, 165, 107, 255),
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.idCardClip,
                    size: 20,
                    color: Color.fromRGBO(69, 161, 255, 0.45),
                  ),
                  labelText: "CPF",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                cursorColor: Color.fromARGB(255, 165, 107, 255),
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.phoneFlip,
                    size: 20,
                    color: Color.fromRGBO(69, 161, 255, 0.45),
                  ),
                  labelText: "Telefone",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                cursorColor: Color.fromRGBO(69, 161, 255, 0.45),
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.mapLocation,
                    size: 20,
                    color: Color.fromRGBO(69, 161, 255, 0.45),
                  ),
                  labelText: "Endereço",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                cursorColor: Color.fromARGB(255, 165, 107, 255),
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.envelope,
                    size: 20,
                    color: Color.fromRGBO(69, 161, 255, 0.45),
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                cursorColor: Color.fromARGB(255, 165, 107, 255),
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.lockOpen,
                    size: 20,
                    color: Color.fromRGBO(69, 161, 255, 0.45),
                  ),
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  _abrirHomes();
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Color.fromARGB(255, 212, 148, 255)),
                child: Text(
                  "Alterar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
