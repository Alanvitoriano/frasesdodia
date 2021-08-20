import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "O amor não se vê com os olhos mas com o coração.",
    "Um coração feliz é o resultado inevitável de um coração ardente de amor.",
    "Lutar pelo amor é bom, mas alcançá-lo sem luta é melhor. ",
    "Cada qual sabe amar a seu modo; o modo, pouco importa; o essencial é que saiba amar. ",
    "A distância faz ao amor aquilo que o vento faz ao fogo: apaga o pequeno, inflama o grande.",
    "Amai, porque nada melhor para a saúde que um amor correspondido.",
    "Amar não é olhar um para o outro, é olhar juntos na mesma direção.",
    "Amar não é aceitar tudo. Aliás: onde tudo é aceito, desconfio que há falta de amor.",
    "Como são sábios aqueles que se entregam às loucuras do amor!",
    "Vós, que sofreis, porque amais, amai ainda mais. Morrer de amor é viver dele.",
    "Nada é pequeno no amor. Quem espera as grandes ocasiões para provar a sua ternura não sabe amar.",
    "O amor é a força mais sutil do mundo.",
    "A suprema felicidade da vida é ter a convicção de que somos amados.",
    "O coração tem razões que a própria razão desconhece.",
    "O prazer do amor é amar e sentirmo-nos mais felizes pela paixão que sentimos do que pela que inspiramos.",
    "O homem ama, porque o amor é a essência da sua alma. Por isso não pode deixar de amar.",
    "Amo-te como se amam certas coisas obscuras, secretamente, entre a sombra e a alma.",
  ];
  var _fraseGeradas = "Clique abaixo para gerar uma frase !!!";
  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    print(numeroSorteado);

    setState(() {
      _fraseGeradas = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases de amor"),
        backgroundColor: Colors.red[200],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*  decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/que-se-ame-logo.png"),
              Text(
                _fraseGeradas,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.red[200],
                onPressed: _gerarFrase,
              ),
              Text(
                "By: Alan vitoriano",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
