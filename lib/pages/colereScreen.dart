import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ColereScreen extends StatefulWidget {
  @override
  ColereScreenState createState() {
    return new ColereScreenState();
  }
}

class ColereScreenState extends State<ColereScreen> {
  List<QuestionItem> colereQuestions = [
  new QuestionItem(libelle: 'Est-il difficile pour vous d\'oublier les mauvaises choses que les autres vous font?'),
  new QuestionItem(libelle: 'Lorsque vous n\'êtes pas d\'accord avec vos amis, vous retrouvez-vous dans une vive argumentation?'),
  new QuestionItem(libelle: 'Quand vous pensez à votre adversaire, avez-vous des douleurs à l\'estomac et une fréquence cardiaque rapide?'),
  new QuestionItem(libelle: 'Êtes-vous contrarié lorsque vous devez faire la queue?'),
  new QuestionItem(libelle: 'Êtes-vous en colère contre vous-même lorsque vous ne pouvez pas contrôler vos émotions?'),
  new QuestionItem(libelle: 'Êtes-vous très contrarié lorsque les autres ne sont pas ponctuels ou ne font pas les choses complètement?'),
  new QuestionItem(libelle: 'Avez-vous tendance à ne pas vous souvenir de ce que vous avez dit pendant que vous étiez furieux?'),
  new QuestionItem(libelle: 'Avez-vous remarqué des effets néfastes sur nos relations à cause de votre mauvaise humeur?'),
  new QuestionItem(libelle: 'Après avoir été bouleversé, ressentez-vous un fort désir de manger, de fumer ou de boire de l\'alcool pour compenser ce qui s\'est passé?'),
  new QuestionItem(libelle: 'Vous êtes-vous déjà mis en colère au point de cogner une personne ou un objet?'),
];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: colereQuestions.length,
        itemBuilder: (context, i) => new Row(
              children: [
                Expanded(child: Text(colereQuestions[i].libelle)),
                Checkbox(
                    value: colereQuestions[i].checked,
                    onChanged: (bool value) {
                      colereQuestions[i].checked = value;
                      setState(() {
                        
                      });
                    }),
              ],
            ));
  }
}
