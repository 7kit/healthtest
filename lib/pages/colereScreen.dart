import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ColereScreen extends StatefulWidget {
  final bool estFrench;

  const ColereScreen({Key key, this.estFrench}) : super(key: key);
  @override
  ColereScreenState createState() {
    return new ColereScreenState();
  }
}

class ColereScreenState extends State<ColereScreen> {
  List<QuestionItem> colereQuestions = [
    new QuestionItem(
        libelleFr:
            'Est-il difficile pour vous d\'oublier les mauvaises choses que les autres vous font ?',
        libelleUK:
            'Is it difficult for you to forget the bad things others do to you ?'),
    new QuestionItem(
        libelleFr:
            'Lorsque vous n\'êtes pas d\'accord avec vos amis, vous retrouvez-vous dans une vive argumentation ?',
        libelleUK:
            'When you are not in agreement with your friends, do you end up in a heated argument ?'),
    new QuestionItem(
        libelleFr:
            'Quand vous pensez à votre adversaire, avez-vous des douleurs à l\'estomac et une fréquence cardiaque rapide ?',
        libelleUK:
            'When you think of your opponent, do you get stomach pains and a rapid heart rate ?'),
    new QuestionItem(
        libelleFr: 'Êtes-vous contrarié lorsque vous devez faire la queue ?',
        libelleUK: 'Do you become upset when you need to wait in line ?'),
    new QuestionItem(
        libelleFr:
            'Êtes-vous en colère contre vous-même lorsque vous ne pouvez pas contrôler vos émotions ?',
        libelleUK:
            'Do you become angry with yourself when you cannot control your emotions?'),
    new QuestionItem(
        libelleFr:
            'Êtes-vous très contrarié lorsque les autres ne sont pas ponctuels ou ne font pas les choses complètement ?',
        libelleUK:
            'Do you become very upset when others are not punctual or do not do things completely?'),
    new QuestionItem(
        libelleFr:
            'Avez-vous tendance à ne pas vous souvenir de ce que vous avez dit pendant que vous étiez furieux ?',
        libelleUK:
            'Do you have a tendency to not remember anything that you have said while you were furious?'),
    new QuestionItem(
        libelleFr:
            'Avez-vous remarqué des effets néfastes sur nos relations à cause de votre mauvaise humeur ?',
        libelleUK:
            'Have you noticed harmful effects on your relationships because of your bad temper?'),
    new QuestionItem(
        libelleFr:
            'Après avoir été bouleversé, ressentez-vous un fort désir de manger, de fumer ou de boire de l\'alcool pour compenser ce qui s\'est passé ?',
        libelleUK:
            'After being upset, do you feel a strong desire to eat, smoke, or drink alcohol to compensate for what has taken place?'),
    new QuestionItem(
        libelleFr:
            'Vous êtes-vous déjà mis en colère au point de cogner une personne ou un objet ?',
        libelleUK:
            'Have you ever become angry to the point of hitting a person or an object?'),
  ];
  int score = 0;
  bool isFrench = true;

  Widget myButton() {
    return Center(
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(widget.estFrench?'Evaluer':'Assess', style: TextStyle(fontFamily: 'Goldman', color: Colors.white)),
            Icon(Icons.check, size: 20,color: Colors.white70,),
          ],
        ),
      ),
    );
  }

  void showResult(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.green[700]),
                left: BorderSide(width: 1.0, color: Colors.green[700]),
                right: BorderSide(width: 1.0, color: Colors.green[700]),
                bottom: BorderSide(width: 1.0, color: Colors.green[700]),
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)),
            ),
            child: new Wrap(
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              runSpacing: 2,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(message(), textAlign: TextAlign.justify, style: TextStyle(fontFamily: 'Oswald'),),
                ),
              ],
            ),
          );
        });
  }
  String message() {
    if (score >= 8) {
      return widget.estFrench
          ? 'Cherchez de l’aide aussitôt que possible afin de pouvoir contrôler votre colère. Vos relations personnelles familiales et professionnelles sont en grand danger.'
          : 'Seek help as soon as possible so you can control your anger. Your personal, family, and work relationships are at serious risk.';
    } else if (score >= 4 && score <= 7) {
      return widget.estFrench
          ? 'C’est le signe que votre colère est proche d’un niveau dangereux. Cherchez à développer la patience et la tolérance, et vous pourrez vivre de manière différente, en gardant votre calme et en cédant. Observez les autres et apprenez à obtenir ce que vous voulez en usant de bonnes manières.'
          : 'This is a warning that your anger is near a dangerous level. Seek to develop patience and tolerance, and you will be able to live in different ways, keeping calm and yielding. Observe others and learn how to get what you want using good manners.';
    } else if (score <= 3 && score >= 0) {
      return widget.estFrench
          ? 'Vous avez ce qu’il faut pour affronter la colère et la haine. Continuez de cette manière, parce que vous êtes une personne qu’il est difficile de mettre en colère.'
          : 'You are in the right place to face anger and hate. Continue in this manner, because you are a person who is hard to upset.';
    }
    else {
      return widget.estFrench?'Veuillez s\'il vous plaît reprendre le test !\n Merci bien !':'Please retake the test again! \n Thank you very much!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      showResult(context);
                    },
                    child: myButton()),
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: InkWell(
            //     onTap: () {
            //       print('est en francais $isFrench');
            //       setState(() {
            //         isFrench = !isFrench;
            //       });
            //     },
            //     child: isFrench
            //         ? Image.asset('assets/france.png', width: 40, height: 40)
            //         : Image.asset('assets/british.png', width: 40, height: 40),
            //   ),
            // ),
          ],
        ),
        Expanded(
          child: new ListView.builder(
              itemCount: colereQuestions.length,
              itemBuilder: (context, i) => new Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.estFrench
                          ?colereQuestions[i].libelleFr
                          :colereQuestions[i].libelleUK, style: TextStyle(fontFamily: 'Oswald')),
                        ),
                        ),
                          Text(widget.estFrench?'Non':'No', style: TextStyle(fontSize: 10),),
                        Switch(
                          value: colereQuestions[i].checked,
                          onChanged: (bool value) {
                            colereQuestions[i].checked = value;
                            setState(() {
                              if (value == true) {
                                score++;
                              } else
                                score--;
                            });
                          }),
                          Text(widget.estFrench?'Oui':'Yes', style: TextStyle(fontSize: 10),),
                    ],
                  )),
        )
      ],
    );
  }
}
