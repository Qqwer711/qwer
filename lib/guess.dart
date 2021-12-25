import 'dart:io';
import 'dart:math';
    class Game {
        static const maxRandom = 100;
        int? _answer;
        var guessCount = 0;

        Game() {
            var r = Random();
            _answer = r.nextInt(maxRandom) + 1;
        }

        int doGuess(int num) {
            guessCount++;
            if (num > _answer!) {
                return 1;
            } else if (num < _answer!) {
                return -1;
            } else {
                return 0;
            }
        }
        playgame() {
            const maxRandom = 100;
            var game=Game();
            //var random = Random();
            //var answer = random.nextInt(maxRandom) + 1;
            var isCorrect = false;
            //var guessCount = 0;

            print('╔════════════════════════════════════════');
            print('║            GUESS THE NUMBER            ');
            print('╟────────────────────────────────────────');

            do {
                stdout.write('║ Guess the number between 1 and $maxRandom: ');
                var input = stdin.readLineSync();
                var guess = int.tryParse(input!);
                if (guess == null) {
                    continue;
                }
                var result  = game.doGuess(guess);
                var c = game.guessCount;
                //guessCount++;

                if (result == 1) {
                    print('║ ➜ $guess is TOO HIGH! ▲');
                    print('╟────────────────────────────────────────');
                } else if (result == -1) {
                    print('║ ➜ $guess is TOO LOW! ▼');
                    print('╟────────────────────────────────────────');
                } else {
                    print('║ ➜ $guess is CORRECT ❤, total guesses: $c');
                    print('╟────────────────────────────────────────');
                    isCorrect = true;
                }
            } while (!isCorrect);

            print('║                 THE END                ');
            print('╚════════════════════════════════════════');



    }
    }

