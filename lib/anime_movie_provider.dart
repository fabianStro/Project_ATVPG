import 'package:flutter/material.dart';
import 'package:flutter_application_one/broadcastAttribute.dart';
// import 'dart:io';

class AnimeMovieProvider extends ChangeNotifier {
  final List<BroadcastAttribute> broadcastData = [
    BroadcastAttribute(
      title: 'Highschool DxD',
      subtitle: 'Genre: Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_logo.png',
      description:
          'High School DxD ist eine japanische Light-Novel-Reihe, die als Anime und Manga adaptiert wurde und die Geschichte von Issei Hyoudou erzählt, einem Oberschüler, der nach seinem Tod als Dämon wiederbelebt wird, um einem mächtigen Dämonenclan zu dienen. Er muss an seiner neuen Schule, der einstigen Mädchenschule Kuoh Academy, mit den anderen Mitgliedern des Okkulten Forschungsclubs – die selbst Dämonen sind – klarkommen, während er sich auf Kämpfe zwischen Engeln, Dämonen und gefallenen Engeln einlässt. Die Serie ist bekannt für ihre Mischung aus Comedy, Action und Ecchi-Elementen.',
    ),
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
    BroadcastAttribute(
      title: 'Highschool DXD Hero',
      subtitle: 'Genre: Anime, Comedy, Ecchi, Harem',
      imagePath: 'assets/images/broadcastImages/Highschool_dxd_hero_logo.png',
      description:
          'High School DxD ist eine japanische Light-Novel-Reihe, die als Anime und Manga adaptiert wurde und die Geschichte von Issei Hyoudou erzählt, einem Oberschüler, der nach seinem Tod als Dämon wiederbelebt wird, um einem mächtigen Dämonenclan zu dienen. Er muss an seiner neuen Schule, der einstigen Mädchenschule Kuoh Academy, mit den anderen Mitgliedern des Okkulten Forschungsclubs – die selbst Dämonen sind – klarkommen, während er sich auf Kämpfe zwischen Engeln, Dämonen und gefallenen Engeln einlässt. Die Serie ist bekannt für ihre Mischung aus Comedy, Action und Ecchi-Elementen.',
    ),
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
    BroadcastAttribute(
      title: 'Akame Ga Kill',
      subtitle: 'Genre: Anime, Action, Adventure, Drama, Horror, Fantasy, Shōnen',
      imagePath: 'assets/images/broadcastImages/AkameGaKill_logo.png',
      description:
          'Akame ga Kill! ist eine düstere Fantasy-Anime-Serie, die sich um eine Gruppe von Attentätern namens Night Raid dreht, die das korrupte Kaiserreich stürzen wollen. Der junge Held Tatsumi schließt sich ihnen an, nachdem er die Grausamkeit des Regimes am eigenen Leib erfahren hat. Die Serie ist bekannt für ihre extreme Gewalt und den Tod zahlreicher Charaktere, die Teil der Geschichte sind. Handlung: Tatsumi verlässt sein Dorf, um als Held dem Kaiserreich zu dienen, muss aber schnell erkennen, dass die Realität weitaus grausamer ist, als er dachte. Nach dem Tod seiner Freunde wird er von der Rebellenorganisation Night Raid gerettet und schließt sich ihr an, um das unterdrückende Regime zu bekämpfen.',
    ),
    BroadcastAttribute(
      title: 'Konosuba',
      subtitle: 'Genre: Anime, Comedy, Fantasy, Etchi',
      imagePath: 'assets/images/broadcastImages/KonoSuba_logo.png',
      description:
          'Konosuba ist eine japanische Anime- und Manga-Serie, die die Geschichte des unglücklichen Teenagers Kazuma Satou erzählt, der nach seinem Tod in eine Fantasiewelt geschickt wird. Dort gründet er mit der nutzlosen Göttin Aqua, der explosionsbesessenen Magierin Megumin und der masochistischen Kreuzritterin Darkness eine dysfunktionale Abenteurergruppe, um den Dämonenkönig zu besiegen. Die Serie ist eine Comedy-Fantasy, die für ihren humorvollen Umgang mit dem Isekai-Genre bekannt ist. Grundhandlung: Nach einem peinlichen Tod in seiner Welt wird Kazuma von der Göttin Aqua in eine Fantasiewelt geschickt. Sie gibt ihm die Wahl zwischen Himmel oder einer Wiedergeburt in einer Fantasy-Welt und erlaubt ihm, eine mächtige Fähigkeit oder Waffe mitzunehmen.',
    ),
    BroadcastAttribute(
      title: 'Call of the Night',
      subtitle: 'Anime, Romance, Comedy',
      imagePath: 'assets/images/broadcastImages/CallOfTheNight_logo.png',
      description:
          'Call of the Night (jap. Yofukashi no Uta) ist eine Manga-Serie und Anime-Serie über den schlaflosen Schüler Kou Yamori, der nachts durch die Stadt streift und die mysteriöse Vampirin Nazuna Nanakusa trifft. Aus Faszination bittet Kou sie, ihn in einen Vampir zu verwandeln, was aber nur möglich ist, wenn er sich in sie verliebt.',
    ),
    BroadcastAttribute(
      title: 'Cautious Hero: The Hero is Overpowered but Overly Cautious',
      subtitle: 'Genre: Anime, Isekai, Fantasy, Comedy, Action',
      imagePath: 'assets/images/broadcastImages/Shinchou_Yuusha_logo.png',
      description:
          'Cautious Hero ist eine Anime-Serie, in der die Göttin Ristarte den übermächtigen, aber extrem vorsichtigen Helden Seiya Ryuuguuin beschwört, um die S-Klasse-Welt Gaeabrande zu retten. Seiya ist übertrieben vorsichtig und bereitet sich übertrieben auf jeden noch so kleinen Kampf vor, indem er beispielsweise dreimal Rüstung kauft, unendlich viel trainiert und selbst gegen Schleime mit voller Kraft kämpft. Die Serie ist eine Komödie, die das Isekai-Genre persifliert.',
    ),
    BroadcastAttribute(
      title: 'Jujutsu Kaisen',
      subtitle: 'Genre: Anime, Abenteuer, Fantasy',
      imagePath: 'assets/images/broadcastImages/JujutsuKaisen.png',
      description:
          'An seiner Oberschule in Sendai meidet Yuji Itadori den Leichtathletik-Klub und geht lieber in den Okkultismus-Klub. Denn dort kann der eigentlich sportliche Schüler sich mit den beiden anderen Mitgliedern Sasaki und Iguchi entspannen und früh die Schule verlassen, um seinen kranken Großvater zu besuchen. Als dieser bald darauf stirbt, gibt er seinem Enkel noch auf, allen Menschen zu helfen und nicht allein zu sterben. Daraufhin wird Yuji von Megumi Fushiguro, Schüler der städtischen Jujutsu-Akademie, aufgesucht. Der ist auf der Suche nach einem Finger, auf dem ein Fluch liegt. Doch Sasaki und Iguchi haben das Amulett aus seinem Aufbewahrungskasten genommen und das Siegel des Fluchs gebrochen. Im Innern des Amuletts liegt ein verdorrter Finger, dessen Magie Flüche an die Schule lockt und die beiden Schüler in Gefahr bringt. Megumi versucht ihnen zu helfen, kommt gegen die Flüche jedoch nicht an. Schließlich schluckt Yuji den Finger herunter, um dessen Macht zu erwerben, und kann seine Freunde retten. Doch nun versucht der Fluch von ihm Besitz zu ergreifen und Megumis Lehrer Satoru Gojo will den Fluch austreiben und Yuji dabei töten. Glücklicherweise kann der Schüler den Fluch in sich beherrschen und erhält so vom Lehrer und der Jujutsu-Akademie noch eine Gnadenfrist.',
    ),
    BroadcastAttribute(
      title: "Hell's Paradise",
      subtitle: 'Genre: Anime, Shōnen, Fantasy, Action',
      imagePath: 'assets/images/broadcastImages/HellsParadise.png',
      description:
          'Der junge Ninja Gabimaru (画眉丸) aus dem Dorf Iwagakure gehört zu den Besten seiner Zunft. Doch nachdem er mit der Tochter des Clanchefs verheiratet wurde, will er das Töten aufgeben. Bei der nächsten Mission wird er verraten und zum Tode verurteilt. Trotz seiner Beteuerungen, selbst sterben zu wollen, wird jeder Hinrichtungsversuch durch seine Ninja-Techniken vereitelt. Die Scharfrichterin Sagiri Yamada Asaemon (山田浅ェ門佐切) findet schließlich heraus, dass es die Liebe zu seiner Frau ist, die Gabimaru in dieser Welt hält. Sie schlägt ihm eine neue Mission vor, um sich eine Begnadigung zu verdienen: südlich Japans wurde die Insel Shinsenkyo entdeckt, auf der es das Elixier des ewigen Lebens geben soll. Der Shogun will dieses für sich und schickte bereits fünf Expeditionen, doch keine kehrte zurück. Wenn Gabimaru das Elixier zum Shogun bringen kann, wird sein Leben verschont. So wird der Ninja zusammen mit Sagiri als seiner Bewacherin nach Shinsenkyo geschickt. Doch ist er nicht der einzige Todgeweihte, der auf den Handel eingegangen ist. Neun weitere sind mit ihren Bewachern gesandt worden und werden nun – neben den Gefahren des Fremden Landes – zu Konkurrenten um das Elixier.',
    ),
    BroadcastAttribute(
      title: "Dragon Ball",
      subtitle: 'Genre: Anime, Shōnen, Action, Kampfkunst, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBall.png',
      description:
          'Bis auf einige „Filler-Episoden“ (Füllepisoden) orientiert sich die Handlung weitestgehend an der Originalgeschichte des Mangas. Die 153 Episoden werden üblicherweise in drei Sagas aufgeteilt: Pilaw-Saga (Episoden 1–32): Die ersten Episoden thematisieren den Wettstreit mit Prinz Pilaw um die Dragon Balls. Red-Ribbon-Saga (Episoden 33–99): In diesem Abschnitt der Geschichte bekämpft Son Goku die Red-Ribbon-Armee. In einigen Episoden haben Charaktere aus der ebenfalls von Toriyama stammenden Anime-Serie Dr. Slump einen Cameo-Auftritt. Piccolo-Saga (Episoden 100–153): Die Piccolo-Saga behandelt die Geschichte ab dem Auftauchen des Oberteufels Piccolo bis zum Finale des 23. Tenkaichi Budokai.',
    ),
    BroadcastAttribute(
      title: "Dragon Ball Z",
      subtitle: 'Genre: Anime, Shōnen, Action, Kampfkunst, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallZ.png',
      description:
          'Chronologisch umfasst Dragon Ball Z die Zeit von der Kindheit von Son-Gokus Sohn Son-Gohan bis zur Kindheit von Son-Gohans Tochter Pan. Die Serie besteht nach Studio Toei offiziell aus vier „Sagas“: Saiyajin-Saga (Folgen 1–35), Freezer-Saga (Folgen 36–125), Cell-Saga (Folgen 126–199), Boo-Saga (Folgen 200–291), Grundlage der Handlung ist die Abwehr von übermächtig stark scheinenden Angreifern, die entweder nach Vorherrschaft streben oder Rache für früher erlittene Niederlagen suchen. Diesen Angreifern stellt sich eine Gruppe von Kämpfern (die sich Z-Krieger nennen) um Son-Goku entgegen, um sie an der Durchführung ihrer Pläne zu hindern. Dragon Ball Z besteht aus der Darstellung dieser Kämpfe, aufgelockert durch humorvolle Begebenheiten und Sprüche. Die Kämpfe, ihre Auswirkungen und die Kampfkraft der Teilnehmer steigern sich mit Fortführung der Serie zu immer neuen Superlativen.Kennzeichnend für die Serie ist eine fast surreale Dehnung von dramatischen Situationen durch lange Schnittfolgen und Dialoge. Ebenfalls typisch ist das häufige Wechseln der Handlung und einiger Charaktere zwischen Diesseits und Jenseits, was auf die zugrundeliegenden fernöstlichen Denkweisen und Erzähltraditionen hinweist.',
    ),
    BroadcastAttribute(
      title: "Dragon Ball Z Kai",
      subtitle: 'Genre: Anime, Shōnen, Action, Kampfkunst, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallZKai.png',
      description:
          'Eine japanische, hochaufgelöste Fassung wurde vom 5. April 2009 bis 27. März 2011 auf Fuji TV sowie mit Versatz zwei Dutzend weiteren Sendern ausgestrahlt, die digital überarbeitetes Videomaterial sowie eine neue Synchronfassung erhält, die zum 20-jährigen Jubiläum der Serie aufgenommen wurde. Regie führte Yasuhiro Nowatari. Dabei wurde die Serie in mehreren Aspekten überarbeitet und folgt nun unter dem Namen Dragon Ball Kai der Handlung des Mangas genau. Sie wird im Gegensatz zu Dragon Ball Z nicht durch sogenannte „Filler“-Episoden unterbrochen, die in der Originalausstrahlung zur Streckung des Inhalts eingefügt wurden, wann immer die Handlung des Animes der des parallel in der Weekly Shōnen Jump veröffentlichten Mangas aufschloss. In einigen Ländern heißt die Neuauflage Dragon Ball Z Kai, u. a. in Deutschland und den Vereinigten Staaten. Die Handlung der Neufassung beginnt mit Inhalten aus dem Fernsehspecial, das in Deutschland auf DVD unter dem Titel Das Bardock Special erschien. Es zeigt die Vorgeschichte um die Vernichtung der Saiyajin durch Freezer und enthält zur Einleitung auch Footages aus der ersten Fernsehserie, ehe die eigentliche Handlung zum gleichen Zeitpunkt wie im Original einsetzt. Insgesamt sollte Dragon Ball Kai 98 Folgen beinhalten und mit der Cell-Saga enden, jedoch wurde am 27. März 2011 die 98. Episode, die direkt nach der 97. gesendet hätte werden sollen, aufgrund der schweren Erdbeben in Japan nicht gesendet. Zwar wurde bis heute die Dragon Ball Kai Folge 98 (Mirai ni Heiwa o! Gokū no Tamashī yo Eien ni) nicht im Japanischen Fernsehen ausgestrahlt, jedoch ist diese auf den erschienenen, japanischen Blu-rays und DVDs enthalten. Im Mai gab Kazé bekannt, die erste Staffel von Dragon Ball Z Kai lizenziert zu haben. Diese soll ab September 2015, aufgeteilt in sechs Boxen, im 2-Monats-Rhythmus erscheinen. Die erste Box wurde am 9. Oktober 2015 veröffentlicht. Die Serie erhielt dafür eine eigenständige, neue Synchronfassung.',
    ),
    BroadcastAttribute(
      title: "Dragon Ball GT",
      subtitle: 'Genre: Anime, Shōnen, Action, Kampfkunst, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallGT.png',
      description:
          'Dragon Ball GT beginnt fünf Jahre nach dem Ende der Handlung des Originalmangas und der Umsetzung als Animeserie. Die hauptsächlich auf Kämpfen und einzelnen Abenteuern basierende Handlung lässt sich dabei in verschiedene Abschnitte – sogenannte Sagas – unterteilen, die sowohl auf vorhergehende Ereignisse der Originalhandlung eingehen, aber auch sukzessiv aufeinander aufbauen, einander bedingen und zu einem Finale führen.',
    ),
    BroadcastAttribute(
      title: "Dragon Ball Super",
      subtitle: 'Genre: Anime, Shōnen, Action, Kampfkunst, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallSuper.png',
      description:
          'Kampf-der-Götter-Saga: Vier Jahre nachdem Son Goku und seine Freunde Boo besiegt haben, 778 nach der Zeitrechnung von Dragon Ball, erwacht Beerus, der Gott der Zerstörung, aus einem jahrzehntelangen Schlaf. In seinen Träumen hatte er eine Vision von einem Super-Saiyajin-Gott, welcher ein ihm ebenbürtiger Gegner sein soll. Einst existierte schon ein Super-Saiyajin-Gott mit dem Namen Yamoshi der die Bösen Saiyajin bekämpfen wollte. Er scheiterte jedoch. Gemeinsam mit seinem Lehrmeister Whis macht er sich auf die Suche nach diesem Super-Saiyajin-Gott und spürt schließlich die letzten verbliebenen Saiyajins Vegeta und Son Goku auf. Dabei landet er zufällig auf Bulmas Geburtstagsfeier.Enttäuscht, dass Son Goku und Vegeta nichts von dem Super-Saiyajin-Gott wissen, nimmt er an der Geburtstagsfeier teil und genießt zusammen mit Whis die köstlichen Speisen des Planeten Erde. Als Boo ihn erzürnt, schwört er dann jedoch, die Erde zu zerstören. Son Goku stellt sich ihm und schafft es schließlich ihn aufzuhalten, indem er sich selbst kurzzeitig in einen Super-Saiyajin-Gott verwandelt. Von dem Kampf erschöpft kehrt Beerus auf seinen Heimatplaneten zurück.Whis, der vom irdischen Essen begeistert ist, besucht jedoch fortan regelmäßig Bulma, die ihn mit den erlesensten Speisen verköstigt, damit er sie und ihre Familie gegebenenfalls vor Beerus beschützen würde. Bei einem dieser Besuche überredet Vegeta Whis schließlich, ihn unter seine Fittiche zu nehmen, und ihn auf Beerus’ Heimatplaneten zu trainieren.Goldener-Freezer-Saga: Etwa ein Jahr später, 779, – inzwischen ist Son Gohans und Videls Tochter Pan auf die Welt gekommen – nimmt Whis auch Son Goku mit, um ihn zu trainieren. Währenddessen wird Freezer von seinen Gefolgsleuten wiederbelebt und trainiert für seine Rache.Nach vier Monaten Training kommt Freezer mit einer 1000 Mann starken Armee auf der Erde an. Piccolo, Son Gohan, Tenshinhan, Krillin, der Herr der Schildkröten und der Weltraumpolizist Jaco – der sie vor Freezers Ankunft gewarnt hat – schaffen es, Freezer und dessen Armee solange aufzuhalten, bis Vegeta, Son Goku, Beerus und Whis auf die Erde zurückkehren.In seinem Training hat Freezer eine neue Transformationsstufe erreicht: Den „goldenen Freezer“. Demgegenüber stehen Vegeta und Son Goku, die sich nach ihrem Training mit Whis in einen Super-Saiyajin mit Gotteskraft verwandeln können. Freezer ist zunächst stärker als Son Goku, der als erster gegen ihn kämpft, verliert aber dann zunehmend an Stärke, da das Aufrechterhalten seiner neuen Form an seinen Kräften zehrt. Son Goku sieht den Kampf schon gewonnen und achtet nicht mehr auf seine Deckung, weswegen einer von Freezers Männern ihn hinterrücks schwer verletzen kann.Während Son Goku geheilt wird, kämpft Vegeta für ihn weiter. Da er den Moment, Freezer zu töten etwas herauszögert, um ihn gebührend zu genießen, hat Freezer die Gelegenheit, die Erde zu zerstören und alle seine Bewohner zu töten, außer den Zuschauern des Kampfes, die von Whis in ein Kraftfeld gehüllt wurden. Freezer selbst entkommt, da er im Weltall überleben kann.Da Whis aber die Fähigkeit hat, die Zeit drei Minuten zurückzudrehen, kann Son Goku Freezer dann doch noch töten, bevor dieser die Erde zerstört. Universum-6-Saga: Einige Zeit später wird Beerus’ Zwillingsbruder Champa aus dem benachbarten sechsten Zwillingsuniversum bei einem Besuch bei Beerus auf das köstliche irdische Essen aufmerksam. Da die Erde in seinem Universum ein unbewohnter Planet ist, will er die Erde aus Beerus’ siebtem Universum in sein Universum überführen. Er schlägt Beerus einen Wettkampf vor, bei dem jeweils fünf Repräsentanten des sechsten und siebten Universums um die Erde kämpfen sollen. Falls Beerus’ Team gewinnen sollte, will Champa Beerus sechs der sieben planetengroßen Super-Dragonballs, die absolut jeden Wunsch erfüllen können, überlassen. Beerus willigt in das Turnier ein.Für das sechste Universum und Champa treten der bärenähnliche Botamo, Freezers Doppelgänger Frost, der Metallmann Magetta, der junge Saiyajin Cabba und der Auftragskiller Hit an. Für das siebte Universum und Beerus treten Son Goku, Piccolo, Vegeta und Monaka an, von dem Beerus behauptet, er wäre der stärkste Kämpfer, gegen den er jemals gekämpft hat. Da Boo, der ebenfalls hätte antreten sollen, den Vorrundentest nicht besteht, tritt das Team von Beerus dezimiert an.Son Goku gewinnt den ersten Kampf gegen Botamo, verliert aber dann gegen Frost. Nachdem dieser auch Piccolo besiegt hat, stellt sich heraus, dass er eine unerlaubte Körperwaffe eingesetzt hat und wird daher zunächst disqualifiziert. Auf Vegetas Drängen hin tritt Piccolo von dem Turnier zurück und Frosts Disqualifikation wird aufgehoben, damit Vegeta den Betrüger in einem Kampf besiegen kann, was ihm auch mit Leichtigkeit gelingt. Auch die Kämpfe gegen Magetta und Cabba kann Vegeta gewinnen. Dem jungen Saiyajin Cabba bringt er zuvor aber noch bei, wie man sich in einen Super-Saiyajin verwandelt.Durch eine mysteriöse Technik gelingt es dann Hit, Vegeta mit Leichtigkeit zu bezwingen, woraufhin Son Goku, dessen Niederlage wegen Frosts Betrug zurückgenommen wurde, gegen diesen antritt. Mit Jacos Hilfe gelingt es Son Goku, zu erkennen, dass Hit die Zeit für 0,1 Sekunden anhalten kann. Diesen Zeitstillstand kann Hit im Verlauf des Kampfes sogar noch weiter steigern. Erst mit seiner neuesten Technik – der zehnfachen Kaioken in der Super-Saiyajin-Gott-Form – kann Son Goku Hit in die Enge treiben. Als er dann aber merkt, wie die Technik seinem Körper zusetzt und der Attentäter Hit nicht seine wahre Kraft entfalten kann, da er seinen Gegner nicht töten darf, gibt Son Goku auf.Als letzter Kämpfer tritt Monaka zitternd in den Ring, der entgegen Beerus Aussage sehr schwach ist und von diesem nur benutzt wurde, um Son Goku und Vegeta zu motivieren. Hit lässt sich aber kurzerhand besiegen, da er Son-Goku für seine Kraftsteigerung danken möchte. Somit ist Beerus und das siebte Universum Sieger des Turniers. Mit seinen gewonnenen Super-Dragonballs wünscht sich Beerus, dass die Erde des sechsten Universums wieder bewohnt ist, sodass Champa doch noch an sein ersehntes irdisches Essen kommt.Angetan von dem Turnier verkündet Zeno, der König von Allem, ebenfalls ein Turnier zu veranstalten, an dem nun alle zwölf Universen teilnehmen sollen.Einige Zeit später verschlägt es Vegeta auf den Planeten Potaufeu. Dort ist gerade das lange Zeit versiegelte Übermenschliche Wasser freigesetzt worden. Dieses Wasser kann sich in exakte Kopien von Kämpfern verwandeln, und raubt diesen dabei all ihre Kräfte und Fähigkeiten. Kämpfer, von denen so eine Kopie angefertigt wurde, lösen sich nach kurzer Zeit in Nichts auf. Als das Wasser Vegeta kopiert muss Son Goku zu seiner Rettung eilen und die Kopie töten, bevor sich dieser auflöst. Zukunfts-Trunks-Saga: Der Trunks aus der alternativen Zukunft, in der Son-Goku an einem Herzleiden gestorben ist, und C17 und C18 die Welt terrorisiert haben, reist erneut in die Gegenwart, um um Hilfe zu bitten. Diesmal sieht er sich einem Gegner names Goku Black entgegengestellt, der mysteriöserweise wie Son-Goku aussieht. Son-Goku und Vegeta reisen mit Trunks in die Zukunft, um sich dieser Bedrohung zu stellen. Es stellt sich heraus, dass es sich bei Goku Black um den Gott Zamasu handelt, der alle Sterblichen vernichten will. Um dies zu erreichen, hat er sich mit den Super Dragon Balls gewünscht, von Son-Gokus Körper Besitz zu ergreifen, und ist dann in die Alternative Zeitlinie von Trunks gewechselt, wo er sich mit seinem Alternativen Ich verbündet hat. Dieser hat sich wiederum mit den Super Dragon Balls Unsterblichkeit gewünscht.Nach einem erbitterten Kampf gegen Goku Black und Zamasu, in dem die beiden Bösewichte schließlich fusionieren, wird den Helden klar, dass sie diesem Gegner nicht gewachsen sind. Kurzerhand ruft Son-Goku Zeno herbei, der Zamasu kurzerhand vernichtet – zusammen mit dem gesamten Universum in Trunks Alternativer Zeitlinie. Son-Goku und die anderen können in letzter Sekunde mit ihrer Zeitmaschine entkommen. Anschließend reisen sie noch einmal in diese Zukunft, um Zeno in ihre Zeitlinie mitzunehmen, wo er seitdem die Zeit mit seinem alternativen Ich verbringt.Universums-Turnier-Saga: Das von Zeno angekündigte Turnier soll nun stattfinden. Im Vorturnier kämpfen Universum 7 gegen Universum 9 mit jeweils drei verschiedenen Kämpfern. Universum 9 tritt mit Basil, Bergamo und Lavender an, alle drei wolfsähnliche Kreaturen. Für Universum 7 kämpfen Son Gohan, Son Goku und Boo. An Boos Seite steht Mister Satan, da Boo nur das macht, was er ihm sagt. Den ersten Kampf gewinnt Boo knapp. Der zweite Kampf, in welchem Son-Gohan an den Start geht, endet in einem Unentschieden. Schlussendlich kann Son-Goku den dritten Kampf und somit das Vorturnier gewinnen. Der Hohepriester enthüllt, dass bei dem richtigen Turnier nicht alle Universen teilnehmen werden, sondern nur die mit einem zu geringen Entwicklungslevel. Das Universum, welches das Turnier gewinnt, soll erhalten bleiben, während alle anderen von König Zeno ausgelöscht werden sollen. Universen 1, 5, 8 und 12 müssen nicht teilnehmen, da ihr Entwicklungslevel hoch genug ist. Universum 9 hat das niedrigste Entwicklungslevel, Universum 7, in welchem Son-Goku lebt, das zweitniedrigste.Nun müssen Son-Goku und seine Freunde 10 Kämpfer von Universum 7 bestimmen, um mit diesen am Turnier anzutreten. Fest von Anfang an stehen Son Goku, Boo und Son Gohan. Son-Goku erzählt Son-Gohan davon, dass die verlierenden Universen ausgelöscht werden sollen. Gohan meint daraufhin, dass niemand davon erfahren soll, da ansonsten Panik ausbrechen könnte. Der erste Kämpfer, neben den dreien die im Schaukampf vertreten waren, soll natürlich Vegeta sein. Dieser will allerdings nicht am Turnier teilnehmen, da er bei der Geburt seines zweiten Kindes dabei sein will, welche kurz bevorsteht. Whis löst das Problem kurzerhand, indem er das Baby, welches später den Namen Bra erhält, mit Magie aus Bulma herausholt. Als weitere Kämpfer für das Turnier wählen Son Goku und Son Gohan vorerst Piccolo, Krillin, C 18, C 17, Tenshinhan und Muten Roshi aus, jedoch wollen einige davon nicht mitmachen. Son-Goku überredet seine Freunde, indem er ihnen erzählt, dass die Kämpfer des Gewinnerteams 10 Millionen Zeni erhalten, was jedoch nicht der Wahrheit entspricht. Abgesehen von C 17 erzählt er auch keinem von der drohenden Auslöschung des Universums. Die meisten vermuten zwar, dass Son-Goku ihnen etwas vorenthält, willigen aber dennoch aufgrund des ihnen winkenden Preisgelds ein. Kurz vor dem Start des Turniers erfährt Son-Goku, dass Boo eingeschlafen ist und nicht mehr wachzukriegen sei. Selbst Goku kann Boo nicht aufwecken, weshalb er gezwungen ist nach einem weiteren Kämpfer zu suchen. Daraufhin begibt sich Goku ins Jenseits, um Freezer darum zu bitten, beim Turnier mitzukämpfen. Freezer willigt unter der Bedingung ein, dass, wenn sie tatsächlich gewinnen sollten, er wieder zum Leben erweckt wird. Uranai Baba holt daraufhin Freezer ins Diesseits zurück, in welchem er als Toter bis zu 24 Stunden verbleiben kann. In der Zwischenzeit haben Gokus Freunde herausgefunden, worum es bei dem Turnier in Wirklichkeit geht. Krillin und C 18 wollen aussteigen, aber da Beerus ihnen mit der sofortigen Vernichtung droht, bleiben sie im Team. Somit besteht das fertige Team aus Son-Goku, Son-Gohan, Vegeta, Piccolo, C 17, C 18, Krillin, Muten Roshi, Tenshinhan und Freezer.',
    ),
    BroadcastAttribute(
      title: "Dragon Ball Daima",
      subtitle: 'Genre: Anime, Shōnen, Action, Kampfkunst, Comedy',
      imagePath: 'assets/images/broadcastImages/DragonBallDaima.png',
      description:
          'Im Zentrum der Geschichte steht ein unerwartetes Ereignis, das dazu führt, dass die Hauptfiguren der Serie, darunter Son-Goku, Vegeta, Bulma, Piccolo und andere bekannte Charaktere, auf mysteriöse Weise in kindliche Versionen ihrer selbst verwandelt werden.Dieses Ereignis wird von einer unbekannten, neuen Bedrohung ausgelöst, die in irgendeiner Weise die Dragon Balls manipuliert hat, um diese Verwandlung herbeizuführen. Die Charaktere müssen nicht nur herausfinden, wer hinter dieser Bedrohung steckt, sondern auch einen Weg finden, um ihre normale Größe und Kraft wiederzuerlangen. Trotz ihrer neuen Gestalt sind Son Goku und seine Freunde weiterhin entschlossen, die Welt vor der neuen Gefahr zu schützen, die möglicherweise weit über die bekannten Dimensionen des Dragon-Ball-Universums hinausgeht.',
    ),
    BroadcastAttribute(
      title: "Monster Mädchen",
      subtitle: 'Genre: Anime, Fantasy, Harem, Etchi, Comedy',
      imagePath: 'assets/images/broadcastImages/MonsterMaedchen.png',
      description:
          'Monster (auch Mischwesen genannt) sind real, doch ihre Existenz wurde bisher geheim gehalten. Nun versuchen sie, sich in die menschliche Kultur einzufügen. Zu diesem Zweck schuf die japanische Regierung ein  Kulturaustauschprogramm, in dessen Verlauf die Monster bei bestimmten Gastfamilien unterkommen. Es müssen dabei aber folgende Regeln beachtet werden: Die Monster dürfen das Haus nicht alleine verlassen; Monster und Menschen dürfen sich gegenseitig keinen Schaden zufügen; und die Monster dürfen sich nicht auf sexuelle Beziehungen mit einem Menschen einlassen.Dem jungen Studenten Kimihito wird eines Tages versehentlich eine Lamia namens Mia zugewiesen. Im Laufe der Handlung kommen aber noch mehr weibliche Monster zu ihm, wie eine Harpyie, eine Zentaurin, ein Schleimmädchen, eine Meerjungfrau, eine Arachne und eine Dullahan, die sich nach und nach alle in ihn verlieben. Nun hat er alle Hände voll zu tun, es seinen Hausgästen bei sich so bequem wie möglich zu machen, ihrer aller Gefühle ihm gegenüber zu berücksichtigen und sich den physischen Herausforderungen zu stellen, die eine Beziehung zwischen Menschen und Monstern so schwierig machen.',
    ),
  ];

