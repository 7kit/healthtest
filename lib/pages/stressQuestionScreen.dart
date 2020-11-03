import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class StressScreen extends StatefulWidget {
  @override
  StressScreenState createState() {
    return new StressScreenState();
  }
}

class StressScreenState extends State<StressScreen> {
  List<QuestionItem> stressQuestion = [
  new QuestionItem(libelle: 'Profitez-vous de la nature pendant votre temps libre?', isEven: false),
  new QuestionItem(libelle: 'Utilisez-vous des boissons alcoolisées?', isEven: true),
  new QuestionItem(libelle: 'Mangez-vous des fruits et légumes en abondance?', isEven: false),
  new QuestionItem(libelle: 'fumez-vous ?', isEven: true),
  new QuestionItem(libelle: 'Faites-vous de l\'exercice régulièrement?', isEven: false),
  new QuestionItem(libelle: 'Utilisez-vous habituellement des tranquillisants?', isEven: true),
  new QuestionItem(libelle: 'Vivez-vous dans une maison propre et organisée?', isEven: false),
  new QuestionItem(libelle: 'Vivez-vous dans un quartier bruyant?', isEven: true),
  new QuestionItem(libelle: 'Votre maison a-t-elle une atmosphère chaleureuse?', isEven: false),
  new QuestionItem(libelle: 'Êtes-vous toujours entouré de nombreuses personnes?', isEven: true),
  new QuestionItem(libelle: 'Avez-vous un bon appétit?', isEven: false),
  new QuestionItem(libelle: 'Oubliez-vous les choses facilement?', isEven: true),
  new QuestionItem(libelle: 'Votre système digestif fonctionne-t-il bien?', isEven: false),
  new QuestionItem(libelle: 'Vous sentez-vous fatigué sans raison apparente?', isEven: true),
  new QuestionItem(libelle: 'Dormez-vous bien?', isEven: false),
  new QuestionItem(libelle: 'Êtes-vous facilement irrité?', isEven: true),
  new QuestionItem(libelle: 'Avez-vous une bonne relation avec vos supérieurs?', isEven: false),
  new QuestionItem(libelle: 'Utilisez-vous votre voiture comme moyen de travail?', isEven: true),
  new QuestionItem(libelle: 'Avez-vous un emploi stable ?', isEven: false),
  new QuestionItem(libelle: 'Ramenez-vous du travail à la maison ?', isEven: true),
  new QuestionItem(libelle: 'Avez-vous de bonnes relations avec vos collègues et vos amis?', isEven: false),
  new QuestionItem(libelle: 'Devenez-vous très impatient quand vous devez attendre quelqu\'un?', isEven: true),
  new QuestionItem(libelle: 'Savez-vous écouter patiemment?', isEven: false),
  new QuestionItem(libelle: 'parlez-vous beaucoup?', isEven: true),
  new QuestionItem(libelle: 'Êtes-vous satisfait de votre vie sexuelle?', isEven: false),
  new QuestionItem(libelle: 'Essayez-vous de faire les choses mieux que les autres?', isEven: true),
  new QuestionItem(libelle: 'Êtes-vous satisfait de la façon dont vous êtes?', isEven: false),
  new QuestionItem(libelle: 'Êtes-vous un perfectionniste?', isEven: true),
  new QuestionItem(libelle: 'Avez-vous le sens de l\'humour?', isEven: false),
  new QuestionItem(libelle: 'Êtes-vous irrité lorsque vous devez faire la queue ?', isEven: true),
];

  void process (){

  }
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: stressQuestion.length,
        itemBuilder: (context, i) => new Row(
              children: [
                Expanded(child: Text(stressQuestion[i].libelle)),
                Checkbox(
                    value: stressQuestion[i].checked,
                    onChanged: (bool value) {
                      stressQuestion[i].checked = value;
                      setState(() {
                        
                      });
                    }),
              ],
            ));
  }
}
