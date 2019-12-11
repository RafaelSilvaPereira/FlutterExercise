import 'dart:math';

class MensagemController {
  final frases = [
    "Os problemas são oportunidades para se mostrar o que sabe",
    "Nossos fracassos, às vezes, são mais frutíferos do que os êxitos",
    "“É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo”",
    "O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido",
    "Cada cliente é como se fosse primeiro e único",
    "esmo que já tenhas feito uma longa caminhada, há sempre um novo caminho a fazer",
    "Vender é construir uma ponte entre você e seu cliente e fazê-lo atravessar para o seu lado",
    "Na prosperidade, nossos amigos nos conhecem; na adversidade, nós é que conhecemos nossos amigos"
  ];

  String getMensagem() {
    return frases[Random().nextInt(frases.length)];
  }
}
