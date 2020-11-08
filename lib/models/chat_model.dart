class QuestionItem {
  String libelleFr;
  String libelleUK;
  bool checked;
  bool isEven;

  QuestionItem({this.libelleFr, this.libelleUK, this.isEven, this.checked = false});
}

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

// List<QuestionItem> stressQuestion = [
//   new QuestionItem(libelle: 'Profitez-vous de la nature pendant votre temps libre?', isEven: false),
//   new QuestionItem(libelle: 'Utilisez-vous des boissons alcoolisées?', isEven: true),
//   new QuestionItem(libelle: 'Mangez-vous des fruits et légumes en abondance?', isEven: false),
//   new QuestionItem(libelle: 'fumez-vous ?', isEven: true),
//   new QuestionItem(libelle: 'Faites-vous de l\'exercice régulièrement?', isEven: false),
//   new QuestionItem(libelle: 'Utilisez-vous habituellement des tranquillisants?', isEven: true),
//   new QuestionItem(libelle: 'Vivez-vous dans une maison propre et organisée?', isEven: false),
//   new QuestionItem(libelle: 'Vivez-vous dans un quartier bruyant?', isEven: true),
//   new QuestionItem(libelle: 'Votre maison a-t-elle une atmosphère chaleureuse?', isEven: false),
//   new QuestionItem(libelle: 'Êtes-vous toujours entouré de nombreuses personnes?', isEven: true),
//   new QuestionItem(libelle: 'Avez-vous un bon appétit?', isEven: false),
//   new QuestionItem(libelle: 'Oubliez-vous les choses facilement?', isEven: true),
//   new QuestionItem(libelle: 'Votre système digestif fonctionne-t-il bien?', isEven: false),
//   new QuestionItem(libelle: 'Vous sentez-vous fatigué sans raison apparente?', isEven: true),
//   new QuestionItem(libelle: 'Dormez-vous bien?', isEven: false),
//   new QuestionItem(libelle: 'Êtes-vous facilement irrité?', isEven: true),
//   new QuestionItem(libelle: 'Avez-vous une bonne relation avec vos supérieurs?', isEven: false),
//   new QuestionItem(libelle: 'Utilisez-vous votre voiture comme moyen de travail?', isEven: true),
//   new QuestionItem(libelle: 'Avez-vous un emploi stable ?', isEven: false),
//   new QuestionItem(libelle: 'Ramenez-vous du travail à la maison ?', isEven: true),
//   new QuestionItem(libelle: 'Avez-vous de bonnes relations avec vos collègues et vos amis?', isEven: false),
//   new QuestionItem(libelle: 'Devenez-vous très impatient quand vous devez attendre quelqu\'un?', isEven: true),
//   new QuestionItem(libelle: 'Savez-vous écouter patiemment?', isEven: false),
//   new QuestionItem(libelle: 'parlez-vous beaucoup?', isEven: true),
//   new QuestionItem(libelle: 'Êtes-vous satisfait de votre vie sexuelle?', isEven: false),
//   new QuestionItem(libelle: 'Essayez-vous de faire les choses mieux que les autres?', isEven: true),
//   new QuestionItem(libelle: 'Êtes-vous satisfait de la façon dont vous êtes?', isEven: false),
//   new QuestionItem(libelle: 'Êtes-vous un perfectionniste?', isEven: true),
//   new QuestionItem(libelle: 'Avez-vous le sens de l\'humour?', isEven: false),
//   new QuestionItem(libelle: 'Êtes-vous irrité lorsque vous devez faire la queue ?', isEven: true),
// ];

