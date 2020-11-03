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
  new QuestionItem(libelle: 'Avez-vous grandi dans un environnement où régnaient l\'autoritarisme et l\'intimidation?'),
  new QuestionItem(libelle: 'Est-il très difficile de pardonner vos propres erreurs?'),
  new QuestionItem(libelle: 'Est-il difficile pour vous de pardonner à ceux qui vous offensent?'),
  new QuestionItem(libelle: 'Avez-vous constamment peur d\'enfreindre une règle sociale?'),
  new QuestionItem(libelle: 'Avez-vous peur face à la possibilité de mauvaises nouvelles?'),
  new QuestionItem(libelle: 'Vous sentez-vous effrayé chaque fois que vous pensez à l\'avenir?'),
  new QuestionItem(libelle: 'Êtes-vous très contrarié lorsque quelque chose ne se passe pas parfaitement?'),
  new QuestionItem(libelle: 'Vous sentez-vous excessivement gêné par un manque de ponctualité?'),
  new QuestionItem(libelle: 'Vous sentez-vous souvent en insécurité?'),
  new QuestionItem(libelle: 'Vous sentez-vous facilement en colère contre vous-même et contre les autres?'),
  new QuestionItem(libelle: 'Vous inquiétez-vous excessivement de ce que les autres peuvent penser de vous?'),
  new QuestionItem(libelle: 'Dans votre imagination, Dieu est-il toujours bouleversé à cause de vos péchés et de vos imperfections?'),
];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: guiltQuestion.length,
        itemBuilder: (context, i) => new Row(
              children: [
                Expanded(child: Text(guiltQuestion[i].libelle)),
                Checkbox(
                    value: guiltQuestion[i].checked,
                    onChanged: (bool value) {
                      guiltQuestion[i].checked = value;
                      setState(() {
                        
                      });
                    }),
              ],
            ));
  }
}
