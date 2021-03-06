DROP TABLE IF EXISTS clients CASCADE;
DROP TABLE IF EXISTS names CASCADE;
DROP TABLE IF EXISTS prompts CASCADE;
DROP TABLE IF EXISTS collection CASCADE;

CREATE TABLE clients (
  clientId         SERIAL                  NOT NULL,
  clientFirstname  VARCHAR(20)             NOT NULL,
  clientLastname   VARCHAR(20)             NOT NULL,
  clientEmail      VARCHAR(40)             NOT NULL,
  clientPassword   VARCHAR(255)            NOT NULL,
  CONSTRAINT       pk_client_id            PRIMARY KEY (clientId)
);

CREATE TABLE names (
  nameId           SERIAL                  NOT NULL,
  nameText         VARCHAR(50)             NOT NULL,
  CONSTRAINT       pk_name_id              PRIMARY KEY (nameId)
);

CREATE TABLE prompts (
  promptId         SERIAL                  NOT NULL,
  promptText       VARCHAR(50)             NOT NULL,
  clientId         INT                     NOT NULL,
  nameId           INT                     NOT NULL,
  CONSTRAINT       pk_prompt_id            PRIMARY KEY (promptId),
  CONSTRAINT       fk_prompts_client_id    FOREIGN KEY (clientId)      REFERENCES clients(clientId),
  CONSTRAINT       fk_prompts_name_id      FOREIGN KEY (nameId)        REFERENCES names(nameId)
);

CREATE TABLE collection (
  collectionId     SERIAL                  NOT NULL,
  collectionText   VARCHAR(50)             NOT NULL,
  clientId         INT                     NOT NULL,
  promptId         INT                     NOT NULL,
  CONSTRAINT       pk_collection_id        PRIMARY KEY (collectionId),
  CONSTRAINT       fk_collection_client_id FOREIGN KEY (clientId)      REFERENCES clients(clientId),
  CONSTRAINT       fk_collection_prompt_id FOREIGN KEY (promptId)      REFERENCES prompts(promptId)
);

