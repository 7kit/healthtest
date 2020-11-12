import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class StressScreen extends StatefulWidget {
  final bool estFrench;

  const StressScreen({Key key, this.estFrench}) : super(key: key);
  @override
  StressScreenState createState() {
    return new StressScreenState();
  }
}

class StressScreenState extends State<StressScreen> {
  List<QuestionItem> stressQuestion = [
    new QuestionItem(
        libelleFr: 'Aimez-vous profiter de la nature dans votre temps libre ?',
        libelleUK: 'Do you enjoy nature in your free time?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Faites-vous usage de boissons alcoolisées ?',
        libelleUK: 'Do you use alcoholic beverages ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Mangez-vous des fruits et légumes en abondance ?',
        libelleUK: 'Do you eat fruit and vegetables in abundance?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Fumez-vous ?', libelleUK: 'Do you smoke ?', isEven: true),
    new QuestionItem(
        libelleFr: 'Faites-vous de l\'exercice régulièrement ?',
        libelleUK: 'Do you exercise regularly ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Utilisez-vous habituellement  des tranquillisants ?',
        libelleUK: 'Do you use tranquilizers habitually ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Vivez-vous dans une maison propre et ordonnée ?',
        libelleUK: 'Do you live in a clean and organized house ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Vivez-vous dans un quartier bruyant?',
        libelleUK: 'Do you live in a noisy neighborhood ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Votre maison a-t-elle une atmosphère chaleureuse ?',
        libelleUK: 'Does your home have a cozy atmosphere ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Êtes-vous toujours entouré de beaucoup de gens ?',
        libelleUK: 'Are you always surrounded by many people ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Avez-vous bon appétit ?',
        libelleUK: 'Do you have a good appetite ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Oubliez-vous facilement des choses ?',
        libelleUK: 'Do you forget things easily ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Votre système digestif fonctionne-t-il bien ?',
        libelleUK: 'Does your digestive system function well ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Vous sentez-vous fatigué sans raison apparente ?',
        libelleUK: 'Do you feel tired for no apparent reason ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Dormez-vous bien?',
        libelleUK: 'Do you sleep well ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Êtes-vous facilement irrité?',
        libelleUK: 'Do you become irritated easily ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Avez-vous une bonne relation avec vos supérieurs ?',
        libelleUK: 'Do you have a good relationship with your superiors ?',
        isEven: false),
    new QuestionItem(
        libelleFr:
            'Votre voiture vous sert-elle dans l\'exercice de vos fonctions ?',
        libelleUK: 'Do you use your car as your means of work ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Avez-vous un emploi stable ?',
        libelleUK: 'Do you have steady work ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Ramenez-vous du travail à la maison ?',
        libelleUK: 'Do you take work home with you ?',
        isEven: true),
    new QuestionItem(
        libelleFr:
            'Avez-vous de bonnes relations avec vos collègues et vos amis ?',
        libelleUK:
            'Do you have good relationships with your colleagues and friends ?',
        isEven: false),
    new QuestionItem(
        libelleFr:
            'Devenez-vous très impatient quand vous devez attendre quelqu\'un ?',
        libelleUK:
            'Do you become very impatient when you have to wait for someone ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Savez-vous écouter patiemment ?',
        libelleUK: 'Do you know how to listen patiently ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'parlez-vous beaucoup?',
        libelleUK: 'Do you talk a lot ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Êtes-vous satisfait de votre vie sexuelle ?',
        libelleUK: 'Are you satisfied with your sex life ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Essayez-vous de faire les choses mieux que les autres ?',
        libelleUK: 'Do you attempt to do things better than others ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Êtes-vous satisfait de la façon dont vous êtes?',
        libelleUK: 'Are you satisfied with the way you are ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Êtes-vous perfectionniste?',
        libelleUK: 'Are you a perfectionist ?',
        isEven: true),
    new QuestionItem(
        libelleFr: 'Avez-vous le sens de l\'humour?',
        libelleUK: 'Do you have a sense of humor ?',
        isEven: false),
    new QuestionItem(
        libelleFr: 'Êtes-vous irrité lorsque vous devez faire la queue ?',
        libelleUK: 'Do you become irritated when you have to wait in line ?',
        isEven: true),
  ];

  int score = 0;
  bool isFrench = true;

  void process() {
    if (score != 0)
      setState(() {
        score = 0;
      });
    for (var i = 0; i < stressQuestion.length; i++) {
      if (!stressQuestion[i].checked && !stressQuestion[i].isEven) {
        score++;
      }
      if (stressQuestion[i].checked && stressQuestion[i].isEven) {
        score++;
      }
    }
    setState(() {});
  }

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
    if (score >= 0 && score <= 7) {
      return widget.estFrench
          ? 'Vous êtes bien protégé contre le stress. Peut-être avez-vous besoin de faire un petit changement pour avoir une meilleure motivation dans la vie.'
          : 'You are well protected against stress. Perhaps you need to make a little change to obtain even better motivation in your life.';
    } else if (score <= 13) {
      return widget.estFrench
          ? 'Vous avez un niveau moyen de stress. Les choses peuvent aller dans une direction ou une autre. Il est important d’adopter maintenant des mesures préventives contre l’excès de stress. '
          : 'You have a medium level of stress. Things can go in one direction or the other. It is important to adopt preventative measures against too much stress now';
    } else {
      return widget.estFrench
          ? 'C’est un signal de stress élevé et un appel à faire l’examen de vos habitudes de vie, de l’environnement dans lequel vous vivez, de votre attitude mentale et de vos relations, et à faire des plans pour les améliorer'
          : 'This is a warning of high stress in your life and a call for you to make an examination of your lifestyle habits, the environment in which you live, your mental attitude, and your relationships, and make plans to improve them all.';
    }
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
                    process();
                    showResult(context);
                  },
                  child: myButton(),
                ),
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
              itemCount: stressQuestion.length,
              itemBuilder: (context, i) => new Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.estFrench
                                ? stressQuestion[i].libelleFr
                                : stressQuestion[i].libelleUK, style: TextStyle(fontFamily: 'Oswald'),),
                          )),
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