// List<QuestionItem> guiltQuestion =[
//   new QuestionItem(libelle: 'Avez-vous grandi dans un environnement où régnaient l\'autoritarisme et l\'intimidation?'),
//   new QuestionItem(libelle: 'Est-il très difficile de pardonner vos propres erreurs?'),
//   new QuestionItem(libelle: 'Est-il difficile pour vous de pardonner à ceux qui vous offensent?'),
//   new QuestionItem(libelle: 'Avez-vous constamment peur d\'enfreindre une règle sociale?'),
//   new QuestionItem(libelle: 'Avez-vous peur face à la possibilité de mauvaises nouvelles?'),
//   new QuestionItem(libelle: 'Vous sentez-vous effrayé chaque fois que vous pensez à l\'avenir?'),
//   new QuestionItem(libelle: 'Êtes-vous très contrarié lorsque quelque chose ne se passe pas parfaitement?'),
//   new QuestionItem(libelle: 'Vous sentez-vous excessivement gêné par un manque de ponctualité?'),
//   new QuestionItem(libelle: 'Vous sentez-vous souvent en insécurité?'),
//   new QuestionItem(libelle: 'Vous sentez-vous facilement en colère contre vous-même et contre les autres?'),
//   new QuestionItem(libelle: 'Vous inquiétez-vous excessivement de ce que les autres peuvent penser de vous?'),
//   new QuestionItem(libelle: 'Dans votre imagination, Dieu est-il toujours bouleversé à cause de vos péchés et de vos imperfections?'),
// ];

