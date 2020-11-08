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
  new QuestionItem(libelleFr: 'Profitez-vous de la nature pendant votre temps libre?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Utilisez-vous des boissons alcoolisées?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Mangez-vous des fruits et légumes en abondance?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'fumez-vous ?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Faites-vous de l\'exercice régulièrement?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Utilisez-vous habituellement des tranquillisants?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Vivez-vous dans une maison propre et organisée?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Vivez-vous dans un quartier bruyant?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Votre maison a-t-elle une atmosphère chaleureuse?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Êtes-vous toujours entouré de nombreuses personnes?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Avez-vous un bon appétit?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Oubliez-vous les choses facilement?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Votre système digestif fonctionne-t-il bien?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Vous sentez-vous fatigué sans raison apparente?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Dormez-vous bien?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Êtes-vous facilement irrité?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Avez-vous une bonne relation avec vos supérieurs?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Utilisez-vous votre voiture comme moyen de travail?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Avez-vous un emploi stable ?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Ramenez-vous du travail à la maison ?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Avez-vous de bonnes relations avec vos collègues et vos amis?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Devenez-vous très impatient quand vous devez attendre quelqu\'un?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Savez-vous écouter patiemment?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'parlez-vous beaucoup?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Êtes-vous satisfait de votre vie sexuelle?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Essayez-vous de faire les choses mieux que les autres?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Êtes-vous satisfait de la façon dont vous êtes?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Êtes-vous un perfectionniste?', libelleUK: 'ENGLISH', isEven: true),
  new QuestionItem(libelleFr: 'Avez-vous le sens de l\'humour?', libelleUK: 'ENGLISH', isEven: false),
  new QuestionItem(libelleFr: 'Êtes-vous irrité lorsque vous devez faire la queue ?', libelleUK: 'ENGLISH', isEven: true),
];

int score = 0;
bool isFrench = true;

  void process (){
    if(score!=0) setState(() {
      score=0;
    });
    for (var i = 0; i < stressQuestion.length; i++) {
      if(!stressQuestion[i].checked && !stressQuestion[i].isEven){
        score++;
      }
      if(stressQuestion[i].checked && stressQuestion[i].isEven){
        score++;
      }
    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
                          child: InkWell(
                onTap: (){
                  process();
                },
                child: Text('RESULTAT')),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  print('est en francais $isFrench');
                  setState(() {
                    isFrench=!isFrench;
                  });
                },
                  child: isFrench?Image.asset('assets/france.png', width: 40, height: 40):Image.asset('assets/british.png', width: 40, height: 40),
              ),
            ),
          ],
        ),
        Expanded(
                  child: new ListView.builder(
              itemCount: stressQuestion.length,
              itemBuilder: (context, i) => new Row(
                    children: [
                      Expanded(child: Text(isFrench?stressQuestion[i].libelleFr:stressQuestion[i].libelleUK)),
                      Checkbox(
                          value: stressQuestion[i].checked,
                          onChanged: (bool value) {
                            setState(() {
                              stressQuestion[i].checked = value;
                            });
                          }),
                    ],
                  )),
        ),
      ],
    );
  }
}
