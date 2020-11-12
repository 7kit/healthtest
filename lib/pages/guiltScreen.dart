import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class GuiltScreen extends StatefulWidget {
  final bool estFrench;

  const GuiltScreen({Key key, this.estFrench}) : super(key: key);
  @override
  GuiltScreenState createState() {
    return new GuiltScreenState();
  }
}

class GuiltScreenState extends State<GuiltScreen> {
  List<QuestionItem> guiltQuestion = [
    new QuestionItem(
        libelleFr:
            'Avez-vous grandi dans un environnement où régnaient l\'autoritarisme et l\'intimidation ?',
        libelleUK:
            'Did you grow up in an environment where there were authoritarianism and intimidation ?'),
    new QuestionItem(
        libelleFr: 'Est-il très difficile de pardonner vos propres erreur s?',
        libelleUK: 'Is it very difficult to forgive your own mistakes ?'),
    new QuestionItem(
        libelleFr:
            'Est-il difficile pour vous de pardonner à ceux qui vous offensent ?',
        libelleUK: 'Is it difficult for you to forgive those who offend you ?'),
    new QuestionItem(
        libelleFr:
            'Avez-vous constamment peur d\'enfreindre une règle sociale ?',
        libelleUK: 'Are you constantly afraid of breaking some social rule?'),
    new QuestionItem(
        libelleFr:
            'Avez-vous peur face à la possibilité de mauvaises nouvelles ?',
        libelleUK:
            'Are you frightened when faced with the possibility of bad news?'),
    new QuestionItem(
        libelleFr:
            'Vous sentez-vous effrayé chaque fois que vous pensez à l\'avenir ?',
        libelleUK:
            'Do you feel frightened whenever you think about the future?'),
    new QuestionItem(
        libelleFr:
            'Êtes-vous très contrarié lorsque quelque chose ne se passe pas parfaitement ?',
        libelleUK:
            'Do you become very upset when something does not turn out perfectly? '),
    new QuestionItem(
        libelleFr:
            'Vous sentez-vous excessivement gêné par un manque de ponctualité ?',
        libelleUK:
            'Do you feel excessively bothered with a lack of punctuality?'),
    new QuestionItem(
        libelleFr: 'Vous sentez-vous souvent en insécurité ?',
        libelleUK: 'Do you often feel insecure?'),
    new QuestionItem(
        libelleFr:
            'Vous sentez-vous facilement en colère contre vous-même et contre les autres ?',
        libelleUK: 'Do you easily feel upset with yourself and with others?'),
    new QuestionItem(
        libelleFr:
            'Vous inquiétez-vous excessivement de ce que les autres peuvent penser de vous ?',
        libelleUK:
            'Do you become excessively concerned about what other people may think about you?'),
    new QuestionItem(
        libelleFr:
            'Dans votre imagination, Dieu est-il toujours bouleversé à cause de vos péchés et de vos imperfections ?',
        libelleUK:
            'In your imagination, is God always upset because of your sins and imperfections?'),
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
            Icon(
              Icons.check,
              size: 20,
              color: Colors.white70,
            ),
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
    if (score > 3) {
      return widget.estFrench
          ? 'Vous êtes enclin à une fausse culpabilité et devriez chercher des solutions. Commencez par appliquer les conseils du septième chapitre du livre titré : \"Le sentiment de culpabilité\" et si ce n’est pas suffisant, tournez-vous vers un professionnel.'
          : 'You are prone to false guilt and should seek solutions. Begin with the counsel in the seventh chapter titled \"Sense of Guilt\", and if this is not enough, seek the help of a professional.';
    } else
      return widget.estFrench ? 'Vous êtes bien protégé contre la mauvaise culpabilité !' : 'You are well protected against bad guilt !';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        showResult(context);
                      },
                      child: myButton()),
                )),
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
              itemCount: guiltQuestion.length,
              itemBuilder: (context, i) => new Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.estFrench
                                ? guiltQuestion[i].libelleFr
                                : guiltQuestion[i].libelleUK, style: TextStyle(fontFamily: 'Oswald'),),
                          )),
                      Checkbox(
                          value: guiltQuestion[i].checked,
                          onChanged: (bool value) {
                            guiltQuestion[i].checked = value;
                            setState(() {
                              if (value == true) {
                                score++;
                              } else
                                score--;
                            });
                          }),
                    ],
                  )),
        ),
      ],
    );
  }
}