// List<QuestionItem> colereQuestions = [
//   new QuestionItem(libelle: 'Est-il difficile pour vous d\'oublier les mauvaises choses que les autres vous font?'),
//   new QuestionItem(libelle: 'Lorsque vous n\'êtes pas d\'accord avec vos amis, vous retrouvez-vous dans une vive argumentation?'),
//   new QuestionItem(libelle: 'Quand vous pensez à votre adversaire, avez-vous des douleurs à l\'estomac et une fréquence cardiaque rapide?'),
//   new QuestionItem(libelle: 'Êtes-vous contrarié lorsque vous devez faire la queue?'),
//   new QuestionItem(libelle: 'Êtes-vous en colère contre vous-même lorsque vous ne pouvez pas contrôler vos émotions?'),
//   new QuestionItem(libelle: 'Êtes-vous très contrarié lorsque les autres ne sont pas ponctuels ou ne font pas les choses complètement?'),
//   new QuestionItem(libelle: 'Avez-vous tendance à ne pas vous souvenir de ce que vous avez dit pendant que vous étiez furieux?'),
//   new QuestionItem(libelle: 'Avez-vous remarqué des effets néfastes sur nos relations à cause de votre mauvaise humeur?'),
//   new QuestionItem(libelle: 'Après avoir été bouleversé, ressentez-vous un fort désir de manger, de fumer ou de boire de l\'alcool pour compenser ce qui s\'est passé?'),
//   new QuestionItem(libelle: 'Vous êtes-vous déjà mis en colère au point de cogner une personne ou un objet?'),
// ];

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Pawan Kumar",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
  new ChatModel(
      name: "Harvey Spectre",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
  new ChatModel(
      name: "Mike Ross",
      message: "Wassup !",
      time: "5:00",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
  new ChatModel(
      name: "Rachel",
      message: "I'm good!",
      time: "10:30",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
  new ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
  new ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
];

/*

------------------ STRESS---------------------
1. Profitez-vous de la nature pendant votre temps libre? ___
2. Utilisez-vous des boissons alcoolisées? ___
3. Mangez-vous des fruits et légumes en abondance? ___
4. fumez-vous ? ___
5. Faites-vous de l'exercice régulièrement? ___
6. Utilisez-vous habituellement des tranquillisants? ___
7. Vivez-vous dans une maison propre et organisée? ___
8. Vivez-vous dans un quartier bruyant? ___
9. Votre maison a-t-elle une atmosphère chaleureuse? ___
10. Êtes-vous toujours entouré de nombreuses personnes? ___
11. Avez-vous un bon appétit? ___
12. Oubliez-vous les choses facilement? ___
13. Votre système digestif fonctionne-t-il bien? ___
14. Vous sentez-vous fatigué sans raison apparente? ___
15. dormez-vous bien? ___
16. Êtes-vous facilement irrité? ___
17. Avez-vous une bonne relation avec vos
supérieurs? ___
18. Utilisez-vous votre voiture comme moyen de travail? ___
19. Avez-vous un emploi stable ? ___
20. Ramenez-vous du travail à la maison ? ___
21. Avez-vous de bonnes relations avec vos collègues et vos amis? ___
22. Devenez-vous très impatient quand vous devez attendre quelqu'un? ___
23. Savez-vous écouter patiemment? ___
24. parlez-vous beaucoup? ___
25. Êtes-vous satisfait de votre vie sexuelle? ___
26. Essayez-vous de faire les choses mieux que les autres? ___
27. Êtes-vous satisfait de la façon dont vous êtes? ___
28. Êtes-vous un perfectionniste? ___
29. Avez-vous le sens de l'humour? ___
30. Êtes-vous irrité lorsque vous devez faire la queue ? ___
Scoring:
Check the answers to the odd-numbered questions and
give yourself 1 point for each NO.
Check the answers to the even-numbered questions and
give yourself 1 point for each YES.
Total: ________
Results:
From 0 to 7 points
Vous êtes bien protégé contre le stress. Peut-être avez-vous besoin de faire un petit changement pour obtenir une motivation encore meilleure dans votre vie.
From 8 to 13 points
Vous avez un niveau de stress moyen. Les choses peuvent aller dans un sens ou dans l'autre. Il est important d'adopter dès maintenant des mesures préventives contre un stress excessif.
From 14 points and beyond
Ceci est un avertissement de stress élevé dans votre vie et un appel pour que vous examiniez vos habitudes de vie, l'environnement dans lequel vous vivez, votre attitude mentale et vos relations, et faites des plans pour tous les améliorer .
*/

/**
 * CULPABILITE 
 * 
 * Test yourself
There is an intimate relationship between certain behavior
and guilt. The following questions present behavior associated
with guilt. Answer YES or NO.
1. Avez-vous grandi dans un environnement où régnaient l'autoritarisme et l'intimidation? ___
2. Est-il très difficile de pardonner vos propres erreurs? ___
3. Est-il difficile pour vous de pardonner à ceux qui vous offensent? ___
4. Avez-vous constamment peur d'enfreindre une règle sociale?
5. Avez-vous peur face à la possibilité de mauvaises nouvelles? ___
6. Vous sentez-vous effrayé chaque fois que vous pensez à l'avenir? ___
7. Êtes-vous très contrarié lorsque quelque chose ne se passe pas parfaitement? ___
8. Vous sentez-vous excessivement gêné par un manque de ponctualité? ___
9. Vous sentez-vous souvent en insécurité? ___
10. Vous sentez-vous facilement en colère contre vous-même et contre les autres? ___
11. Vous inquiétez-vous excessivement de ce que les autres peuvent penser de vous? ___
12. Dans votre imagination, Dieu est-il toujours bouleversé à cause de vos péchés et de vos imperfections? ___
If you answered YES to more than three questions, you are
prone to false guilt and should seek solutions. Begin with the
counsel in this chapter, and if this is not enough, seek the help
of a professional.
 * 
 */

/**
 * COLERE
 * 
 * To learn whether you are prone to anger, answer YES or NO
to these questions:
1. Est-il difficile pour vous d'oublier les mauvaises choses que les autres vous font? ___
2. Lorsque vous n'êtes pas d'accord avec vos amis, vous retrouvez-vous dans une vive argumentation? ___
3. Quand vous pensez à votre adversaire, avez-vous des douleurs à l'estomac et une fréquence cardiaque rapide? ___
4. Êtes-vous contrarié lorsque vous devez faire la queue? ___
5. Êtes-vous en colère contre vous-même lorsque vous ne pouvez pas contrôler vos émotions? ___
6. Êtes-vous très contrarié lorsque les autres ne sont pas ponctuels ou ne font pas les choses complètement? ___
7. Avez-vous tendance à ne pas vous souvenir de ce que vous avez dit pendant que vous étiez furieux? ___
8. Avez-vous remarqué des effets néfastes sur nos relations à cause de votre mauvaise humeur? ___
9. Après avoir été bouleversé, ressentez-vous un fort désir de manger, de fumer ou de boire de l'alcool pour compenser ce qui s'est passé? ___
10. Vous êtes-vous déjà mis en colère au point de heurter une personne ou un objet? ___
Results:
• If you answered YES to eight or more questions, seek help
as soon as possible so you can control your anger. Your personal, family, and work relationships are at serious risk.
• If you answered YES to four to seven questions, this is a
warning that your anger is near a dangerous level. Seek to
develop patience and tolerance, and you will be able to live
in different ways, keeping calm and yielding. Observe others
and learn how to get what you want using good manners.
• If you answered YES to three or fewer questions, you are
in the right place to face anger and hate. Continue in this
manner, because you are a person who is hard to upset.
 */
