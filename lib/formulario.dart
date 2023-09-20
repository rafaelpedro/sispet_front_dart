import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:formulario_flutter/widgets/layout.dart';

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  final _formKey = GlobalKey<FormState>();

  String nome = "";
  String nomeResponsavel = "";
  String cor = "";
  String idade = "";
  String temperamento = "";
  String especie = "";
  String email = "";
  String senha = "";

  //PAREI AQUI PRECISO ADD O EMAIL E SENHA E A VALIDAÇÃO

  final _nomeEC = TextEditingController();
  final _nomeResponsavelEC = TextEditingController();
  final _corEC = TextEditingController();
  final _idadeEC = TextEditingController();
  final _temperamentoEC = TextEditingController();
  final _especieEC = TextEditingController();
  final _emailEC = TextEditingController();
  final _senhaEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: Text("SISPET - Cadastro"),
          background: Container(
            color: Colors.black, // Defina a cor de fundo desejada aqui
          ),
        ),
        //  title: const Text("Cadastro de Pet"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DefaultTextForm(
                label: 'Nome',
                controller: _nomeEC,
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return "Campo obrigatório";
                  }
                  return null;
                },
              ),
              DefaultTextForm(
                label: 'Nome do Responsável',
                controller: _nomeResponsavelEC,
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return "Campo obrigatório";
                  }
                  return null;
                },
              ),
              DefaultTextForm(
                label: 'Cor',
                controller: _corEC,
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return "Campo obrigatório";
                  }
                  return null;
                },
              ),
              DefaultTextForm(
                label: 'Idade',
                controller: _idadeEC,
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return "Campo obrigatório";
                  }
                  return null;
                },
              ),
              DefaultTextForm(
                label: 'Temperamento',
                controller: _temperamentoEC,
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return "Campo obrigatório";
                  }
                  return null;
                },
              ),
              DefaultTextForm(
                label: 'Especie',
                controller: _especieEC,
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return "Campo obrigatório";
                  }
                  return null;
                },
              ),
              DefaultTextForm(
                label: 'Email',
                controller: _emailEC,
                validator: (value) {
                  if (value!.isNotEmpty) {
                    final bool isValid = EmailValidator.validate(value);

                    if (isValid == false) {
                      return "Digite um email válido!";
                    }
                  } else
                    return null;
                },
              ),
              DefaultTextForm(
                label: 'Senha',
                obscureText: true,
                controller: _senhaEC,
                validator: (value) {
                  if (value!.length < 6) {
                    return "Senha deve ter no minimo 6 caracteres";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      final validate =
                          _formKey.currentState?.validate() ?? false;

                      if (validate) {
                        setState(() {
                          nome = _nomeEC.text;
                          nomeResponsavel = _nomeResponsavelEC.text;
                          cor = _corEC.text;
                          idade = _idadeEC.text;
                          temperamento = _temperamentoEC.text;
                          especie = _especieEC.text;
                          email = _emailEC.text;
                          senha = _senhaEC.text;
                        });
                        nome = _nomeEC.text;
                        nomeResponsavel = _nomeResponsavelEC.text;
                        cor = _corEC.text;
                        idade = _idadeEC.text;
                        temperamento = _temperamentoEC.text;
                        especie = _especieEC.text;
                        email = _emailEC.text;
                        senha = _senhaEC.text;
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.black), // Defina a cor de fundo desejada aqui
                    ),
                    child: Text(
                      'Enviar',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              SizedBox(height: 20),
              Text('Nome: $nome'),
              Text('Nome do Responsavel: $nomeResponsavel'),
              Text('Cor: $cor'),
              Text('Idade: $idade'),
              Text('Temperamento: $temperamento'),
              Text('especie: $especie'),
              Text('Email: $email'),
              Text('Senha: $senha')
            ],
          ),
        ),
      ),
    );
  }
}
