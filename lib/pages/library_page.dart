import 'package:flutter/material.dart';
import '../widgets/Library_gridview.dart';
import '../widgets/library_listview.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  var liblistimg = [
    'https://icon-library.com/images/like-instagram-icon/like-instagram-icon-12.jpg',
    'https://images.mid-day.com/images/images/2023/apr/Sam-Smith-aj_d.jpg',
    'https://ca-times.brightspotcdn.com/dims4/default/6b4082a/2147483647/strip/false/crop/2500x1661+0+0/resize/1486x987!/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F5c%2Fbb%2F17f0b84d4585836f504aaa89211a%2F2022-iheartradio-jingle-ball-los-angeles-22489.jpg',
    'https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2F209ebd14-ea1a-11eb-a9f0-ebe3f77d4a7e.jpg?crop=1577%2C1051%2C2387%2C296',
    'https://i2-prod.manchestereveningnews.co.uk/incoming/article27000989.ece/ALTERNATES/s615/4_The-2023-Met-Gala-Celebrating-Karl-Lagerfeld-A-Line-Of-Beauty-NYC-NEW-YORK-United-States-02.jpg',
    'https://media1.popsugar-assets.com/files/thumbor/JJqHf3jP3BNab1i9VytsmFzlaJg/0x55:3191x3246/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/11/20/847/n/1922398/60f627eb5dd592157d0953.98365826_/i/Zendaya.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/singer-and-actress-selena-gomez-poses-as-she-arrives-for-news-photo-1586786642.jpg?crop=0.668xw:1.00xh;0.0323xw,0&resize=1200:*',
    'https://hips.hearstapps.com/hmg-prod/images/hailee-steinfeld-visits-build-london-on-december-7-2017-in-london-england-photo-by-mike-marsland_mike-marsland_wireimage.jpg',
    'https://www.billboard.com/wp-content/uploads/2022/11/selena-gomez-2019-ama-v-billboard-1548.jpg',
    'https://static.foxnews.com/foxnews.com/content/uploads/2022/12/katy-perry-cma-awards.gif',
    'https://parade.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk4NzgwMjE0NjA2NTcxMjcx/adele-crude-health-update.jpg',
    'https://www.eatingwell.com/thmb/OE7cjfCN06zq2gIDneQ5JmDHKXc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Olivia-Rodrigos-Go-To-Breakfast-Order-Is-From-McDonalds-and-Its-Not-What-Youd-Expect-ad587fc6730548d095d0ed4cd452c8ef.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/f/fd/Paige_Duddy_2016.jpg',
    'https://illustratemagazine.com/wp-content/uploads/2022/05/a4234c68144db0ac544cb0f052b2372f.jpg',
    'https://i.ytimg.com/vi/3LzWUAkpNrQ/maxresdefault.jpg',
    'https://www.bongminesentertainment.com/wp-content/uploads/2018/11/Ellise-Press-photo-.jpg',
    'https://cdn.vox-cdn.com/thumbor/VetxE6rRTJt5tLhQ2Z99QFA9zcI=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/16127988/56973906_1031440620389086_5150401069125206016_o.jpg',
    'https://pyxis.nymag.com/v1/imgs/86b/2d8/1e9d1d2fd5919a507e3779ef4790205a95-post-malone.1x.rsquare.w1400.jpg',
    'https://media.allure.com/photos/63ce907bb10fe73dbd8b2f9c/1:1/w_5502,h_5502,c_limit/Beyonce%20performing%20in%20Dubai%203.jpg',
    'https://www.billboard.com/wp-content/uploads/2020/03/ariana-grande-grammys-2020-billboard-1548-1584296482.jpg?w=942&h=623&crop=1',
    'https://bhangrareleases.com/wp-content/uploads/2022/01/Jasmine-Sandlas-Mood-Sarkar-Da-Full-Video-780x470.jpg',
    'https://www.koimoi.com/wp-content/new-galleries/2019/07/guru-randhawa-attacked-in-vancouver-during-a-concert-by-an-unidentified-man-001.jpg',
    'https://www.koimoi.com/wp-content/new-galleries/2022/07/sonu-nigam-ready-to-belt-out-new-ghazal-titled-yaad-01.jpg',
    'https://yt3.googleusercontent.com/ExUc6mP35igOIFpkraUqYT8PztAqeFDV3OKa5Orcd814N0zM84FjTwfDtboqA3EZy8yFviUpeg=s900-c-k-c0x00ffffff-no-rj',
    'https://imageio.forbes.com/specials-images/imageserve/64a82491834805230191cf1d/Night-Two---Taylor-Swift---The-Eras-Tour---Nashville--TN/0x0.jpg?format=jpg&crop=1899,1424,x0,y242,safe&width=960',
    'https://media.gq.com/photos/56bb8a91b89407780bd7d454/16:9/w_2560%2Cc_limit/bieber-16-9-longform.jpg',
    'https://i.pinimg.com/originals/37/98/8e/37988ed10b22e3743578e691e6bee0a2.jpg',
    'https://www.koimoi.com/wp-content/new-galleries/2020/11/on-the-occasion-of-childrens-day-lets-take-a-look-at-these-childhood-pictures-of-dhvani-bhanushali001.jpg',
    'https://images.cnbctv18.com/wp-content/uploads/2022/07/Himesh-Reshammiya-Final-1019x573.jpg?im=FitAndFill,width=1200,height=900',
    'https://img.mensxp.com/media/content/2018/Aug/mensxp-exclusive-interview-with-badshah-1400x653-1534515223.jpg',
    'https://images.indianexpress.com/2020/05/Yo-Yo-Honey-Singh-1200.jpg',
    'https://www.koimoi.com/wp-content/new-galleries/2019/01/rahat-fateh-ali-khan-accused-of-smuggling-foreign-currency-0001.jpg',
    'https://i.pinimg.com/736x/cb/ce/55/cbce55be48283933b2f7a319801134a9.jpg',
    'https://yt3.googleusercontent.com/oSzNGBAUULYChvE-a0hAWiQqxRUroIBilAJ8ZfEp9o1Bpbr1t3ZD0m4nBLN-YJWoK5fFVDFz1A=s900-c-k-c0x00ffffff-no-rj',
    'https://media.npr.org/assets/img/2022/09/27/ap22270383946189_custom-f4705133476a5198c6dc3da9deddb01bf3fedbef.jpg'
  ];

  var liblisttitle = [
    'Liked Songs',
    'Sam Smith',
    'Bebe Rexha',
    'Anne-Marie',
    'Dua Lipa',
    'Zendaya',
    'Selena & The Scene',
    'Haile Steinfeld',
    'Selena Gomez',
    'Katy Perry',
    'Adele',
    'Olivia Rodrigo',
    'XYL0',
    'Kailee Morgue',
    'Hey Violet',
    'Ellise',
    'Billie Eilish',
    'Post Malone',
    'Beyonce',
    'Ariana Grande',
    'Jasmine Sandlas',
    'Guru Randhawa',
    'Sonu Nigam',
    'Sunidhi Chauhan',
    'Taylor Swift',
    'Justin Bieber',
    'Shreya Ghoshal',
    'Dhvani Bhanushali',
    'Himesh Reshamiya',
    'Badshah',
    'Yo Yo Honey Singh',
    'Rahat Fateh Ali khan',
    'Arijit Singh',
    'Neha Kakkar',
    'Shakira'
  ];

  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.deepOrangeAccent,
              maxRadius: 16,
              child: Text(
                'J',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'Your Library',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconData(0xec5e, fontFamily: 'MaterialIcons'),
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconData(0xe44f, fontFamily: 'MaterialIcons'),
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.grey.withOpacity(.1),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(.4)),
                  child: const Center(
                    child: Text(
                      'Playlist',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, top: 10),
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(.4)),
                  child: const Center(
                    child: Text(
                      'Albums',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, top: 10),
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(.4)),
                  child: const Center(
                    child: Text(
                      'Artists',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, top: 8.0, bottom: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                IconData(0xea32, fontFamily: 'MaterialIcons'),
                                color: Colors.white,
                              ),
                              Text(
                                'Recently added',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0.1,
                          child: IconButton(
                            icon: const Icon(
                              IconData(0xf0d7, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                isGridView = !isGridView;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: SizedBox(
                      height: 550,
                      child: isGridView
                          ? LibGridView(
                              libleadImg: liblistimg,
                              liblisttitle: liblisttitle,
                            )
                          : LibraryListview(
                              libleadImg: liblistimg,
                              liblisttitle: liblisttitle,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
