// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_one/broadcastAttribute.dart';

// #########################################################################################
// MyChannel Widget
// #########################################################################################
class MyChannels extends StatelessWidget {
  MyChannels({super.key});

  List<BroadcastAttribute> broadcastData = [
    /*  BroadcastAttribute(
      title: 'Highschool DxD',
      subtitle: 'Genre: Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_logo.png',
      description: High School DxD ist eine japanische Light-Novel-Reihe, die als Anime und Manga adaptiert wurde und die Geschichte von Issei Hyoudou erzählt, einem Oberschüler, der nach seinem Tod als Dämon wiederbelebt wird, um einem mächtigen Dämonenclan zu dienen. Er muss an seiner neuen Schule, der einstigen Mädchenschule Kuoh Academy, mit den anderen Mitgliedern des Okkulten Forschungsclubs – die selbst Dämonen sind – klarkommen, während er sich auf Kämpfe zwischen Engeln, Dämonen und gefallenen Engeln einlässt. Die Serie ist bekannt für ihre Mischung aus Comedy, Action und Ecchi-Elementen.',
    ), */
    BroadcastAttribute(
      title: 'Highschool DxD New',
      subtitle: 'Genre: Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_new_logo.png',
      description:
          'High School DxD ist eine japanische Light-Novel-Reihe, die als Anime und Manga adaptiert wurde und die Geschichte von Issei Hyoudou erzählt, einem Oberschüler, der nach seinem Tod als Dämon wiederbelebt wird, um einem mächtigen Dämonenclan zu dienen. Er muss an seiner neuen Schule, der einstigen Mädchenschule Kuoh Academy, mit den anderen Mitgliedern des Okkulten Forschungsclubs – die selbst Dämonen sind – klarkommen, während er sich auf Kämpfe zwischen Engeln, Dämonen und gefallenen Engeln einlässt. Die Serie ist bekannt für ihre Mischung aus Comedy, Action und Ecchi-Elementen.',
    ),
    BroadcastAttribute(
      title: 'Highschool DxD Born',
      subtitle: 'Genre: Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_born_logo.png',
      description:
          'High School DxD ist eine japanische Light-Novel-Reihe, die als Anime und Manga adaptiert wurde und die Geschichte von Issei Hyoudou erzählt, einem Oberschüler, der nach seinem Tod als Dämon wiederbelebt wird, um einem mächtigen Dämonenclan zu dienen. Er muss an seiner neuen Schule, der einstigen Mädchenschule Kuoh Academy, mit den anderen Mitgliedern des Okkulten Forschungsclubs – die selbst Dämonen sind – klarkommen, während er sich auf Kämpfe zwischen Engeln, Dämonen und gefallenen Engeln einlässt. Die Serie ist bekannt für ihre Mischung aus Comedy, Action und Ecchi-Elementen.',
    ),
    /*  BroadcastAttribute(
      title: 'Highschool DXD Hero',
      subtitle: 'Genre: Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_hero_logo.png',
      description: 'High School DxD ist eine japanische Light-Novel-Reihe, die als Anime und Manga adaptiert wurde und die Geschichte von Issei Hyoudou erzählt, einem Oberschüler, der nach seinem Tod als Dämon wiederbelebt wird, um einem mächtigen Dämonenclan zu dienen. Er muss an seiner neuen Schule, der einstigen Mädchenschule Kuoh Academy, mit den anderen Mitgliedern des Okkulten Forschungsclubs – die selbst Dämonen sind – klarkommen, während er sich auf Kämpfe zwischen Engeln, Dämonen und gefallenen Engeln einlässt. Die Serie ist bekannt für ihre Mischung aus Comedy, Action und Ecchi-Elementen.',
    ), */
    BroadcastAttribute(
      title: 'Solo Leveling',
      subtitle: 'Genre: Anime, Action, Fantasy',
      imagePath: 'assets/images/broadcastImages/SoloLeveling_logo.jpg',
      description:
          'Solo Leveling ist eine südkoreanische Fantasy-Geschichte, die in einer Welt spielt, in der sich Portale zu Dungeons voller Monster geöffnet haben. Menschen mit besonderen Fähigkeiten, sogenannte "Jäger", kämpfen gegen diese Monster, um die Menschheit zu schützen. Die Handlung folgt dem schwächsten Jäger der Welt, Sung Jin-woo, der nach einem fast tödlichen Erlebnis die einzigartige Fähigkeit erhält, ein System zu nutzen, um unbegrenzt stärker zu werden.',
    ),
    BroadcastAttribute(
      title: 'UQ Holder',
      subtitle: 'Genre: Anime, Fantasy, Abenteuer, Action, Shōnen',
      imagePath: 'assets/images/broadcastImages/UQHolder_logo.png',
      description:
          'UQ Holder! ist eine Manga-Serie von Ken Akamatsu, die 63 Jahre nach der Handlung von "Magister Negi Magi" spielt und im selben Universum angesiedelt ist. Die Geschichte handelt von dem Jungen Touta Konoe, der nach einem Angriff auf seine Lehrerin Yukihime zum Vampir wird, woraufhin die beiden in die Hauptstadt aufbrechen, um die geheime Organisation "UQ Holder" zu finden. Diese Organisation besteht aus Unsterblichen und hilft bei Problemen, die die Welt betreffen, und muss auch mit anderen Unsterblichen fertigwerden.',
    ),
    BroadcastAttribute(
      title: 'The Eminence in Shadow',
      subtitle: 'Genre: Anime, Adventure, Isekai',
      imagePath: 'assets/images/broadcastImages/TheEminenceInShadow_logo.png',
      description:
          'The Eminence in Shadow ist eine Isekai-Geschichte über einen Jungen namens Cid Kagenou, der in einer Fantasy-Welt wiedergeboren wird. Sein Traum ist es, eine "Eminenz im Schatten" zu sein, die im Verborgenen agiert, anstatt der Held zu sein. Als er eine scheinbar rein fiktive Organisation gründet, um gegen einen imaginären Kult zu kämpfen, stellt er fest, dass dieser Kult und seine eigenen Aktionen reale Konsequenzen haben und der Kult tatsächlich existiert.',
    ),
    /*  BroadcastAttribute(
      title: 'Akame Ga Kill',
      subtitle: 'Genre: Anime, Action, Adventure, Drama, Horror, Fantasy, Shōnen',
      imagePath: 'assets/images/broadcastImages/AkameGaKill_logo.png',
      description: 'Akame ga Kill! ist eine düstere Fantasy-Anime-Serie, die sich um eine Gruppe von Attentätern namens Night Raid dreht, die das korrupte Kaiserreich stürzen wollen. Der junge Held Tatsumi schließt sich ihnen an, nachdem er die Grausamkeit des Regimes am eigenen Leib erfahren hat. Die Serie ist bekannt für ihre extreme Gewalt und den Tod zahlreicher Charaktere, die Teil der Geschichte sind. Handlung: Tatsumi verlässt sein Dorf, um als Held dem Kaiserreich zu dienen, muss aber schnell erkennen, dass die Realität weitaus grausamer ist, als er dachte. Nach dem Tod seiner Freunde wird er von der Rebellenorganisation Night Raid gerettet und schließt sich ihr an, um das unterdrückende Regime zu bekämpfen.',
    ),
    BroadcastAttribute(
      title: 'Konosuba',
      subtitle: 'Genre: Anime, Comedy, Fantasy, Etchi',
      imagePath: 'assets/images/broadcastImages/KonoSuba_logo.png',
      description: 'Konosuba ist eine japanische Anime- und Manga-Serie, die die Geschichte des unglücklichen Teenagers Kazuma Satou erzählt, der nach seinem Tod in eine Fantasiewelt geschickt wird. Dort gründet er mit der nutzlosen Göttin Aqua, der explosionsbesessenen Magierin Megumin und der masochistischen Kreuzritterin Darkness eine dysfunktionale Abenteurergruppe, um den Dämonenkönig zu besiegen. Die Serie ist eine Comedy-Fantasy, die für ihren humorvollen Umgang mit dem Isekai-Genre bekannt ist. Grundhandlung: Nach einem peinlichen Tod in seiner Welt wird Kazuma von der Göttin Aqua in eine Fantasiewelt geschickt. Sie gibt ihm die Wahl zwischen Himmel oder einer Wiedergeburt in einer Fantasy-Welt und erlaubt ihm, eine mächtige Fähigkeit oder Waffe mitzunehmen.',
    ),
    BroadcastAttribute(
      title: 'Call of the Night',
      subtitle: 'Anime, Romance, Comedy',
      imagePath: 'assets/images/broadcastImages/CallOfTheNight_logo.png',
      description: 'Call of the Night (jap. Yofukashi no Uta) ist eine Manga-Serie und Anime-Serie über den schlaflosen Schüler Kou Yamori, der nachts durch die Stadt streift und die mysteriöse Vampirin Nazuna Nanakusa trifft. Aus Faszination bittet Kou sie, ihn in einen Vampir zu verwandeln, was aber nur möglich ist, wenn er sich in sie verliebt.',
    ),
    BroadcastAttribute(
      title: 'Cautious Hero: The Hero is Overpowered but Overly Cautious',
      subtitle: 'Genre: Anime, Isekai, Fantasy, Comedy, Action',
      imagePath: 'assets/images/broadcastImages/Shinchou_Yuusha_logo.png',
      description: 'Cautious Hero ist eine Anime-Serie, in der die Göttin Ristarte den übermächtigen, aber extrem vorsichtigen Helden Seiya Ryuuguuin beschwört, um die S-Klasse-Welt Gaeabrande zu retten. Seiya ist übertrieben vorsichtig und bereitet sich übertrieben auf jeden noch so kleinen Kampf vor, indem er beispielsweise dreimal Rüstung kauft, unendlich viel trainiert und selbst gegen Schleime mit voller Kraft kämpft. Die Serie ist eine Komödie, die das Isekai-Genre persifliert.',
    ), */
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: broadcastData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: broadcastData[index]);
            },
            child: Image.asset(broadcastData[index].imagePath, width: 80, height: 80, fit: BoxFit.cover),
          ), // GestureDEtector
          title: Text(broadcastData[index].title),
          subtitle: Text(broadcastData[index].subtitle),
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 1.0),
            // top: BorderSide(color: Colors.white, width: 1.0),
          ), // Border
        ); // List Tile
      },
    ); // ListView.builder

    /* Widget build(BuildContext context) {
    return ListView(
      children: broadcastData
          .map(
            (item) => ListTile(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detail', arguments: item);
                },
                child: Image.asset(item.imagePath, width: 80, height: 80, fit: BoxFit.cover),
              ),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              shape: Border(
                bottom: BorderSide(color: Colors.white, width: 1.0),
                top: BorderSide(color: Colors.white, width: 1.0),
              ),
            ),
          )
          .toList(),
    ); */
  }
}