INSERT INTO names (nameText)
VALUES  ('Quimel'),
        ('Akime'),
        ('Reichenshammer'),
        ('Menneguerre'),
        ('Jindrak'),
        ('Medonia'),
        ('Kreconic'),
        ('Rammi'),
        ('Baldarrago'),
        ('Zavacka'),
        ('Klaudinger'),
        ('Zuffante'),
        ('Agian'),
        ('Reidling'),
        ('Stockline'),
        ('Obljubek'),
        ('Raynsford'),
        ('Hatward'),
        ('Stockly'),
        ('Cheynet'),
        ('Wierzch'),
        ('Asuko'),
        ('Poozesh'),
        ('Bidzina'),
        ('Smette'),
        ('Poninkiewicz'),
        ('Morsheda'),
        ('Manicad'),
        ('Delanuez'),
        ('Arille'),
        ('Jianneng'),
        ('Kanach'),
        ('Klawdia'),
        ('Kaarto'),
        ('Berdge'),
        ('Marhoon'),
        ('Jirka'),
        ('Bastrie'),
        ('Witting'),
        ('Tahire'),
        ('Bleekrode'),
        ('Fekken'),
        ('Sandya'),
        ('Jacqulyne'),
        ('Aufrere'),
        ('Nusrete'),
        ('Zotzmann'),
        ('Despe'),
        ('Wolfschutz'),
        ('Lejla'),
        ('Voorzanger'),
        ('Everard'),
        ('Casteler'),
        ('Bobardt'),
        ('Saldival'),
        ('Fateema'),
        ('Ludoviconi'),
        ('Kasinec'),
        ('Yasutaka'),
        ('Chanta'),
        ('Remme'),
        ('Thoemke'),
        ('Iseke'),
        ('Musielik'),
        ('Handziej'),
        ('Martinezs'),
        ('Bodoira'),
        ('Andetra'),
        ('Ebeoglu'),
        ('Nipgaard'),
        ('Khatouri'),
        ('Nauris'),
        ('Quirina'),
        ('Parag'),
        ('Pervaaz'),
        ('Somail'),
        ('Masnikosa'),
        ('Boohaker'),
        ('Stillebacher'),
        ('Despy'),
        ('Kevani'),
        ('Ebisu'),
        ('Demuther'),
        ('Tetela'),
        ('Algranatti'),
        ('Makale'),
        ('Wre'),
        ('Boude'),
        ('Dawanna'),
        ('Mirkonj'),
        ('Maruha'),
        ('Brentin'),
        ('Veiler'),
        ('Urita'),
        ('Gounet'),
        ('Ruisinger'),
        ('Kullis'),
        ('Nachforg'),
        ('Heridania'),
        ('Rawinis'),
        ('Kastli'),
        ('Cordora'),
        ('Faissel'),
        ('Drewick'),
        ('Ocfemia'),
        ('Meresko'),
        ('Giglok'),
        ('Kobinah'),
        ('Tuepker'),
        ('Sledz'),
        ('Sallfert'),
        ('Mahachai'),
        ('Bilele'),
        ('Chansy'),
        ('Anbarani'),
        ('Rohatinovici'),
        ('Ernie'),
        ('Cadamatre'),
        ('Chouik'),
        ('Chaulmontet'),
        ('Antolek'),
        ('Allysin'),
        ('Delioglu'),
        ('Merolle'),
        ('Nouvi'),
        ('Mumert'),
        ('Grueneberg'),
        ('Gulma'),
        ('Besinaiz'),
        ('Lichodziejewska'),
        ('Biott'),
        ('Rostholm'),
        ('Yoshia'),
        ('Petcu'),
        ('Bezjak'),
        ('Chaligne'),
        ('Lessiak'),
        ('Onos'),
        ('Guagenti'),
        ('Khomin'),
        ('Dopkins'),
        ('Bobzin'),
        ('Instanes'),
        ('Mostashfi'),
        ('Eimile'),
        ('Amae'),
        ('Youngbar'),
        ('Polosky'),
        ('Sheling'),
        ('Corminboeuf'),
        ('Quasdorf'),
        ('Carrock'),
        ('Narsou'),
        ('Holdhus'),
        ('Slusiewicz'),
        ('Yahner'),
        ('Otone'),
        ('Crivera'),
        ('Madhas'),
        ('Covellis'),
        ('Mechak'),
        ('Wojszczyk'),
        ('Guzlewski'),
        ('Jaloszewska'),
        ('Leonachescu'),
        ('Baaroun'),
        ('Crosdale'),
        ('Heimuli'),
        ('Adelheld'),
        ('Gopaldas'),
        ('Zayas'),
        ('Kikulski'),
        ('Meoni'),
        ('Zarmineh'),
        ('Tuvo'),
        ('Koverko'),
        ('Yarini'),
        ('Venkatalakshmi'),
        ('Rougie'),
        ('Jiminian'),
        ('Namocot'),
        ('Scheitle'),
        ('Vestphael'),
        ('Oziol'),
        ('Udobong'),
        ('Mokrzewski'),
        ('Arborelius'),
        ('Badegruber'),
        ('Tolegano'),
        ('Sahbazovic'),
        ('Tearman'),
        ('Hillda'),
        ('Khalifi'),
        ('Jauzein'),
        ('Wadely'),
        ('Torgersrud'),
        ('Ruzziconi'),
        ('Wolniak'),
        ('Klouz'),
        ('Edmeades'),
        ('Marguerin'),
        ('Bondiek'),
        ('Valskis'),
        ('Ronicke'),
        ('Shaolong'),
        ('Boskat'),
        ('Deias'),
        ('Asleh'),
        ('Jione'),
        ('Martinson'),
        ('Vodden'),
        ('Kadikar'),
        ('Tunupopo'),
        ('Beronski'),
        ('Vansluys'),
        ('Shtark'),
        ('Sigmin'),
        ('Faccas'),
        ('Giglmayer'),
        ('Drejka'),
        ('Giurgean'),
        ('Migoni'),
        ('Bergna'),
        ('Saierli'),
        ('Kaixuan'),
        ('Boularaf'),
        ('Kuorosh'),
        ('Turmus'),
        ('Rugi'),
        ('Kurpershoek'),
        ('Robischon'),
        ('Piess'),
        ('Alitagtag'),
        ('Senisi'),
        ('Pench'),
        ('Kaness'),
        ('Fikaris'),
        ('Jungerius'),
        ('Seisay'),
        ('Aloos'),
        ('Ofiarowicz'),
        ('Mortele'),
        ('Rotkopf'),
        ('Marapin'),
        ('Berbeth'),
        ('Lenthall'),
        ('Bonnaire'),
        ('Haig'),
        ('Allpass'),
        ('Darneka'),
        ('Meinnel'),
        ('Torlet'),
        ('Jonutis'),
        ('Abrham'),
        ('Kap'),
        ('Saihi'),
        ('Berbagui'),
        ('Reziki'),
        ('Bentacourt'),
        ('Tupu'),
        ('Jaque'),
        ('Shklyarevsky'),
        ('Arremann'),
        ('Kusterka'),
        ('Murison'),
        ('Ebeert'),
        ('Lukiv'),
        ('Doulan'),
        ('Bohacs'),
        ('Schekolin'),
        ('Venosh'),
        ('Barahmeh'),
        ('Zotoff'),
        ('Semendeaev'),
        ('Buluran'),
        ('Wiil'),
        ('Feynman'),
        ('Karrier'),
        ('Junli'),
        ('Zaudin'),
        ('Kliche'),
        ('Consetta'),
        ('Ciaffone'),
        ('Pueblo'),
        ('Suppiger'),
        ('Gorghiu'),
        ('Stifoss'),
        ('Kerlegon'),
        ('Fayaz'),
        ('Mouheddine'),
        ('Swirtz'),
        ('Cupala'),
        ('Sungji'),
        ('Elvebakken'),
        ('Mannrique'),
        ('Klarzuk'),
        ('Baubie'),
        ('Pielack'),
        ('Niederbremer'),
        ('Miglioretto'),
        ('Attico'),
        ('Monalisa'),
        ('Melkys'),
        ('Fuladi'),
        ('Mocquery'),
        ('Valierie'),
        ('Barshop'),
        ('Edelmut'),
        ('Rantamaki'),
        ('Podarilov'),
        ('Darbre'),
        ('Alease'),
        ('Akasala'),
        ('Oravasaari'),
        ('Rahmberg'),
        ('Paysour'),
        ('Puydebois'),
        ('Luic'),
        ('Frelaut'),
        ('Pey'),
        ('Natahan'),
        ('Denizeri'),
        ('Quinze'),
        ('Flavianna'),
        ('Heltai'),
        ('Foroudi'),
        ('Pheffer'),
        ('Phasouk'),
        ('Triganne'),
        ('Hareniuk'),
        ('Strimple'),
        ('Chappelow'),
        ('Klokocnik'),
        ('Bunchhoeun'),
        ('Brodinger'),
        ('Jehander'),
        ('Puckey'),
        ('Sindano'),
        ('Colladello'),
        ('Sobrina'),
        ('Manesiotis'),
        ('Adaszczyk'),
        ('Siradakis'),
        ('Cerquoni'),
        ('Cuga'),
        ('Withanawasam'),
        ('Parcetic'),
        ('Teleguine'),
        ('Misske'),
        ('Biernak'),
        ('Endal'),
        ('Tauny'),
        ('Stalts'),
        ('Burleanu'),
        ('Staniskaw'),
        ('Kapustina'),
        ('Chaiti'),
        ('Binny'),
        ('Kretzchemer'),
        ('Talec'),
        ('Hopp'),
        ('Tartarella'),
        ('Ruyffelaere'),
        ('Danhash'),
        ('Cretel'),
        ('Kokkegaard'),
        ('Sethurathinam'),
        ('Kodahl'),
        ('Kurilj'),
        ('Nettersheim'),
        ('Kawczuga'),
        ('Punith'),
        ('Mahathongdy'),
        ('Nilima'),
        ('Dominak'),
        ('Padmanaban'),
        ('Kaplinskaya'),
        ('Granot'),
        ('Putynkowski'),
        ('Mazzolani'),
        ('Willnauer'),
        ('Huarcaya'),
        ('Abuhnoaie'),
        ('Suzgo'),
        ('Coculeasa'),
        ('Bankart'),
        ('Kenesie'),
        ('Dobratiqi'),
        ('Scibiorska'),
        ('Flaire'),
        ('Pellicori'),
        ('Martyns'),
        ('Dusconi'),
        ('Baquey'),
        ('Heidenhofer'),
        ('Patarin'),
        ('Meshesha'),
        ('Sudarsanan'),
        ('Fusulan'),
        ('Les'),
        ('Trippert'),
        ('Solit'),
        ('Sheiffer'),
        ('Kliegerman'),
        ('Cearicova'),
        ('Melcherson'),
        ('Adlee'),
        ('Kubit'),
        ('Sejrup'),
        ('Waldburger'),
        ('Appledore'),
        ('Mikalan'),
        ('Paprotskaya'),
        ('Polot'),
        ('Radostev'),
        ('Ceny'),
        ('Danulevith'),
        ('Naboth'),
        ('Kidchob'),
        ('Amidani'),
        ('Turetcaia'),
        ('Kral'),
        ('Jennequin'),
        ('Mardiguian'),
        ('Denkowska'),
        ('Margotin'),
        ('Mariesha'),
        ('Figeuroa'),
        ('Udowana'),
        ('Bivanco'),
        ('Pieculewicz'),
        ('Markevics'),
        ('Boulitrop'),
        ('Thupthien'),
        ('Hewayda'),
        ('Collewet'),
        ('Paulshus'),
        ('Husny'),
        ('Renau'),
        ('Baanders'),
        ('Grumiller'),
        ('Relstab'),
        ('Lecrisha'),
        ('Kasperkowiak'),
        ('Chaia'),
        ('Orze'),
        ('Tanieka'),
        ('Onyekweli'),
        ('Colleluori'),
        ('Baubec'),
        ('Ratip'),
        ('Nemcova'),
        ('Nolma'),
        ('Donnal'),
        ('Sardine'),
        ('Cirner'),
        ('Lennander'),
        ('Lowni'),
        ('Puumala'),
        ('Derjangocyan'),
        ('Trafnik'),
        ('Scheikl'),
        ('Mellors'),
        ('Kurlat'),
        ('Kesenia'),
        ('Merah'),
        ('Horek'),
        ('Bozhilov'),
        ('Sanorjo'),
        ('Sajjid'),
        ('Fiszter'),
        ('Normeus'),
        ('Decain'),
        ('Makwana'),
        ('Vangeline'),
        ('Poznakhovska'),
        ('Rolis'),
        ('Urbanozo'),
        ('Offenwanger'),
        ('Yothin'),
        ('Skommar'),
        ('Fickiesen'),
        ('Tingstein'),
        ('Odeda'),
        ('Ilyashov'),
        ('Hajacos'),
        ('Gilblas'),
        ('Narby'),
        ('Ravneberg'),
        ('Buil'),
        ('Salamana'),
        ('Aristea'),
        ('Bezuglyy'),
        ('Domolki'),
        ('Duparc'),
        ('Assadulla'),
        ('Faliya'),
        ('Herlitska'),
        ('Bevaart'),
        ('Inova'),
        ('Suheil'),
        ('Malhoutra'),
        ('Dolisa'),
        ('Maitrang'),
        ('Abrahms'),
        ('Nuretdin'),
        ('Maninetti'),
        ('Waialae'),
        ('Lacdan'),
        ('Smoki'),
        ('Ruthchild'),
        ('Liparini'),
        ('Lurati'),
        ('Siddha'),
        ('Collesi'),
        ('Loholt'),
        ('Cherae'),
        ('Craba'),
        ('Gunarajah'),
        ('Cialli'),
        ('Debaroti'),
        ('Wooyoung'),
        ('Scrabis'),
        ('Compier'),
        ('Sunson'),
        ('Azeris'),
        ('Bilichowska'),
        ('Staden'),
        ('Ozsever'),
        ('Aftret'),
        ('Seledic'),
        ('Kilasi'),
        ('Nerei'),
        ('Horoz'),
        ('Curler'),
        ('Susanie'),
        ('Flaviani'),
        ('Meiai'),
        ('Gemena'),
        ('Wudzinski'),
        ('Skagerfalt'),
        ('Taxer'),
        ('Perekupka'),
        ('Makrancy'),
        ('Furubayashi'),
        ('Evegroen'),
        ('Carstarphen'),
        ('Oberwagner'),
        ('Michealangelo'),
        ('Dayzie'),
        ('Tajnai'),
        ('Parasiliti'),
        ('Narku'),
        ('Obain'),
        ('Medfai'),
        ('Schultenkamper'),
        ('Karadjova'),
        ('Bejm'),
        ('Rajamets'),
        ('Dandanelle');
