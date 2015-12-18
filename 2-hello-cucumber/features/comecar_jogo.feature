# language: pt
Funcionalidade: Começar jogo
  Para poder passar o tempo
  Como jogar
  Quero poder começar um novo jogo

   Cenário: Começo de novo jogo com sucesso
    Ao começar um novo jogo, é mostrada a mensagem inicial para o jogador.

    Quando comeco um novo jogo
    Entao vejo a seguinte mensagem na tela:
      """
      Bem-vindo ao jogo da forca!
      """
