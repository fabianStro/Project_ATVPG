// ignore_for_file: file_names

import 'package:flutter/material.dart';
// Service imports
import 'package:flutter_application_one/models/broadcastAttribute.dart';
// Provider package
import 'package:hive_ce/hive.dart';

class AnimeMovieProvider extends ChangeNotifier {
  static const String _boxName = 'animeBox';

  bool _isInitialized = false;
  late final Box<BroadcastAttribute> _broadcastBox;

  final List<BroadcastAttribute> _seedData = [
    BroadcastAttribute(
      id: 01,
      title: 'Highschool DxD',
      genre: 'Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_logo.png',
      description:
          'Der Oberschüler Issei Hyōdo versucht zusammen mit zwei weiteren Schulfreunden seit geraumer Zeit, eine Freundin zu finden. Jedoch fallen die drei eher durch unbedachtes Vorgehen und Spannen auf, sodass sich eigentlich kein Mädchen der Schule mit ihnen einlassen will. Doch eines Tages scheint sich eine Schülerin für ihn besonders zu interessieren und er kann es kaum glauben, dass sie ihn so schnell zu einer Verabredung einlädt, der er geblendet durch ihren Charme bedenkenlos folgt. Am Ende des Tages wird er wider Erwarten von dem Mädchen kurzerhand umgebracht, nachdem sie sich als gefallener Engel entpuppte. Zu seiner eigenen Verwunderung wacht er jedoch nackt in seinem Bett auf, als ob es nur ein Traum gewesen wäre, läge da nicht die Schönheit der Schule, Rias Gremory, nackt neben ihm. Während sie ihn zugleich zu beruhigen als auch zu bezirzen versucht und zwischendurch auch noch verwundert seine Mutter in der Türschwelle steht, erklärt sie ihm, dass er wahrhaftig am vorherigen Tag umgebracht wurde, sie ihn als Anführerin des Dämonen Clans der Gremory als Dämon wiederbelebt habe und er fortan Teil des Clans ist. \n\nRias’ Gruppe tarnt sich als Okkultismus-Forschungsclub (オカルト研究部, Okaruto Kenkyūbu) an der Schule. Ebenso muss er erst einmal verstehen, was es heißt, ein Dämon zu sein und was sich daraus für Umstände und Pflichten ergeben. Erst im Club scheint Issei das erste Mal zu begreifen, was mit ihm passiert ist, und Rias erklärt ihm die feindlichen Beziehungen zwischen den Dämonen, den gefallenen Engeln und den Engeln, wie auch dessen Anhängern der Kirche. Auch erfuhr er, dass er selbst eigene Diener haben könne, wenn er sich nur genug anstrenge und aufsteige, auf dass er sich zum obersten Ziel setzte, ein Haremkönig zu werden.\n\nTrotz des Wissens über die Feindschaft, lernt er die junge, stets freundliche und naive Nonne Asia kennen, mit der er sich trotz aller Feindschaften schnell anfreundet. Durch ein Komplott der gefallenen Engel, kommt Asia jedoch ums Leben, was auch Issei nicht verhindern kann, obwohl er alles gab. Jedoch kann auch Asia als Dämon wiederbelebt werden und ist seitdem fester Bestandteil des Clans, für den sich ihre Heilungskräfte als sehr hilfreich erweisen. Diese wurde auch zur ersten von vielen kommenden Mädchen, die sich in Issei verlieben werden.\n\nIm weiteren Verlauf wird Issei zunehmend stärker und er spielt immer mehr eine wichtige Figur für die Personen innerhalb des Okkultismus-Forschungsclub und besonders für Rias Gremory und die anderen Mädchen. Zwar von Natur aus schwächer als die meisten anderen – und überwiegend weiblichen – Dämonen, kann er sich dennoch mit ausgefallenen Techniken und seinem ungebrochenen Willen wiederholt durchsetzen. Nebenbei verlieben sich allmählich alle Mädchen im Klub in ihn und besonders entwickelte er zu Rias eine tiefe romantische Beziehung. Doch lassen es die anderen Mädchen nicht so auf sich sitzen. Sie versuchen ebenfalls stets ihr Glück bei Issei, indem sie ihn verführen, was ihn manchmal in eine schwierigen Situation bringt. Issei seinerseits steckt sich dennoch das Ziel, der mächtigste Bauer zu werden sowie in den Dämonen-Adelsstand aufzusteigen, sodass er Rias immer wieder beschützen kann und seinen Harem gründen kann.\n\nAdlige Dämonen nehmen an einem Rating Game teil, das an Schach angelehnt ist und der Kampfausbildung dient, und erhalten 15 Schachfiguren (悪魔の駒イーヴィル・ピース, Īviru Pīsu = Evil Piece). Neben dem König sind dies Dame (im Anime auch oft als Königin bezeichnet), Springer, Läufer, Turm und Bauer mit jeweils eigenen Fähigkeiten: Springer haben eine erhöhte Geschwindigkeit und Mobilität, Läufer erhöhte magische Fähigkeiten, Türme erhöhte Stärke und Robustheit, Damen (Königinnen) alles von diesen und Bauern können in feindlichem Gebiet zu einer Dame (Königin), Springer, Läufer oder Turm konvertieren.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 02,
      title: 'Highschool DxD New',
      genre: 'Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_new_logo.png',
      description:
          'Der Oberschüler Issei Hyōdo versucht zusammen mit zwei weiteren Schulfreunden seit geraumer Zeit, eine Freundin zu finden. Jedoch fallen die drei eher durch unbedachtes Vorgehen und Spannen auf, sodass sich eigentlich kein Mädchen der Schule mit ihnen einlassen will. Doch eines Tages scheint sich eine Schülerin für ihn besonders zu interessieren und er kann es kaum glauben, dass sie ihn so schnell zu einer Verabredung einlädt, der er geblendet durch ihren Charme bedenkenlos folgt. Am Ende des Tages wird er wider Erwarten von dem Mädchen kurzerhand umgebracht, nachdem sie sich als gefallener Engel entpuppte. Zu seiner eigenen Verwunderung wacht er jedoch nackt in seinem Bett auf, als ob es nur ein Traum gewesen wäre, läge da nicht die Schönheit der Schule, Rias Gremory, nackt neben ihm. Während sie ihn zugleich zu beruhigen als auch zu bezirzen versucht und zwischendurch auch noch verwundert seine Mutter in der Türschwelle steht, erklärt sie ihm, dass er wahrhaftig am vorherigen Tag umgebracht wurde, sie ihn als Anführerin des Dämonen Clans der Gremory als Dämon wiederbelebt habe und er fortan Teil des Clans ist.\n\nRias’ Gruppe tarnt sich als Okkultismus-Forschungsclub (オカルト研究部, Okaruto Kenkyūbu) an der Schule. Ebenso muss er erst einmal verstehen, was es heißt, ein Dämon zu sein und was sich daraus für Umstände und Pflichten ergeben. Erst im Club scheint Issei das erste Mal zu begreifen, was mit ihm passiert ist, und Rias erklärt ihm die feindlichen Beziehungen zwischen den Dämonen, den gefallenen Engeln und den Engeln, wie auch dessen Anhängern der Kirche. Auch erfuhr er, dass er selbst eigene Diener haben könne, wenn er sich nur genug anstrenge und aufsteige, auf dass er sich zum obersten Ziel setzte, ein Haremkönig zu werden.\n\nTrotz des Wissens über die Feindschaft, lernt er die junge, stets freundliche und naive Nonne Asia kennen, mit der er sich trotz aller Feindschaften schnell anfreundet. Durch ein Komplott der gefallenen Engel, kommt Asia jedoch ums Leben, was auch Issei nicht verhindern kann, obwohl er alles gab. Jedoch kann auch Asia als Dämon wiederbelebt werden und ist seitdem fester Bestandteil des Clans, für den sich ihre Heilungskräfte als sehr hilfreich erweisen. Diese wurde auch zur ersten von vielen kommenden Mädchen, die sich in Issei verlieben werden.\n\nIm weiteren Verlauf wird Issei zunehmend stärker und er spielt immer mehr eine wichtige Figur für die Personen innerhalb des Okkultismus-Forschungsclub und besonders für Rias Gremory und die anderen Mädchen. Zwar von Natur aus schwächer als die meisten anderen – und überwiegend weiblichen – Dämonen, kann er sich dennoch mit ausgefallenen Techniken und seinem ungebrochenen Willen wiederholt durchsetzen. Nebenbei verlieben sich allmählich alle Mädchen im Klub in ihn und besonders entwickelte er zu Rias eine tiefe romantische Beziehung. Doch lassen es die anderen Mädchen nicht so auf sich sitzen. Sie versuchen ebenfalls stets ihr Glück bei Issei, indem sie ihn verführen, was ihn manchmal in eine schwierigen Situation bringt. Issei seinerseits steckt sich dennoch das Ziel, der mächtigste Bauer zu werden sowie in den Dämonen-Adelsstand aufzusteigen, sodass er Rias immer wieder beschützen kann und seinen Harem gründen kann.\n\nAdlige Dämonen nehmen an einem Rating Game teil, das an Schach angelehnt ist und der Kampfausbildung dient, und erhalten 15 Schachfiguren (悪魔の駒イーヴィル・ピース, Īviru Pīsu = Evil Piece). Neben dem König sind dies Dame (im Anime auch oft als Königin bezeichnet), Springer, Läufer, Turm und Bauer mit jeweils eigenen Fähigkeiten: Springer haben eine erhöhte Geschwindigkeit und Mobilität, Läufer erhöhte magische Fähigkeiten, Türme erhöhte Stärke und Robustheit, Damen (Königinnen) alles von diesen und Bauern können in feindlichem Gebiet zu einer Dame (Königin), Springer, Läufer oder Turm konvertieren.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 03,
      title: 'Highschool DxD Born',
      genre: 'Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_born_logo.png',
      description:
          'Der Oberschüler Issei Hyōdo versucht zusammen mit zwei weiteren Schulfreunden seit geraumer Zeit, eine Freundin zu finden. Jedoch fallen die drei eher durch unbedachtes Vorgehen und Spannen auf, sodass sich eigentlich kein Mädchen der Schule mit ihnen einlassen will. Doch eines Tages scheint sich eine Schülerin für ihn besonders zu interessieren und er kann es kaum glauben, dass sie ihn so schnell zu einer Verabredung einlädt, der er geblendet durch ihren Charme bedenkenlos folgt. Am Ende des Tages wird er wider Erwarten von dem Mädchen kurzerhand umgebracht, nachdem sie sich als gefallener Engel entpuppte. Zu seiner eigenen Verwunderung wacht er jedoch nackt in seinem Bett auf, als ob es nur ein Traum gewesen wäre, läge da nicht die Schönheit der Schule, Rias Gremory, nackt neben ihm. Während sie ihn zugleich zu beruhigen als auch zu bezirzen versucht und zwischendurch auch noch verwundert seine Mutter in der Türschwelle steht, erklärt sie ihm, dass er wahrhaftig am vorherigen Tag umgebracht wurde, sie ihn als Anführerin des Dämonen Clans der Gremory als Dämon wiederbelebt habe und er fortan Teil des Clans ist.\n\nRias’ Gruppe tarnt sich als Okkultismus-Forschungsclub (オカルト研究部, Okaruto Kenkyūbu) an der Schule. Ebenso muss er erst einmal verstehen, was es heißt, ein Dämon zu sein und was sich daraus für Umstände und Pflichten ergeben. Erst im Club scheint Issei das erste Mal zu begreifen, was mit ihm passiert ist, und Rias erklärt ihm die feindlichen Beziehungen zwischen den Dämonen, den gefallenen Engeln und den Engeln, wie auch dessen Anhängern der Kirche. Auch erfuhr er, dass er selbst eigene Diener haben könne, wenn er sich nur genug anstrenge und aufsteige, auf dass er sich zum obersten Ziel setzte, ein Haremkönig zu werden.\n\nTrotz des Wissens über die Feindschaft, lernt er die junge, stets freundliche und naive Nonne Asia kennen, mit der er sich trotz aller Feindschaften schnell anfreundet. Durch ein Komplott der gefallenen Engel, kommt Asia jedoch ums Leben, was auch Issei nicht verhindern kann, obwohl er alles gab. Jedoch kann auch Asia als Dämon wiederbelebt werden und ist seitdem fester Bestandteil des Clans, für den sich ihre Heilungskräfte als sehr hilfreich erweisen. Diese wurde auch zur ersten von vielen kommenden Mädchen, die sich in Issei verlieben werden.\n\nIm weiteren Verlauf wird Issei zunehmend stärker und er spielt immer mehr eine wichtige Figur für die Personen innerhalb des Okkultismus-Forschungsclub und besonders für Rias Gremory und die anderen Mädchen. Zwar von Natur aus schwächer als die meisten anderen – und überwiegend weiblichen – Dämonen, kann er sich dennoch mit ausgefallenen Techniken und seinem ungebrochenen Willen wiederholt durchsetzen. Nebenbei verlieben sich allmählich alle Mädchen im Klub in ihn und besonders entwickelte er zu Rias eine tiefe romantische Beziehung. Doch lassen es die anderen Mädchen nicht so auf sich sitzen. Sie versuchen ebenfalls stets ihr Glück bei Issei, indem sie ihn verführen, was ihn manchmal in eine schwierigen Situation bringt. Issei seinerseits steckt sich dennoch das Ziel, der mächtigste Bauer zu werden sowie in den Dämonen-Adelsstand aufzusteigen, sodass er Rias immer wieder beschützen kann und seinen Harem gründen kann.\n\nAdlige Dämonen nehmen an einem Rating Game teil, das an Schach angelehnt ist und der Kampfausbildung dient, und erhalten 15 Schachfiguren (悪魔の駒イーヴィル・ピース, Īviru Pīsu = Evil Piece). Neben dem König sind dies Dame (im Anime auch oft als Königin bezeichnet), Springer, Läufer, Turm und Bauer mit jeweils eigenen Fähigkeiten: Springer haben eine erhöhte Geschwindigkeit und Mobilität, Läufer erhöhte magische Fähigkeiten, Türme erhöhte Stärke und Robustheit, Damen (Königinnen) alles von diesen und Bauern können in feindlichem Gebiet zu einer Dame (Königin), Springer, Läufer oder Turm konvertieren.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 04,
      title: 'Highschool DxD Hero',
      genre: 'Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_hero_logo.png',
      description:
          'Der Oberschüler Issei Hyōdo versucht zusammen mit zwei weiteren Schulfreunden seit geraumer Zeit, eine Freundin zu finden. Jedoch fallen die drei eher durch unbedachtes Vorgehen und Spannen auf, sodass sich eigentlich kein Mädchen der Schule mit ihnen einlassen will. Doch eines Tages scheint sich eine Schülerin für ihn besonders zu interessieren und er kann es kaum glauben, dass sie ihn so schnell zu einer Verabredung einlädt, der er geblendet durch ihren Charme bedenkenlos folgt. Am Ende des Tages wird er wider Erwarten von dem Mädchen kurzerhand umgebracht, nachdem sie sich als gefallener Engel entpuppte. Zu seiner eigenen Verwunderung wacht er jedoch nackt in seinem Bett auf, als ob es nur ein Traum gewesen wäre, läge da nicht die Schönheit der Schule, Rias Gremory, nackt neben ihm. Während sie ihn zugleich zu beruhigen als auch zu bezirzen versucht und zwischendurch auch noch verwundert seine Mutter in der Türschwelle steht, erklärt sie ihm, dass er wahrhaftig am vorherigen Tag umgebracht wurde, sie ihn als Anführerin des Dämonen Clans der Gremory als Dämon wiederbelebt habe und er fortan Teil des Clans ist.\n\nRias’ Gruppe tarnt sich als Okkultismus-Forschungsclub (オカルト研究部, Okaruto Kenkyūbu) an der Schule. Ebenso muss er erst einmal verstehen, was es heißt, ein Dämon zu sein und was sich daraus für Umstände und Pflichten ergeben. Erst im Club scheint Issei das erste Mal zu begreifen, was mit ihm passiert ist, und Rias erklärt ihm die feindlichen Beziehungen zwischen den Dämonen, den gefallenen Engeln und den Engeln, wie auch dessen Anhängern der Kirche. Auch erfuhr er, dass er selbst eigene Diener haben könne, wenn er sich nur genug anstrenge und aufsteige, auf dass er sich zum obersten Ziel setzte, ein Haremkönig zu werden.\n\nTrotz des Wissens über die Feindschaft, lernt er die junge, stets freundliche und naive Nonne Asia kennen, mit der er sich trotz aller Feindschaften schnell anfreundet. Durch ein Komplott der gefallenen Engel, kommt Asia jedoch ums Leben, was auch Issei nicht verhindern kann, obwohl er alles gab. Jedoch kann auch Asia als Dämon wiederbelebt werden und ist seitdem fester Bestandteil des Clans, für den sich ihre Heilungskräfte als sehr hilfreich erweisen. Diese wurde auch zur ersten von vielen kommenden Mädchen, die sich in Issei verlieben werden.\n\nIm weiteren Verlauf wird Issei zunehmend stärker und er spielt immer mehr eine wichtige Figur für die Personen innerhalb des Okkultismus-Forschungsclub und besonders für Rias Gremory und die anderen Mädchen. Zwar von Natur aus schwächer als die meisten anderen – und überwiegend weiblichen – Dämonen, kann er sich dennoch mit ausgefallenen Techniken und seinem ungebrochenen Willen wiederholt durchsetzen. Nebenbei verlieben sich allmählich alle Mädchen im Klub in ihn und besonders entwickelte er zu Rias eine tiefe romantische Beziehung. Doch lassen es die anderen Mädchen nicht so auf sich sitzen. Sie versuchen ebenfalls stets ihr Glück bei Issei, indem sie ihn verführen, was ihn manchmal in eine schwierigen Situation bringt. Issei seinerseits steckt sich dennoch das Ziel, der mächtigste Bauer zu werden sowie in den Dämonen-Adelsstand aufzusteigen, sodass er Rias immer wieder beschützen kann und seinen Harem gründen kann.\n\nAdlige Dämonen nehmen an einem Rating Game teil, das an Schach angelehnt ist und der Kampfausbildung dient, und erhalten 15 Schachfiguren (悪魔の駒イーヴィル・ピース, Īviru Pīsu = Evil Piece). Neben dem König sind dies Dame (im Anime auch oft als Königin bezeichnet), Springer, Läufer, Turm und Bauer mit jeweils eigenen Fähigkeiten: Springer haben eine erhöhte Geschwindigkeit und Mobilität, Läufer erhöhte magische Fähigkeiten, Türme erhöhte Stärke und Robustheit, Damen (Königinnen) alles von diesen und Bauern können in feindlichem Gebiet zu einer Dame (Königin), Springer, Läufer oder Turm konvertieren.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 05,
      title: 'Solo Leveling',
      genre: 'Anime, Action, Fantasy',
      imagePath: 'assets/images/broadcastImages/SoloLeveling_logo.jpg',
      description:
          'Solo Leveling ist eine südkoreanische Fantasy-Geschichte, die in einer Welt spielt, in der sich Portale zu Dungeons voller Monster geöffnet haben. Menschen mit besonderen Fähigkeiten, sogenannte "Jäger", kämpfen gegen diese Monster, um die Menschheit zu schützen. Die Handlung folgt dem schwächsten Jäger der Welt, Sung Jin-woo, der nach einem fast tödlichen Erlebnis die einzigartige Fähigkeit erhält, ein System zu nutzen, um unbegrenzt stärker zu werden.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 06,
      title: 'UQ Holder',
      genre: 'Anime, Fantasy, Abenteuer, Action, Shōnen',
      imagePath: 'assets/images/broadcastImages/UQHolder_logo.png',
      description:
          'Der jugendliche Tōta Konoe (近衛 刀太) lebt nach dem Tod seiner Eltern zwei Jahre zuvor bei seiner Lehrerin Yukihime (雪姫). Er lebt auf dem Land, doch wie seine Freunde will Tōta in die Hauptstadt und dort sein Glück machen, schließlich auf den dort aufragenden, riesigen Turm und von dort ins All. Von auf dem Turm soll auch Yukihime kommen. Sie müssen die Kinder besiegen, damit das Dorf sie in die Stadt ziehen lässt, also versuchen sie immer wieder ihr Glück im Kampf gegen die starke Frau, die auch noch Magie beherrscht.\n\nEines Tages erscheint ein Attentäter, der auf Yukihime angesetzt ist. Tōta wird schwer verletzt und nur durch das Blut Yukihimes kann er gerettet werden. Diese offenbart sich als 700 Jahre alte Vampirin und Teil der Organisation UQ Holder. Tōta ist nun unsterblich, erhält ein magisches Schwert und wird Teil dieser Organisation. In dieser gilt es, Aufträge zu erfüllen, um aufzusteigen und seinem Ziel näher zu kommen. Dabei werden er und Yukihime vom geheimnisvollen Schwertkämpfer Kuromaru begleitet.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 07,
      title: 'The Eminence in Shadow',
      genre: 'Anime, Adventure, Isekai',
      imagePath: 'assets/images/broadcastImages/TheEminenceInShadow_logo.png',
      description:
          'Ein junger Mann hat sich stets erträumt, als starker Krieger die Welt mit seinen überragenden Fähigkeiten zu überraschen – oder jedenfalls so zu tun, als hätte er solche. So hat er heimlich Krafttraining gemacht und meditiert, um Magie zu lernen. Dann stirbt er unerwartet und wird in eine andere Welt wiedergeboren. Als Cid Kagenō will er die Chance ergreifen, seinen Traum auszuleben. Seine Familie besteht aus mächtigen Magie-Schwertkämpfern, doch Cid verliert regelmäßig gegen seine ältere Schwester Claire. Heimlich ist er jedoch stärker, als er es aussehen lässt. Er zieht nachts aus, um Verbrecher zu jagen und befreit dabei eine von Dämonen Besessene. Die Kirche soll solche Wesen heilen, aber es gibt auch Gerüchte, dass sie sie tötet. Also hilft Cid ihr selbst und das Wesen stellt sich nach der Heilung als junge Elfe heraus, die er Alpha nennt. Mit ihr gründet Cid eine geheime Organisation, rekrutiert weitere Mitglieder und schwört sie auf den Kampf gegen einen bösen Kult ein. Den und dessen Verbindung zu den Besessenen hat er sich jedoch für seinen Machtrausch als Strippenzieher im Hintergrund nur ausgedacht. Nach einiger Zeit stellt sich seine Fantasie aber als real heraus, er muss wirklich gegen einen Kult antreten und außer ihm war das vielen längst bekannt.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 08,
      title: 'Akame Ga Kill',
      genre: 'Anime, Action, Adventure, Fantasy, Shōnen',
      imagePath: 'assets/images/broadcastImages/AkameGaKill_logo.png',
      description:
          'Der junge Schwertkämpfer Tatsumi (タツミ) reist gemeinsam mit zwei Kameraden in die Kaiserstadt. Sie wollen in der Kaiserstadt Geld verdienen um ihrem Dorf zu helfen. Doch in der Stadt herrschen Willkür und Gewalt, seit Minister Honest den jungen Kaiser in seinem Sinne manipuliert. Die Mächtigen beuten die Armen aus, foltern und töten sie zu ihrem Vergnügen. So werden auch Tatsumi und seine Kameraden zunächst bei einem Raubüberfall getrennt, dann wird Tatsumi überlistet und verliert sein Geld und gerät wie zuvor seine Kameraden in die Fänge einer der reichen Familien. Doch er kann mit der Hilfe von Night Raid entkommen, einer Gruppe von Auftragsmördern. Diese bestehen aus der Schwertkämpferin Akame, der mit Scheren kämpfenden Sheele, dem Kämpfer Bulat, die Scharfschützin Mine, dem mit Fäden tötenden Lubbock, Leone mit tierischen Fähigkeiten und der Anführerin Najenda. Sie nehmen Tatsumi in ihre Gruppe auf, die zur Untergrundbewegung gehört, die gegen Minister Honest kämpft.\n\nAlle bei Night Raid verfügen über ein Teigu. Diese Gegenstände – Waffen oder Alltagsgegenstände – wurden vor 900 Jahren durch Alchemie geschaffen und verleihen ihren Trägern besondere Fähigkeiten. Viele von ihnen sind über die Zeit verloren gegangen und nicht jeder kann die Macht eines Teigu kontrollieren. Nach einem Kampf mit den Männern Honests, bei dem Bulat starb, erhält Tatsumi seinen Teigu. Um der Bedrohung durch Night Raid zu begegnen, beauftragt Honest General Esdeath selbst eine Truppe aus Teigu-Trägern zusammenzustellen, um gegen Night Raid vorzugehen.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 09,
      title: 'Konosuba',
      genre: 'Anime, Comedy, Fantasy, Etchi',
      imagePath: 'assets/images/broadcastImages/KonoSuba_logo.png',
      description:
          'Als der Hikikomori Kazuma Satō (佐藤 和真) nach langer Zeit mal wieder das Haus verlässt, rettet er ein Mädchen davor überfahren zu werden, kommt jedoch dabei um. Im Jenseits trifft er die Göttin des Wassers Aqua (アクア, Akua), die sich wegen seiner Todesumstände vor Lachen nicht mehr einkriegt: sein Rettungsversuch war sowohl unnütz, da das Fahrzeug nur ein im Schritttempo fahrender und daher harmloser Traktor war, als auch peinlich, da er tatsächlich an akutem Stress starb im Glauben, überfahren worden zu sein. Sie bietet ihm an in einer MMORPG-ähnlichen Welt wiedergeboren zu werden, um dort den Dämonenkönig zu besiegen, wobei ihm ein beliebiger göttlicher Gegenstand oder Fähigkeit gewährt würde. Aufgrund ihrer vorherigen Provokation entscheidet sich Kazuma, Aqua gegen ihren Willen mitzunehmen, die gezwungen ist mit ihm eine Rollenspiel-Party zu bilden, da sie erst zurückkehren darf, wenn Kazumas Aufgabe erledigt ist.\n\nAufgrund seiner nur durchschnittlichen Attribute, ausgenommen seiner überdurchschnittlichen Intelligenz und maximalen Glücks, das jedoch für Abenteuer eher unwichtig ist, erhält er die niedrigste Klasse als normaler Abenteurer. Aqua hat als Göttin dahingegen maximale Attribute, weswegen sie die Klasse einer Erzpriesterin erhält, hat jedoch nur minimales Glück und unterdurchschnittliche Intelligenz, was sich darin zeigt, dass sie alle ihre Skillpunkte in Partytricks investiert. Sie besitzt jedoch noch ihre göttlichen Wasser- und Heilzauber. Später gesellt sich noch die Erzzauberin Megumin (めぐみん) hinzu, die von einem Volk von chūnibyō – Jugendliche mit der Wahnvorstellung etwas besonderes zu sein und theatralischer Sprechweise – stammt, die sich weigert, etwas anderes als einen Explosionszauber zu lernen. Als Damage Dealer der Party ist sie jedoch nur bedingt nützlich, da sie diesen einzigen Zauber aufgrund dessen Stärke und ihres niedrigen Levels nur einmal am Tag wirken kann, der sie zudem auch bewegungsunfähig werden lässt. Das letzte Mitglied ist die Kreuzritterin Darkness (ダクネス, Dakunesu), eine ultimative Masochistin, da sie davon träumt von Monstern misshandelt zu werden, weswegen sie alle Skillpunkte in Verteidigung investiert, damit sie länger angegriffen werden kann. Dafür besitzt sie keinerlei Offensive, was sie zum Tank der Gruppe macht.\n\nMit dieser denkbar schlechtesten Rollenspiel-Party konfrontiert gibt Kazuma relativ schnell das Ziel auf, den Dämonenkönig zu besiegen, und versucht ein normales Leben zu führen, was jedoch immer wieder von seinen unfreiwilligen Zusammentreffen mit den Generälen des Dämonenkönigs durchkreuzt wird.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 10,
      title: 'Call of the Night',
      genre: 'Anime, Romance, Comedy',
      imagePath: 'assets/images/broadcastImages/CallOfTheNight_logo.png',
      description:
          'Im zweiten Jahr der Mittelschule kann Kou Yamori nichts mehr mit seinem Alltag anfangen. Um endlich etwas neues zu erleben, schleicht er sich nachts davon und zieht durch die Straßen. Auch dabei ist ihm zunächst unklar, was er mit seiner Zeit anfangen soll. Als der 14-jährige sich ein Bier an einem Automaten holen will, taucht Nazuna Nanakusa auf und hält ihn davon ab. Die junge Frau wirkt fast wie ein Mädchen in seinem Alter und lädt ihn ein, die Nacht mit ihr in ihrer Wohnung zu verbringen. Als Kou dort vorgibt einzuschlafen, beißt Nazuna ihn in den Hals und saugt sein Blut. Sie ist eine Vampirin auf der Jagd, aber Kou wird zu seiner Enttäuschung nicht selbst zum Vampir. Er würde seinem bisherigen Leben gern auf diesem Wege entkommen und als Wesen der Nacht leben, doch dafür müsste er sich zunächst in Nazuna verlieben. So nimmt er sich vor, die Liebe zu der jungen Frau unbekannten Alters zu entwickeln, obwohl er sich bisher noch nie in eine Klassenkameradin verliebt hat.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 11,
      title: 'Cautious Hero:\nThe Hero is Overpowered but Overly Cautious',
      genre: 'Anime, Isekai, Fantasy, Comedy, Action',
      imagePath: 'assets/images/broadcastImages/Shinchou_Yuusha_logo.png',
      description:
          'Die noch recht junge Göttin Listarte wird damit beauftragt, für die Rettung einer in Not befindlichen Welt einen Helden zu beschwören. Ihre älteren Kollegen im Götterreich haben darin schon viel Erfahrung, während Listarte bisher nur einige Welten retten konnte. Die neue Aufgabe ist die Welt Gaelbarde, eine Klasse-S-Welt und daher besonders herausfordernd. Sie überlegt daher lange und wählt schließlich den Japaner Seiya Ryūgūin aus. Sie beschwört den jungen Mann mit herausragend guten Helden-Werten in die Götterwelt, um dann aber sehr schnell festzustellen, dass Seiya außergewöhnlich vorsichtig ist. Er lässt sich nicht einfach in die gefährliche Zielwelt bringen, sondern besteht zunächst auf einem ausgiebigen Training. Listarte verzweifelt bald an ihm und sucht, wie auch später immer wieder, bei der erfahrenen Göttin Ariadoa Rat. Schließlich gelingt es ihr, Seiya nach Gaelbarde zu bringen.\n\nAuch beim ersten Kampf gegen schwache Monster stellt sich Seiya als übervorsichtig heraus und greift mit übermäßiger Kampfkraft selbst die schwächsten Gegner an. Doch als überraschend eine starke Dämonin auftritt, die vom Endgegner bewusst zum Ankunftspunkt des Helden entsandt wurde, müssen der Held und die Göttin sich zurückziehen. Seiya besteht auf weiteres Training und als sie zurückkehren, hat er sich allein dadurch so weit hochgearbeitet, dass ihm der Sieg leicht fällt. Bei seinem übertriebenen Einsatz wird jedoch auch die umliegende Stadt zerstört. Zum Training erneut zurück in der Götterwelt, wird Seiya der Schwertgott Selseus als Trainingspartner empfohlen. Bereits nach einigen Tagen hat Seiya enorme Fortschritte gemacht, will aber nicht aufhören, bis Selseus schließlich an ihm verzweifelt.\n\nIn Gaelbarde wird eine Stadt von Zombies bedroht, sodass der Held und Listarte zurück reisen. Dort sollen sich ihnen der Drachenkrieger Mash und die Drachenmagierin Eruru als Gefährten anschließen. Seiya aber ist bereits so stark, dass er beide eigentlich gar nicht braucht.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 12,
      title: 'Jujutsu Kaisen',
      genre: 'Anime, Abenteuer, Fantasy',
      imagePath: 'assets/images/broadcastImages/JujutsuKaisen.png',
      description:
          'An seiner Oberschule in Sendai meidet Yuji Itadori den Leichtathletik-Klub und geht lieber in den Okkultismus-Klub. Denn dort kann der eigentlich sportliche Schüler sich mit den beiden anderen Mitgliedern Sasaki und Iguchi entspannen und früh die Schule verlassen, um seinen kranken Großvater zu besuchen. Als dieser bald darauf stirbt, gibt er seinem Enkel noch auf, allen Menschen zu helfen und nicht allein zu sterben. Daraufhin wird Yuji von Megumi Fushiguro, Schüler der städtischen Jujutsu-Akademie, aufgesucht. Der ist auf der Suche nach einem Finger, auf dem ein Fluch liegt. Doch Sasaki und Iguchi haben das Amulett aus seinem Aufbewahrungskasten genommen und das Siegel des Fluchs gebrochen. Im Innern des Amuletts liegt ein verdorrter Finger, dessen Magie Flüche an die Schule lockt und die beiden Schüler in Gefahr bringt. Megumi versucht ihnen zu helfen, kommt gegen die Flüche jedoch nicht an. Schließlich schluckt Yuji den Finger herunter, um dessen Macht zu erwerben, und kann seine Freunde retten. Doch nun versucht der Fluch von ihm Besitz zu ergreifen und Megumis Lehrer Satoru Gojo will den Fluch austreiben und Yuji dabei töten. Glücklicherweise kann der Schüler den Fluch in sich beherrschen und erhält so vom Lehrer und der Jujutsu-Akademie noch eine Gnadenfrist.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 13,
      title: "Hell's Paradise",
      genre: 'Anime, Shōnen, Fantasy, Action',
      imagePath: 'assets/images/broadcastImages/HellsParadise.png',
      description:
          'Der junge Ninja Gabimaru (画眉丸) aus dem Dorf Iwagakure gehört zu den Besten seiner Zunft. Doch nachdem er mit der Tochter des Clanchefs verheiratet wurde, will er das Töten aufgeben. Bei der nächsten Mission wird er verraten und zum Tode verurteilt. Trotz seiner Beteuerungen, selbst sterben zu wollen, wird jeder Hinrichtungsversuch durch seine Ninja-Techniken vereitelt. Die Scharfrichterin Sagiri Yamada Asaemon (山田浅ェ門佐切) findet schließlich heraus, dass es die Liebe zu seiner Frau ist, die Gabimaru in dieser Welt hält. Sie schlägt ihm eine neue Mission vor, um sich eine Begnadigung zu verdienen: südlich Japans wurde die Insel Shinsenkyo entdeckt, auf der es das Elixier des ewigen Lebens geben soll. Der Shogun will dieses für sich und schickte bereits fünf Expeditionen, doch keine kehrte zurück. Wenn Gabimaru das Elixier zum Shogun bringen kann, wird sein Leben verschont.\n\nSo wird der Ninja zusammen mit Sagiri als seiner Bewacherin nach Shinsenkyo geschickt. Doch ist er nicht der einzige Todgeweihte, der auf den Handel eingegangen ist. Neun weitere sind mit ihren Bewachern gesandt worden und werden nun – neben den Gefahren des Fremden Landes – zu Konkurrenten um das Elixier.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 14,
      title: 'Dragon Ball',
      genre: 'Anime, Shōnen, Action, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBall.png',
      description:
          'Bis auf einige „Filler-Episoden“ (Füllepisoden) orientiert sich die Handlung weitestgehend an der Originalgeschichte des Mangas. Die 153 Episoden werden üblicherweise in drei Sagas aufgeteilt:\n\nPilaw-Saga (Episoden 1–32)\nDie ersten Episoden thematisieren den Wettstreit mit Prinz Pilaw um die Dragon Balls.\n\nRed-Ribbon-Saga (Episoden 33–99)\nIn diesem Abschnitt der Geschichte bekämpft Son Goku die Red-Ribbon-Armee. In einigen Episoden haben Charaktere aus der ebenfalls von Toriyama stammenden Anime-Serie Dr. Slump einen Cameo-Auftritt.\n\nPiccolo-Saga (Episoden 100–153)\nDie Piccolo-Saga behandelt die Geschichte ab dem Auftauchen des Oberteufels Piccolo bis zum Finale des 23. Tenkaichi Budokai.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 15,
      title: 'Dragon Ball Z',
      genre: 'Anime, Shōnen, Action, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallZ.png',
      description:
          'Chronologisch umfasst Dragon Ball Z die Zeit von der Kindheit von Son-Gokus Sohn Son-Gohan bis zur Kindheit von Son-Gohans Tochter Pan.\n\nDie Serie besteht nach Studio Toei offiziell aus vier „Sagas“:\n\n - Saiyajin-Saga (Folgen 1–35)\n - Freezer-Saga (Folgen 36–125)\n - Cell-Saga (Folgen 126–199)\n - Boo-Saga (Folgen 200–291)\nGrundlage der Handlung ist die Abwehr von übermächtig stark scheinenden Angreifern, die entweder nach Vorherrschaft streben oder Rache für früher erlittene Niederlagen suchen. Diesen Angreifern stellt sich eine Gruppe von Kämpfern (die sich Z-Krieger nennen) um Son-Goku entgegen, um sie an der Durchführung ihrer Pläne zu hindern. Dragon Ball Z besteht aus der Darstellung dieser Kämpfe, aufgelockert durch humorvolle Begebenheiten und Sprüche. Die Kämpfe, ihre Auswirkungen und die Kampfkraft der Teilnehmer steigern sich mit Fortführung der Serie zu immer neuen Superlativen.\n\nKennzeichnend für die Serie ist eine fast surreale Dehnung von dramatischen Situationen durch lange Schnittfolgen und Dialoge. Ebenfalls typisch ist das häufige Wechseln der Handlung und einiger Charaktere zwischen Diesseits und Jenseits, was auf die zugrundeliegenden fernöstlichen Denkweisen und Erzähltraditionen hinweist.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 16,
      title: 'Dragon Ball Z Kai',
      genre: 'Anime, Shōnen, Action, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallZKai.png',
      description:
          'Staffel 1\n\nEine japanische, hochaufgelöste Fassung wurde vom 5. April 2009 bis 27. März 2011 auf Fuji TV sowie mit Versatz zwei Dutzend weiteren Sendern ausgestrahlt, die digital überarbeitetes Videomaterial sowie eine neue Synchronfassung erhält, die zum 20-jährigen Jubiläum der Serie aufgenommen wurde. Regie führte Yasuhiro Nowatari.\n\nDabei wurde die Serie in mehreren Aspekten überarbeitet und folgt nun unter dem Namen Dragon Ball Kai der Handlung des Mangas genau. Sie wird im Gegensatz zu Dragon Ball Z nicht durch sogenannte „Filler“-Episoden unterbrochen, die in der Originalausstrahlung zur Streckung des Inhalts eingefügt wurden, wann immer die Handlung des Animes der des parallel in der Weekly Shōnen Jump veröffentlichten Mangas aufschloss. In einigen Ländern heißt die Neuauflage Dragon Ball Z Kai, u. a. in Deutschland und den Vereinigten Staaten.\n\nDie Handlung der Neufassung beginnt mit Inhalten aus dem Fernsehspecial, das in Deutschland auf DVD unter dem Titel Das Bardock Special erschien. Es zeigt die Vorgeschichte um die Vernichtung der Saiyajin durch Freezer und enthält zur Einleitung auch Footages aus der ersten Fernsehserie, ehe die eigentliche Handlung zum gleichen Zeitpunkt wie im Original einsetzt.\n\nInsgesamt sollte Dragon Ball Kai 98 Folgen beinhalten und mit der Cell-Saga enden, jedoch wurde am 27. März 2011 die 98. Episode, die direkt nach der 97. gesendet hätte werden sollen, aufgrund der schweren Erdbeben in Japan nicht gesendet.[15] Zwar wurde bis heute die Dragon Ball Kai Folge 98 (Mirai ni Heiwa o! Gokū no Tamashī yo Eien ni) nicht im Japanischen Fernsehen ausgestrahlt, jedoch ist diese auf den erschienenen, japanischen Blu-rays und DVDs enthalten.\n\nIm Mai gab Kazé bekannt, die erste Staffel von Dragon Ball Z Kai lizenziert zu haben. Diese soll ab September 2015, aufgeteilt in sechs Boxen, im 2-Monats-Rhythmus erscheinen. Die erste Box wurde am 9. Oktober 2015 veröffentlicht. Die Serie erhielt dafür eine eigenständige, neue Synchronfassung.\n\n\nStaffel 2\n\nEine zweite Staffel mit weiteren 61 Folgen, welche die Boo-Saga abdeckt, war vom 6. April 2014 bis 28. Juni 2015 auf Fuji TV sowie mit Versatz auf zwei Dutzend weiteren Sendern zu sehen. Bei dieser Staffel führte Naohiro Terazaki Regie. Ursprünglich sollten 69 Folgen ausgestrahlt werden, jedoch wurden 8 Episoden aus der japanischen Episodenanzählung entfernt und sind auch nicht auf den japanischen DVDs und Blu-rays enthalten.[18][19] Der offizielle internationale Name der zweiten Staffel lautet Dragon Ball Z Kai: The Final Chapters und enthält im Gegensatz zur japanischen Episodenanzahl alle vorgesehenen 69 Folgen.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 17,
      title: 'Dragon Ball GT',
      genre: 'Fanfiction, Anime, Shōnen, Action, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallGT.png',
      description:
          'Konzeption\n\nDragon Ball GT beginnt fünf Jahre nach dem Ende der Handlung des Originalmangas und der Umsetzung als Animeserie. Die hauptsächlich auf Kämpfen und einzelnen Abenteuern basierende Handlung lässt sich dabei in verschiedene Abschnitte – sogenannte Sagas – unterteilen, die sowohl auf vorhergehende Ereignisse der Originalhandlung eingehen, aber auch sukzessiv aufeinander aufbauen, einander bedingen und zu einem Finale führen.\n\n\nSuper-Dragon-Balls\n(Episoden 1 bis 22)\n\nSon-Goku und Oob trainieren in Gottes Palast, in den sich Prinz Pilaw schleicht, der sich nun endlich den Wunsch nach der Weltherrschaft erfüllen will. Dabei findet er die von Piccolo geschaffenen Super-Dragon-Balls, von deren Drachen er sich jedoch versehentlich wünscht, dass Son-Goku wieder so klein wird, wie er früher war. Die Super-Dragon-Balls verteilen sich nun über die gesamte Galaxie und werden den Planeten zerstören, auf dem sie benutzt wurden, wenn sie nicht innerhalb eines Jahres wieder auf diesem versammelt sind. So machen sich der nun in einem kindlichen Körper festsitzende Son-Goku, Trunks und Pan auf die Suche nach ihnen.\n\nNach einigen ersten Gegnern, die kein ernsthaftes Hindernis darstellen, trifft die Gruppe auf einen religiösen Kult, der sie schließlich zu Doktor Mu und seinen Experimenten um sogenannte Bio-Cyborgs führt, die auch die Wiederherstellung eines Tsufurianers mit Namen Baby beinhalten, die von den Saiyajin einst ausgelöscht worden sind. Auch Mu sammelt die Super-Dragon-Balls, doch können Son-Goku, Trunks und Pan seine Pläne vereiteln und ihre Suche weiter fortsetzen. Allerdings entkommt Mu mit dem Tsufurianer und dessen Reifungskammer in einem Raumschiff.\n\n\nBaby\nEpisoden 23 bis 40)\n\nNachdem Baby herangereift und seiner Kammer entstiegen ist, sinnt er als letzter Tsufurianer auf Rache an den Saiyajin und tötet als erstes Doktor Mu, dem er nicht gehorchen will. Als er unerkannt von Son-Goku, Trunks und Pan in ein intergalaktisches Krankenhaus gebracht wird, schlüpft er in Trunks’ Körper und übernimmt diesen. Doch er unterschätzt dessen Kräfte und muss den Körper wieder verlassen, als sich Trunks in einen Super-Saiyajin verwandelt. Baby beschließt, die Erde zu erobern, und schlüpft dort nacheinander in die Körper Son-Gotens, Son-Gohans und schließlich Vegetas, während er in die restliche Bevölkerung der Erde Eier legt, durch die er die nötige Kraft erlangt, um die Saiyajin auch dann zu kontrollieren, wenn sie sich in Super-Saiyajins verwandeln. Lediglich Boo, Mister Satan, Pan und Oob werden nicht infiziert, weil sie entweder immun sind oder sich vor Baby verstecken.\n\nAls Son-Goku, Pan und Trunks erfolgreich von der Suche der Super-Dragon-Balls zurückkehren, bemerken sie zwar zunächst, dass sich ihre Familien recht merkwürdig verhalten, doch denken sie sich nichts dabei, bis auch Trunks erneut unter Babys Kontrolle steht und sich ihr Widersacher ihnen offenbart. Allein auf sich gestellt, hat Son-Goku in seinem kindlichen Körper keine Chance, so dass er – kurz bevor Baby ihn im Körper Vegetas töten kann – von Kibitoshin mit der Momentanen Teleportation gerettet wird. Nach einem Umweg über eine Zwischenwelt landet Son-Goku wieder auf der Welt der Kaioshins, wo ihm der Kaioshin von vor 15 Generationen erklärt, dass Son-Goku seinen Affenschwanz brauche, um gegen Baby zu bestehen. Während eine Zeremonie abgehalten wird, um das Wachstum des Schwanzes anzuregen, benutzt Baby die Super-Dragon-Balls, um sich die Wiederherstellung seiner Heimatwelt Tsufuru zu wünschen, die von den Saiyajins im Kampf mit dem Volk der Tsufurianer zerstört worden ist.\n\nSon-Goku stellt sich schließlich auf Tsufuru seinem Gegner erneut und verwandelt sich durch seine Sehnsucht nach der Erde nach und nach in einen vierfachen Super-Saiyajin. Nachdem Babys „Untertanen“ mit dem superheiligen Wasser, einer Art Allheilmittel, von den Tsufurianer-Eiern befreit worden sind, gelingt es Son-Goku, Baby endgültig zu töten. Im Anschluss an diesen Kampf werden von Son-Goku alle Lebewesen der Erde nach Tsufuru umgesiedelt, lediglich Piccolo bleibt zurück, damit die Super-Dragon-Balls durch seinen Tod mit ihm verschwinden. Nach einiger Zeit sammeln Son-Goku und seine Freunde die von Dende mit nach Tsufuru gebrachten Dragon Balls zusammen und rufen den heiligen Drachen Shenlong, der die Erde wiederherstellt.\n\n\nSuper-Nummer 17\n(Episoden 41 bis 47)\n\nAuf der Erde scheint nach einiger Zeit wieder Frieden eingekehrt zu sein, als sich in der Hölle der von Baby getötete Doktor Mu mit Doktor Gero trifft, der ebenfalls von seiner Schöpfung C 17 getötet worden ist. Gemeinsam schmieden die beiden einen Plan, um sich an Son-Goku zu rächen und die Galaxie zu erobern. Sie erschaffen Nummer 17, ein genaues Ebenbild des nach wie vor auf der Erde lebenden C 17. Von beiden Cyborgs lassen sie sich einen Höllenschlund, einen Durchgang zwischen Hölle und der Welt der Lebenden, schaffen, durch den jeder Gegner aus Son-Gokus Vergangenheit auf die Erde gelangt – mit Ausnahme von Cell und Freezer.\n\nSon-Goku fliegt in die Hölle, um nach dem Rechten zu sehen, gerät dabei aber in eine Falle. Während er von Freezer und Cell beschäftigt wird, fusionieren C 17 und dessen Ebenbild auf der Erde. Der daraus entstandene Krieger mit Namen Super-Nummer 17 übersteigt die Fähigkeiten von Son-Gokus Söhnen und Freunden. Als es Son-Goku mit der Hilfe von Piccolo und Dende gelingt, wieder in die Welt der Lebenden zurückzukehren, sieht auch er sich einem übermächtigen Gegner gegenüber, und selbst als vierfacher Super-Saiyajin hat er Super-Nummer 17 nichts entgegenzusetzen, vor allem deshalb, weil der Cyborg in der Lage ist, Son-Gokus Energie zu absorbieren.\n\nEs stellt sich jedoch heraus, dass Super-Nummer 17 die Energie seiner Gegner nur in einer bestimmten Pose absorbieren kann, so dass es Son-Goku mit Hilfe von C 18 gelingt, den Gegner mit seiner Super-Drachenfaust und einem anschließenden Kamehameha zu bezwingen.\n\n\nTeufelsdrachen\n(Episoden 48 bis 64)\n\nDas durch den Höllenschlund entstandene Ungleichgewicht zwischen den Welten und die vielen Wünsche in der Vergangenheit haben in den Dragon Balls einige Risse hinterlassen. Dennoch werden die Dragon Balls erneut versammelt, um Shenlong zu rufen, damit er die im Kampf gegen Super-Nummer 17 entstandenen Schäden wieder rückgängig macht und die Getöteten wiederbelebt. Jedoch erscheint nicht mehr Shenlong, sondern ein anderer Drache. Schon kurz darauf verschwinden die Dragon Balls erneut, aus denen sieben Teufelsdrachen entstehen, die durch die einzelnen Wünsche von Son-Goku und seinen Freunden entstanden sind und die nun bezwungen werden müssen, um die Dragon Balls von der negativen Energie zu befreien und erneut die Welt vor der Vernichtung zu bewahren.\n\nNacheinander gelingt es Pan und Son-Goku, die Dragon Balls zurückzuerlangen, doch stellt sich der finale Gegner als unnachgiebig heraus. Auch als vierfacher Super-Saiyajin gelingt es Son Goku nicht, ihn zu bezwingen. In der Zwischenzeit ist es Bulma gelungen, eine Maschine zu entwickeln, die es auch Vegeta ermöglicht, sich in einen vierfachen Super-Saiyajin zu verwandeln. Die beiden beschließen, nach der Verwandlung zu fusionieren, um so zu einem Superkrieger zu werden, dem auch dieser letzte Teufelsdrache nichts entgegensetzen kann. Die Fusion löst sich allerdings wieder, bevor sie ihn besiegen können, da sie nicht bedacht haben, dass die Fusion in diesem Stadium nicht so lange anhält, wie es sonst der Fall ist. Jedoch kann Son-Goku seinen Gegner schließlich mithilfe der Genkidama, die aus der Energie aller Lebewesen des Universums zustande kommt, bezwingen.\n\nSon-Goku verabschiedet sich Zwar sind die Dragon Balls wiederhergestellt, aber es ist klar, dass die sieben magischen Kugeln nicht erneut bedenkenlos benutzt werden dürfen und die Menschen künftig den Konsequenzen ihrer Taten ohne die Hilfe von Shenlong entgegentreten werden müssen. Doch der Drache erfüllt demjenigen, der ihn die letzten Jahrzehnte immer wieder gerufen hat, einen letzten Wunsch: Bevor beide verschwinden, darf sich Son-Goku noch von Muten Roshi, Kuririn und Piccolo verabschieden, ehe die Dragon Balls mit Son-Goku verschmelzen und Shenlong mit ihm verschwindet.\n\nEtwa hundert Jahre später ist die Erde ein friedlicher Ort, und es findet erneut ein großes Kampfsportturnier zu Ehren Son-Gokus und Mister Satans statt, in dessen Verlauf sich ihr gemeinsamer Nachkomme Son-Goku jr. mit Vegetas Nachfahre Vegeta jr. im Finale der Kindersektion gegenüberstehen. Die gealterte Pan glaubt, ihren Großvater in der Menschenmenge des Publikums zu sehen, wie er den beiden Kämpfern zuschaut, doch verschwindet er ebenso plötzlich, wie er ihr erschienen ist.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 18,
      title: 'Dragon Ball Super',
      genre: 'Anime, Shōnen, Action, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallSuper.png',
      description:
          'Kampf-der-Götter-Saga\nVier Jahre nachdem Son Goku und seine Freunde Boo besiegt haben, 778 nach der Zeitrechnung von Dragon Ball, erwacht Beerus, der Gott der Zerstörung, aus einem jahrzehntelangen Schlaf. In seinen Träumen hatte er eine Vision von einem Super-Saiyajin-Gott, welcher ein ihm ebenbürtiger Gegner sein soll. Einst existierte schon ein Super-Saiyajin-Gott mit dem Namen Yamoshi der die Bösen Saiyajin bekämpfen wollte. Er scheiterte jedoch. Gemeinsam mit seinem Lehrmeister Whis macht er sich auf die Suche nach diesem Super-Saiyajin-Gott und spürt schließlich die letzten verbliebenen Saiyajins Vegeta und Son Goku auf. Dabei landet er zufällig auf Bulmas Geburtstagsfeier.\n\nEnttäuscht, dass Son Goku und Vegeta nichts von dem Super-Saiyajin-Gott wissen, nimmt er an der Geburtstagsfeier teil und genießt zusammen mit Whis die köstlichen Speisen des Planeten Erde. Als Boo ihn erzürnt, schwört er dann jedoch, die Erde zu zerstören. Son Goku stellt sich ihm und schafft es schließlich ihn aufzuhalten, indem er sich selbst kurzzeitig in einen Super-Saiyajin-Gott verwandelt. Von dem Kampf erschöpft kehrt Beerus auf seinen Heimatplaneten zurück.\n\nWhis, der vom irdischen Essen begeistert ist, besucht jedoch fortan regelmäßig Bulma, die ihn mit den erlesensten Speisen verköstigt, damit er sie und ihre Familie gegebenenfalls vor Beerus beschützen würde. Bei einem dieser Besuche überredet Vegeta Whis schließlich, ihn unter seine Fittiche zu nehmen, und ihn auf Beerus’ Heimatplaneten zu trainieren.\n\n\nGoldener-Freezer-Saga\nEtwa ein Jahr später, 779, – inzwischen ist Son Gohans und Videls Tochter Pan auf die Welt gekommen – nimmt Whis auch Son Goku mit, um ihn zu trainieren. Währenddessen wird Freezer von seinen Gefolgsleuten wiederbelebt und trainiert für seine Rache.\n\nNach vier Monaten Training kommt Freezer mit einer 1000 Mann starken Armee auf der Erde an. Piccolo, Son Gohan, Tenshinhan, Krillin, der Herr der Schildkröten und der Weltraumpolizist Jaco – der sie vor Freezers Ankunft gewarnt hat – schaffen es, Freezer und dessen Armee solange aufzuhalten, bis Vegeta, Son Goku, Beerus und Whis auf die Erde zurückkehren.\n\nIn seinem Training hat Freezer eine neue Transformationsstufe erreicht: Den „goldenen Freezer“. Demgegenüber stehen Vegeta und Son Goku, die sich nach ihrem Training mit Whis in einen Super-Saiyajin mit Gotteskraft verwandeln können. Freezer ist zunächst stärker als Son Goku, der als erster gegen ihn kämpft, verliert aber dann zunehmend an Stärke, da das Aufrechterhalten seiner neuen Form an seinen Kräften zehrt. Son Goku sieht den Kampf schon gewonnen und achtet nicht mehr auf seine Deckung, weswegen einer von Freezers Männern ihn hinterrücks schwer verletzen kann.\n\nWährend Son Goku geheilt wird, kämpft Vegeta für ihn weiter. Da er den Moment, Freezer zu töten etwas herauszögert, um ihn gebührend zu genießen, hat Freezer die Gelegenheit, die Erde zu zerstören und alle seine Bewohner zu töten, außer den Zuschauern des Kampfes, die von Whis in ein Kraftfeld gehüllt wurden. Freezer selbst entkommt, da er im Weltall überleben kann.\n\nDa Whis aber die Fähigkeit hat, die Zeit drei Minuten zurückzudrehen, kann Son Goku Freezer dann doch noch töten, bevor dieser die Erde zerstört.\n\nUniversum-6-Saga\nEinige Zeit später wird Beerus’ Zwillingsbruder Champa aus dem benachbarten sechsten Zwillingsuniversum bei einem Besuch bei Beerus auf das köstliche irdische Essen aufmerksam. Da die Erde in seinem Universum ein unbewohnter Planet ist, will er die Erde aus Beerus’ siebtem Universum in sein Universum überführen. Er schlägt Beerus einen Wettkampf vor, bei dem jeweils fünf Repräsentanten des sechsten und siebten Universums um die Erde kämpfen sollen. Falls Beerus’ Team gewinnen sollte, will Champa Beerus sechs der sieben planetengroßen Super-Dragonballs, die absolut jeden Wunsch erfüllen können, überlassen. Beerus willigt in das Turnier ein.\n\nFür das sechste Universum und Champa treten der bärenähnliche Botamo, Freezers Doppelgänger Frost, der Metallmann Magetta, der junge Saiyajin Cabba und der Auftragskiller Hit an. Für das siebte Universum und Beerus treten Son Goku, Piccolo, Vegeta und Monaka an, von dem Beerus behauptet, er wäre der stärkste Kämpfer, gegen den er jemals gekämpft hat. Da Boo, der ebenfalls hätte antreten sollen, den Vorrundentest nicht besteht, tritt das Team von Beerus dezimiert an.\n\nSon Goku gewinnt den ersten Kampf gegen Botamo, verliert aber dann gegen Frost. Nachdem dieser auch Piccolo besiegt hat, stellt sich heraus, dass er eine unerlaubte Körperwaffe eingesetzt hat und wird daher zunächst disqualifiziert. Auf Vegetas Drängen hin tritt Piccolo von dem Turnier zurück und Frosts Disqualifikation wird aufgehoben, damit Vegeta den Betrüger in einem Kampf besiegen kann, was ihm auch mit Leichtigkeit gelingt. Auch die Kämpfe gegen Magetta und Cabba kann Vegeta gewinnen. Dem jungen Saiyajin Cabba bringt er zuvor aber noch bei, wie man sich in einen Super-Saiyajin verwandelt.\n\nDurch eine mysteriöse Technik gelingt es dann Hit, Vegeta mit Leichtigkeit zu bezwingen, woraufhin Son Goku, dessen Niederlage wegen Frosts Betrug zurückgenommen wurde, gegen diesen antritt. Mit Jacos Hilfe gelingt es Son Goku, zu erkennen, dass Hit die Zeit für 0,1 Sekunden anhalten kann. Diesen Zeitstillstand kann Hit im Verlauf des Kampfes sogar noch weiter steigern. Erst mit seiner neuesten Technik – der zehnfachen Kaioken in der Super-Saiyajin-Gott-Form – kann Son Goku Hit in die Enge treiben. Als er dann aber merkt, wie die Technik seinem Körper zusetzt und der Attentäter Hit nicht seine wahre Kraft entfalten kann, da er seinen Gegner nicht töten darf, gibt Son Goku auf.\n\nAls letzter Kämpfer tritt Monaka zitternd in den Ring, der entgegen Beerus Aussage sehr schwach ist und von diesem nur benutzt wurde, um Son Goku und Vegeta zu motivieren. Hit lässt sich aber kurzerhand besiegen, da er Son-Goku für seine Kraftsteigerung danken möchte. Somit ist Beerus und das siebte Universum Sieger des Turniers. Mit seinen gewonnenen Super-Dragonballs wünscht sich Beerus, dass die Erde des sechsten Universums wieder bewohnt ist, sodass Champa doch noch an sein ersehntes irdisches Essen kommt.\n\nAngetan von dem Turnier verkündet Zeno, der König von Allem, ebenfalls ein Turnier zu veranstalten, an dem nun alle zwölf Universen teilnehmen sollen.\nEinige Zeit später verschlägt es Vegeta auf den Planeten Potaufeu. Dort ist gerade das lange Zeit versiegelte Übermenschliche Wasser freigesetzt worden. Dieses Wasser kann sich in exakte Kopien von Kämpfern verwandeln, und raubt diesen dabei all ihre Kräfte und Fähigkeiten. Kämpfer, von denen so eine Kopie angefertigt wurde, lösen sich nach kurzer Zeit in Nichts auf. Als das Wasser Vegeta kopiert muss Son Goku zu seiner Rettung eilen und die Kopie töten, bevor sich dieser auflöst.\n\n\nZukunfts-Trunks-Saga\nDer Trunks aus der alternativen Zukunft, in der Son-Goku an einem Herzleiden gestorben ist, und C17 und C18 die Welt terrorisiert haben, reist erneut in die Gegenwart, um um Hilfe zu bitten. Diesmal sieht er sich einem Gegner names Goku Black entgegengestellt, der mysteriöserweise wie Son-Goku aussieht. Son-Goku und Vegeta reisen mit Trunks in die Zukunft, um sich dieser Bedrohung zu stellen. Es stellt sich heraus, dass es sich bei Goku Black um den Gott Zamasu handelt, der alle Sterblichen vernichten will. Um dies zu erreichen, hat er sich mit den Super Dragon Balls gewünscht, von Son-Gokus Körper Besitz zu ergreifen, und ist dann in die Alternative Zeitlinie von Trunks gewechselt, wo er sich mit seinem Alternativen Ich verbündet hat. Dieser hat sich wiederum mit den Super Dragon Balls Unsterblichkeit gewünscht.\n\nNach einem erbitterten Kampf gegen Goku Black und Zamasu, in dem die beiden Bösewichte schließlich fusionieren, wird den Helden klar, dass sie diesem Gegner nicht gewachsen sind. Kurzerhand ruft Son-Goku Zeno herbei, der Zamasu kurzerhand vernichtet – zusammen mit dem gesamten Universum in Trunks Alternativer Zeitlinie. Son-Goku und die anderen können in letzter Sekunde mit ihrer Zeitmaschine entkommen. Anschließend reisen sie noch einmal in diese Zukunft, um Zeno in ihre Zeitlinie mitzunehmen, wo er seitdem die Zeit mit seinem alternativen Ich verbringt.\n\n\nUniversums-Turnier-Saga\nDas von Zeno angekündigte Turnier soll nun stattfinden. Im Vorturnier kämpfen Universum 7 gegen Universum 9 mit jeweils drei verschiedenen Kämpfern. Universum 9 tritt mit Basil, Bergamo und Lavender an, alle drei wolfsähnliche Kreaturen. Für Universum 7 kämpfen Son Gohan, Son Goku und Boo. An Boos Seite steht Mister Satan, da Boo nur das macht, was er ihm sagt. Den ersten Kampf gewinnt Boo knapp. Der zweite Kampf, in welchem Son-Gohan an den Start geht, endet in einem Unentschieden. Schlussendlich kann Son-Goku den dritten Kampf und somit das Vorturnier gewinnen. Der Hohepriester enthüllt, dass bei dem richtigen Turnier nicht alle Universen teilnehmen werden, sondern nur die mit einem zu geringen Entwicklungslevel. Das Universum, welches das Turnier gewinnt, soll erhalten bleiben, während alle anderen von König Zeno ausgelöscht werden sollen. Universen 1, 5, 8 und 12 müssen nicht teilnehmen, da ihr Entwicklungslevel hoch genug ist. Universum 9 hat das niedrigste Entwicklungslevel, Universum 7, in welchem Son-Goku lebt, das zweitniedrigste.\n\nNun müssen Son-Goku und seine Freunde 10 Kämpfer von Universum 7 bestimmen, um mit diesen am Turnier anzutreten. Fest von Anfang an stehen Son Goku, Boo und Son Gohan. Son-Goku erzählt Son-Gohan davon, dass die verlierenden Universen ausgelöscht werden sollen. Gohan meint daraufhin, dass niemand davon erfahren soll, da ansonsten Panik ausbrechen könnte. Der erste Kämpfer, neben den dreien die im Schaukampf vertreten waren, soll natürlich Vegeta sein. Dieser will allerdings nicht am Turnier teilnehmen, da er bei der Geburt seines zweiten Kindes dabei sein will, welche kurz bevorsteht. Whis löst das Problem kurzerhand, indem er das Baby, welches später den Namen Bra erhält, mit Magie aus Bulma herausholt. Als weitere Kämpfer für das Turnier wählen Son Goku und Son Gohan vorerst Piccolo, Krillin, C 18, C 17, Tenshinhan und Muten Roshi aus, jedoch wollen einige davon nicht mitmachen. Son-Goku überredet seine Freunde, indem er ihnen erzählt, dass die Kämpfer des Gewinnerteams 10 Millionen Zeni erhalten, was jedoch nicht der Wahrheit entspricht. Abgesehen von C 17 erzählt er auch keinem von der drohenden Auslöschung des Universums. Die meisten vermuten zwar, dass Son-Goku ihnen etwas vorenthält, willigen aber dennoch aufgrund des ihnen winkenden Preisgelds ein. Kurz vor dem Start des Turniers erfährt Son-Goku, dass Boo eingeschlafen ist und nicht mehr wachzukriegen sei. Selbst Goku kann Boo nicht aufwecken, weshalb er gezwungen ist nach einem weiteren Kämpfer zu suchen. Daraufhin begibt sich Goku ins Jenseits, um Freezer darum zu bitten, beim Turnier mitzukämpfen. Freezer willigt unter der Bedingung ein, dass, wenn sie tatsächlich gewinnen sollten, er wieder zum Leben erweckt wird. Uranai Baba holt daraufhin Freezer ins Diesseits zurück, in welchem er als Toter bis zu 24 Stunden verbleiben kann. In der Zwischenzeit haben Gokus Freunde herausgefunden, worum es bei dem Turnier in Wirklichkeit geht. Krillin und C 18 wollen aussteigen, aber da Beerus ihnen mit der sofortigen Vernichtung droht, bleiben sie im Team. Somit besteht das fertige Team aus Son-Goku, Son-Gohan, Vegeta, Piccolo, C 17, C 18, Krillin, Muten Roshi, Tenshinhan und Freezer.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 19,
      title: 'Dragon Ball Daima',
      genre: 'Anime, Shōnen, Action, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallDaima.png',
      description:
          'Im Zentrum der Geschichte steht ein unerwartetes Ereignis, das dazu führt, dass die Hauptfiguren der Serie, darunter Son-Goku, Vegeta, Bulma, Piccolo und andere bekannte Charaktere, auf mysteriöse Weise in kindliche Versionen ihrer selbst verwandelt werden.\n\nDieses Ereignis wird von einer unbekannten, neuen Bedrohung ausgelöst, die in irgendeiner Weise die Dragon Balls manipuliert hat, um diese Verwandlung herbeizuführen. Die Charaktere müssen nicht nur herausfinden, wer hinter dieser Bedrohung steckt, sondern auch einen Weg finden, um ihre normale Größe und Kraft wiederzuerlangen. Trotz ihrer neuen Gestalt sind Son Goku und seine Freunde weiterhin entschlossen, die Welt vor der neuen Gefahr zu schützen, die möglicherweise weit über die bekannten Dimensionen des Dragon-Ball-Universums hinausgeht.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
    BroadcastAttribute(
      id: 20,
      title: 'Monster Mädchen',
      genre: 'Anime, Fantasy, Harem, Etchi, Comedy',
      imagePath: 'assets/images/broadcastImages/MonsterMaedchen.png',
      description:
          'Monster (auch Mischwesen genannt) sind real, doch ihre Existenz wurde bisher geheim gehalten. Nun versuchen sie, sich in die menschliche Kultur einzufügen. Zu diesem Zweck schuf die japanische Regierung ein Kulturaustauschprogramm, in dessen Verlauf die Monster bei bestimmten Gastfamilien unterkommen. Es müssen dabei aber folgende Regeln beachtet werden: Die Monster dürfen das Haus nicht alleine verlassen; Monster und Menschen dürfen sich gegenseitig keinen Schaden zufügen; und die Monster dürfen sich nicht auf sexuelle Beziehungen mit einem Menschen einlassen.\n\nDem jungen Studenten Kimihito wird eines Tages versehentlich eine Lamia namens Mia zugewiesen. Im Laufe der Handlung kommen aber noch mehr weibliche Monster zu ihm, wie eine Harpyie, eine Zentaurin, ein Schleimmädchen, eine Meerjungfrau, eine Arachne und eine Dullahan, die sich nach und nach alle in ihn verlieben. Nun hat er alle Hände voll zu tun, es seinen Hausgästen bei sich so bequem wie möglich zu machen, ihrer aller Gefühle ihm gegenüber zu berücksichtigen und sich den physischen Herausforderungen zu stellen, die eine Beziehung zwischen Menschen und Monstern so schwierig machen.\n',
      isFavorite: false,
      isMyAnime: false,
    ),
  ];

  List<BroadcastAttribute> broadcastData = [];

  Future<void> ensureInitialized() async {
    if (_isInitialized) return;

    _broadcastBox = Hive.box<BroadcastAttribute>(_boxName);

    // Direkt nach Login: DB (Hive Box) mit Initialdaten befüllen (nur wenn leer)
    await _add(_seedData);

    // Danach Provider-State aus der DB laden
    broadcastData = _broadcastBox.values.toList(growable: true);
    _isInitialized = true;
    notifyListeners();
  }

  Future<void> _add(List<BroadcastAttribute> data) async {
    if (_broadcastBox.isNotEmpty || data.isEmpty) {
      return;
    }

    for (final item in data) {
      await _broadcastBox.add(item.copyWith(isFavorite: false, isMyAnime: false));
    }
  }

  Future<void> _update(int index, BroadcastAttribute newData) async {
    // Update by position to match the provider list ordering
    await _broadcastBox.putAt(index, newData);
  }

  String searchQuery = '';

  Future<void> toggleFavorite(String title) async {
    await ensureInitialized();
    int index = -1;

    for (int i = 0; i < broadcastData.length; i++) {
      final e = broadcastData[i];
      if (e.title == title) {
        index = i;
        break;
      }
    }

    if (index == -1) return;

    final updated = broadcastData[index].copyWith(isFavorite: !broadcastData[index].isFavorite);
    broadcastData[index] = updated;
    await _update(index, updated);
    notifyListeners();
  }

  Future<void> toggleMyAnime(String title) async {
    await ensureInitialized();
    int index = -1;
    for (int i = 0; i < broadcastData.length; i++) {
      final e = broadcastData[i];
      if (e.title == title) {
        index = i;
        break;
      }
    }

    if (index == -1) return;

    final updated = broadcastData[index].copyWith(isMyAnime: !broadcastData[index].isMyAnime);
    broadcastData[index] = updated;
    await _update(index, updated);
    notifyListeners();
  }

  void filterList(String query) {
    searchQuery = query.toLowerCase();
    notifyListeners();
  }

  List<BroadcastAttribute> getAllAnime() {
    if (searchQuery.isEmpty) {
      return broadcastData;
    } else {
      return broadcastData.where((e) => e.title.toLowerCase().contains(searchQuery)).toList();
    }
  }

  List<BroadcastAttribute> getAllFavoritesWithSearchQuery() {
    if (searchQuery.isEmpty) {
      return broadcastData.where((e) => e.isFavorite).toList();
    } else {
      return broadcastData.where((e) => e.isFavorite && e.title.toLowerCase().contains(searchQuery)).toList();
    }
  }

  List<BroadcastAttribute> getAllMyAnimeWithSearchQuery() {
    if (searchQuery.isEmpty) {
      return broadcastData.where((e) => e.isMyAnime).toList();
    } else {
      return broadcastData.where((e) => e.isMyAnime && e.title.toLowerCase().contains(searchQuery)).toList();
    }
  }
}
