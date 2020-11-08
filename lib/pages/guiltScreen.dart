import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class GuiltScreen extends StatefulWidget {
  @override
  GuiltScreenState createState() {
    return new GuiltScreenState();
  }
}

class GuiltScreenState extends State<GuiltScreen> {
  List<QuestionItem> guiltQuestion =[
  new QuestionItem(libelleFr: 'Avez-vous grandi dans un environnement où régnaient l\'autoritarisme et l\'intimidation?'),
  new QuestionItem(libelleFr: 'Est-il très difficile de pardonner vos propres erreurs?'),
  new QuestionItem(libelleFr: 'Est-il difficile pour vous de pardonner à ceux qui vous offensent?'),
  new QuestionItem(libelleFr: 'Avez-vous constamment peur d\'enfreindre une règle sociale?'),
  new QuestionItem(libelleFr: 'Avez-vous peur face à la possibilité de mauvaises nouvelles?'),
  new QuestionItem(libelleFr: 'Vous sentez-vous effrayé chaque fois que vous pensez à l\'avenir?'),
  new QuestionItem(libelleFr: 'Êtes-vous très contrarié lorsque quelque chose ne se passe pas parfaitement?'),
  new QuestionItem(libelleFr: 'Vous sentez-vous excessivement gêné par un manque de ponctualité?'),
  new QuestionItem(libelleFr: 'Vous sentez-vous souvent en insécurité?'),
  new QuestionItem(libelleFr: 'Vous sentez-vous facilement en colère contre vous-même et contre les autres?'),
  new QuestionItem(libelleFr: 'Vous inquiétez-vous excessivement de ce que les autres peuvent penser de vous?'),
  new QuestionItem(libelleFr: 'Dans votre imagination, Dieu est-il toujours bouleversé à cause de vos péchés et de vos imperfections?'),
];

int score = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(score.toString()),
        Expanded(
                  child: new ListView.builder(
              itemCount: guiltQuestion.length,
              itemBuilder: (context, i) => new Row(
                    children: [
                      Expanded(child: Text(guiltQuestion[i].libelleFr)),
                      Checkbox(
                          value: guiltQuestion[i].checked,
                          onChanged: (bool value) {
                            guiltQuestion[i].checked = value;
                            setState(() {
                              if(value == true){
                                score++;
                              }
                              else score--;
                            });
                          }),
                    ],
                  )),
        ),
      ],
    );
  }
}
