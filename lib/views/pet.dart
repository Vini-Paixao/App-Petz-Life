// ignore_for_file: prefer_const_constructors

import 'package:apppetlife/views/historico.dart';
import 'package:apppetlife/views/homes.dart';
import 'package:apppetlife/views/planos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class meuPet extends StatefulWidget {
  const meuPet({super.key});

  @override
  State<meuPet> createState() => _meuPetState();
}

File? _selectedImage;

class _meuPetState extends State<meuPet> {
  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
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
                    FontAwesomeIcons.paw,
                    size: 20,
                    color: Color.fromARGB(255, 212, 148, 255),
                  ),
                  labelText: "Nome do Doguinho",
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
                    FontAwesomeIcons.bone,
                    size: 20,
                    color: Color.fromARGB(255, 212, 148, 255),
                  ),
                  labelText: "Idade",
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
                    FontAwesomeIcons.dog,
                    size: 20,
                    color: Color.fromARGB(255, 212, 148, 255),
                  ),
                  labelText: "Apelido",
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