  void toggleFavorite(String title) {
    int index = -1;

    for (int i = 0; i < broadcastData.length; i++) {
      final e = broadcastData[i];
      if (e.title == title) {
        index = i;
        break;
      }
    }
    // print('Gefundener Index: $index');
    if (index == -1) {
      // print('Kein Eintrag mit Titel "$title" gefunden');
      return;
    }
    // Element über Index updaten
    broadcastData[index].isFavorite = !broadcastData[index].isFavorite;
    notifyListeners();
  }

  void toggleMyAnime(String title) {
    int index = -1;
    for (int i = 0; i < broadcastData.length; i++) {
      final e = broadcastData[i];
      if (e.title == title) {
        index = i;
        break;
      }
    }
    // print('Gefundener Index: $index');
    if (index == -1) {
      // print('Kein Eintrag mit Titel "$title" gefunden');
      return;
    }

    broadcastData[index].isMyAnime = !broadcastData[index].isMyAnime;
    notifyListeners();
  }

  List<BroadcastAttribute> getAllAnime() => broadcastData;
  List<BroadcastAttribute> getAllFavorites() => broadcastData.where((e) => e.isFavorite).toList();
  List<BroadcastAttribute> getAllMyAnime() => broadcastData.where((e) => e.isMyAnime).toList();
}
