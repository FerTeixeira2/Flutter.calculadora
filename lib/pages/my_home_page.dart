import 'package:flutter/material.dart';
import 'package:primeira_aplicacao_flutter/widgets/acoes_matematica_widget.dart';
import 'package:primeira_aplicacao_flutter/widgets/input_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var valorInputController = TextEditingController();
  var valor2InputController = TextEditingController();
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              inputWidget(title: "Valor 1", controller: valorInputController),
              inputWidget(title: "Valor 2", controller: valor2InputController),
              AcoesMatematica(
                soma: exibeSoma,
                sub: exibeSub,
                mult: exibeMult,
                div: exibeDiv,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Resultado:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(resultado,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 32,
                          fontFamily: 'Times New Roman')),
                ),
              ])
            ]),
      ),
    );
  }

  void exibeSoma() {
    var valor1 = double.tryParse(valorInputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;
    resultado = (valor1 + valor2).toString();
    setState(() {});
  }

  void exibeSub() {
    var valor1 = double.tryParse(valorInputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;
    resultado = (valor1 - valor2).toString();
    setState(() {});
  }

  void exibeMult() {
    var valor1 = double.tryParse(valorInputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;
    resultado = (valor1 * valor2).toString();
    setState(() {});
  }

  void exibeDiv() {
    var valor1 = double.tryParse(valorInputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;
    resultado = (valor1 / valor2).toString();
    setState(() {});
  }
}
