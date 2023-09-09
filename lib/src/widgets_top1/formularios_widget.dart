import 'package:flutter/material.dart';

class FormulariosWidget extends StatefulWidget {
  const FormulariosWidget({super.key});

  @override
  State<FormulariosWidget> createState() => _FormulariosWidgetState();
}

class _FormulariosWidgetState extends State<FormulariosWidget> {
  final formkey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  int itemValue = 1;

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Page'),
        ),
        body: SingleChildScrollView(
          child: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    /* TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Digite um texto',
                      ),
                      onChanged: (String value) {
                        setState(() {
                          texto = value;
                        });
                      },
                    ), */
                    // const SizedBox(height: 10, width: 10),
                    //  Text('Texto Digitado $texto'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: nameEC, // para pegar o valor do campo
                      //  autovalidateMode: AutovalidateMode.onUserInteraction,// para validar o campo ao sair do campo
                       // maxLines: null, // para expandir o campo com quebra de linha
                        decoration: const InputDecoration( // para personalizar o campo
                          labelText: 'Usuário', // label do campo
                          border: OutlineInputBorder( // para personalizar a borda do campo
                            borderRadius: BorderRadius.all(Radius.circular(10)), // para arredondar a borda
                            borderSide: BorderSide( // para personalizar a borda
                              color: Colors.red, // cor da borda
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder( // para personalizar a borda do campo quando não está selecionado
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder( // para personalizar a borda do campo quando está selecionado
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder( // para personalizar a borda do campo quando está com erro
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          labelStyle: TextStyle( // para personalizar o label do campo
                            color: Colors.green,
                            fontSize: 16,
                          ),
                          isDense: true, // para diminuir o tamanho do campo
                        ),
                        maxLines: 1, // para expandir o campo com quebra de linha
                        validator: (String? value) { // para validar o campo
                          if (value == null || value.isEmpty) {
                            return 'Digite um texto';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: nameEC,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                          ),
                          isDense: true, // para 
                        ),
                        obscureText: true, // para ocultar o texto digitado
                        // maxLines: 1,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite um texto';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10, width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonFormField(
                        validator: (value) {
                          if (value == null) {
                            return 'Selecione um item';
                          }
                          return null;
                        },
                        value: itemValue,
                        elevation: 16,
                        isDense: true,
                        icon: const Icon(Icons.arrow_downward),
                        decoration: const InputDecoration(
                          labelText: 'Selecione um item',
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                        ),
                        items: const [
                          DropdownMenuItem(value: 1, child: Text('Item 1')),
                          DropdownMenuItem(value: 2, child: Text('Item 2')),
                          DropdownMenuItem(value: 3, child: Text('Item 3')),
                        ],
                        onChanged: (value) {
                          itemValue = value as int;
                        },
                      ),
                    ),

                    ElevatedButton(
                        onPressed: () {
                          var formValid = formkey.currentState?.validate() ?? false;
                          var message = 'Formulário inválido';
                          if (formValid) {
                            message = 'Formulário válido (Name: ${nameEC.text})';
                          }
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(message),
                            duration: const Duration(seconds: 2),
                          ));
                        },
                        child: const Text('Gravar')),
                  ],
                ),
              )),
        ));
  }
}
