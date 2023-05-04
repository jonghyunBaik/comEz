import 'dart:js';

import 'package:cum_ez/ThirdPage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key, required this.setPrice, required this.setPurpose})
      : super(key: key);

  final setPrice;
  final setPurpose;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var listBoxY = 732;
  final partlist = ['CPU', '메인보드', '그래픽카드', '메모리', 'SSD', '하드디스크', '파워'];
  final selectedPartlist = ['인텔', '코어', '3080', '256', '512', 'hard', 'power'];
  final selectedPricelist = [0, 0, 0, 0, 0, 0, 0];
  final partbool = [false, false, false, false, false, false, false];
  final sincbool = [false, false, false, false, false, false, false];
  final programbool = [false, false, false, false, false, false, false];
  final selectIndex0 = [false, false, false, false, false, false];
  final selectIndex1 = [false, false, false, false, false, false];
  final selectIndex2 = [false, false, false, false, false, false];
  final selectIndex3 = [false, false, false, false, false, false];
  final selectIndex4 = [false, false, false, false, false, false];
  final selectIndex5 = [false, false, false, false, false, false];
  final selectIndex6 = [false, false, false, false, false, false];
  final partCount = [1, 1, 1, 1, 1, 1, 1];
  final cpuList = [
    '인텔 코어 i9-13세대 13900K',
    'AMD 라이젠9-5세대 7900X',
    'AMD 라이젠5-4세대 5600G',
    '인텔 코어 i5-12세대 12400F',
    '인텔 코어 i7-13세대 13700K',
    'AMD 라이젠7-4세대 5800X3D'
  ];
  final mainboardList = [
    'ASUS TUF Gaming B660M-PLUS D4 아이보라',
    'MSI MAG B660M 박격포 WIFI DDR4',
    'ASRock B660M Pro RS D4 에즈윈',
    'GIGABYTE B660M DS3H D4 피씨디렉트',
    'MSI MAG B660M 박격포 DDR4',
    'ASUS PRIME B550M-A 대원씨티에스'
  ];
  final graphicList = [
    '이엠텍 지포스 RTX 3060 Ti STORM X Dual OC D6 8GB',
    'ASUS DUAL 지포스 RTX 3060 Ti O8G OC D6 8GB',
    'GIGABYTE 지포스 RTX 3060 Ti Gaming OC V2 D6 8GB 피씨디렉트',
    'MSI 지포스 RTX 3060 Ti 게이밍 X D6 8GB 트윈프로져8 LHR',
    'PALIT 지포스 RTX 3060 Dual D6 12GB',
    'GIGABYTE 지포스 RTX 3060 Gaming OC V2 D6 12GB 피씨디렉트'
  ];
  final memoryList = [
    '삼성전자 DDR5-4800 (8GB)',
    '삼성전자 DDR4-3200 (8GB)',
    '이메이션 DDR4-3200 CL22 (16GB)',
    '마이크론 Crucial DDR4-3200 CL22 (8GB)',
    '삼성전자 DDR4-3200 (16GB)',
    '삼성전자 DDR5-4800 (16GB)'
  ];
  final ssdList = [
    '키오시아 EXCERIA M.2 NVMe 250GB',
    '삼성전자 980 M.2 NVMe 500GB',
    '삼성전자 870 EVO 500GB',
    '타무즈 GKV700 M.2 NVMe 512GB',
    '솔리다임 P41 PLUS M.2 NVMe 512GB',
    '타무즈 GKM330 M.2 SATA 512GB'
  ];
  final hardList = [
    'Seagate BarraCuda 7200/256M 2TB',
    'Western Digital BLUE 7200/64M 1TB',
    'Western Digital WD 7200/256M 2TB',
    '도시바 P300 7200/64M 1TB',
    'Seagate Digital 7200/64M 1TB',
    '도시바 P300 7200/256M 2TB'
  ];
  final powerList = [
    'MAXWELL GAMING PRO 700W 80 PLUS STANDARD',
    'MegaMax ET 600W 80 PLUS STANDARD',
    '아이구주 EPLUS SP-600EL V2',
    '쿨러마스터 MVE 600 BRONZE V2 230V',
    '마이크로닉스 Classic 2 풀체인지 600W 80PLUS BRONZE 230V EU',
    '마이크로닉스 Classic 2 풀체인지 700W 80PLUS BRONZE 230V EU'
  ];
  final cpuPrice = [907980, 827280, 204120, 256830, 639690, 555120];
  final mainboardPrice = [242510, 239570, 175500, 160770, 220060, 158620];
  final graphicPrice = [636660, 634270, 668250, 637480, 538210, 531360];
  final memoryPrice = [40500, 29160, 64260, 28410, 62100, 76470];
  final ssdPrice = [53900, 67150, 70100, 47420, 73440, 44180];
  final hardPrice = [75600, 65050, 76500, 59400, 63180, 71280];
  final powerPrice = [61840, 49150, 47120, 55000, 63180, 80690];

  var cpuAbleList = [
    '배틀그라운드 풀옵션',
    '배틀그라운드 풀옵션',
    '배틀그라운드 중상옵션',
    '배틀그라운드 하옵션',
    '배틀그라운드 불가능',
    '배틀그라운드 불가능',
  ];

  var mainboardAbleList = [
    '배틀그라운드 풀옵션',
    '배틀그라운드 풀옵션',
    '배틀그라운드 중상옵션',
    '배틀그라운드 하옵션',
    '배틀그라운드 불가능',
    '배틀그라운드 불가능',
  ];
  var graphicAbleList = [
    '배틀그라운드 풀옵션',
    '배틀그라운드 풀옵션',
    '배틀그라운드 중상옵션',
    '배틀그라운드 하옵션',
    '배틀그라운드 불가능',
    '배틀그라운드 불가능',
  ];
  var memoryAbleList = [
    '배틀그라운드 풀옵션',
    '배틀그라운드 풀옵션',
    '배틀그라운드 중상옵션',
    '배틀그라운드 하옵션',
    '배틀그라운드 불가능',
    '배틀그라운드 불가능',
  ];
  var ssdAbleList = [
    '배틀그라운드 풀옵션',
    '배틀그라운드 풀옵션',
    '배틀그라운드 중상옵션',
    '배틀그라운드 하옵션',
    '배틀그라운드 불가능',
    '배틀그라운드 불가능',
  ];
  var hardAbleList = [
    '배틀그라운드 풀옵션',
    '배틀그라운드 풀옵션',
    '배틀그라운드 중상옵션',
    '배틀그라운드 하옵션',
    '배틀그라운드 불가능',
    '배틀그라운드 불가능',
  ];

  var powerAbleList = [
    '배틀그라운드 풀옵션',
    '배틀그라운드 풀옵션',
    '배틀그라운드 중상옵션',
    '배틀그라운드 하옵션',
    '배틀그라운드 불가능',
    '배틀그라운드 불가능',
  ];

  final ScrollController _scrollController = ScrollController();
  var cost = 0;

  late final heavyPurpose;
  bool lowSpac = false;

  @override
  void initState() {
    if(widget.setPurpose.contains('배틀그라운드')) {
      heavyPurpose = '배틀그라운드';
      cpuAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
        heavyPurpose + ' 하옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];

      mainboardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
        heavyPurpose + ' 하옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      graphicAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
        heavyPurpose + ' 하옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      memoryAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
        heavyPurpose + ' 하옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      ssdAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
        heavyPurpose + ' 하옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      hardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
        heavyPurpose + ' 하옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];

      powerAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
        heavyPurpose + ' 하옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
    } else if (widget.setPurpose.contains('AutoCAD')) {
      heavyPurpose = 'AutoCAD';

      cpuAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];

      mainboardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      graphicAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      memoryAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      ssdAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      hardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];

      powerAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
    } else if (widget.setPurpose.contains('3dMax')) {
      heavyPurpose = '3dMax';
      cpuAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 하옵션',
      ];

      mainboardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 하옵션',
      ];
      graphicAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 하옵션',
      ];
      memoryAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 하옵션',
      ];
      ssdAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 하옵션',
      ];
      hardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 하옵션',
      ];

      powerAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 하옵션',
      ];
    } else if (widget.setPurpose.contains('리그오브레전드')) {
      heavyPurpose = '리그오브레전드';

      cpuAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
      ];

      mainboardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
      ];
      graphicAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중옵션',
        heavyPurpose + ' 불가능',
        heavyPurpose + ' 불가능',
      ];
      memoryAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
      ];
      ssdAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
      ];
      hardAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
      ];

      powerAbleList = [
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 풀옵션',
        heavyPurpose + ' 중상옵션',
      ];
    }

    super.initState();
    _scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: _scrollController,
      child: Stack(
        children: [
          Container(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            //상단 배너
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.28,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.deepPurpleAccent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.height * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: Image.asset('assets/logo.png'),
                              )
                            ],
                          )
                        ]),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height * 0.08,
                            color: Colors.black26,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'STEP1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '사용목적 & 예산입력',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: MediaQuery.of(context).size.height * 0.08,
                              color: Colors.grey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'STEP2',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '부품선택',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: MediaQuery.of(context).size.height * 0.08,
                              color: Colors.black26,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'STEP3',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '주문확인',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      )),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Best 추천",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      // 부품 리스트 출력
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: partbool[0] ? 250 : 100,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 3.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.32,
                                          child: Row(
                                            children: [
                                              Text(partlist[0],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                partbool[0]
                                                    ? ''
                                                    : selectedPartlist[0],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          child: sincbool[0] || programbool[0]
                                              ? GestureDetector(
                                                  child: Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Colors.red,
                                                    size: 50,
                                                  ),
                                                  onTap: () {
                                                    for (int i = 0;
                                                        i < sincbool.length;
                                                        i++) {
                                                      if (i == 0) {
                                                        continue;
                                                      }
                                                      if (sincbool[i]) {
                                                        FlutterDialog(
                                                            context,
                                                            partlist[0],
                                                            partlist[i]);
                                                      }}
                                                    if(programbool[0]) {
                                                      SpacDialog(context, partlist[0]);}
                                                  })
                                              : SizedBox(),
                                        ),
                                      ],
                                    ),
                                    height: 94,
                                    color: partbool[0]
                                        ? Colors.deepPurpleAccent
                                        : Colors.white,
                                  ),
                                  partbool[0]
                                      ? Container(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(selectedPartlist[0],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (partCount[0] > 0)
                                                          partCount[0]--;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '-',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '${partCount[0]}',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        partCount[0]++;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '+',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '${selectedPricelist[0]}원',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(height: 10),
                                                  IconButton(
                                                    icon: Icon(Icons.clear),
                                                    onPressed: () {
                                                      setState(() {
                                                        partbool[0] = false;
                                                        listBoxY = 732;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          color: Colors.white,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < partbool.length; i++) {
                                  partbool[i] = false;
                                }
                                partbool[0] = true;
                                listBoxY = 882;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: partbool[1] ? 250 : 100,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 3.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.32,
                                          child: Row(
                                            children: [
                                              Text(partlist[1],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                partbool[1]
                                                    ? ''
                                                    : selectedPartlist[1],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          child: sincbool[1] || programbool[1]
                                              ? GestureDetector(
                                                  child: Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Colors.red,
                                                    size: 50,
                                                  ),
                                                  onTap: () {
                                                    for (int i = 0;
                                                        i < sincbool.length;
                                                        i++) {
                                                      if (i == 1) {
                                                        continue;
                                                      }
                                                      if (sincbool[i]) {
                                                        FlutterDialog(
                                                            context,
                                                            partlist[1],
                                                            partlist[i]);
                                                      }
                                                    }
                                                    if(programbool[1]) {
                                                    SpacDialog(context, partlist[1]);}
                                                  })
                                              : SizedBox(),
                                        ),
                                      ],
                                    ),
                                    height: 94,
                                    color: partbool[1]
                                        ? Colors.deepPurpleAccent
                                        : Colors.white,
                                  ),
                                  partbool[1]
                                      ? Container(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(selectedPartlist[1],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (partCount[1] > 0)
                                                          partCount[1]--;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '-',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '${partCount[1]}',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        partCount[1]++;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '+',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '${selectedPricelist[1]}원',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(height: 10),
                                                  IconButton(
                                                    icon: Icon(Icons.clear),
                                                    onPressed: () {
                                                      setState(() {
                                                        partbool[1] = false;
                                                        listBoxY = 732;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          color: Colors.white,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < partbool.length; i++) {
                                  partbool[i] = false;
                                }
                                partbool[1] = true;
                                listBoxY = 882;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: partbool[2] ? 250 : 100,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 3.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.32,
                                          child: Row(
                                            children: [
                                              Text(partlist[2],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  partbool[2]
                                                      ? ''
                                                      : selectedPartlist[2],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          child: sincbool[2] || programbool[2]
                                              ? GestureDetector(
                                                  child: Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Colors.red,
                                                    size: 50,
                                                  ),
                                                  onTap: () {
                                                    for (int i = 0;
                                                        i < sincbool.length;
                                                        i++) {
                                                      if (i == 2) {
                                                        continue;
                                                      }
                                                      if (sincbool[i]) {
                                                        FlutterDialog(
                                                            context,
                                                            partlist[2],
                                                            partlist[i]);
                                                      }
                                                    }
                                                    if(programbool[2]) {
                                                    SpacDialog(context, partlist[2]);}
                                                  })
                                              : SizedBox(),
                                        ),
                                      ],
                                    ),
                                    height: 94,
                                    color: partbool[2]
                                        ? Colors.deepPurpleAccent
                                        : Colors.white,
                                  ),
                                  partbool[2]
                                      ? Container(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(selectedPartlist[2],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (partCount[2] > 0)
                                                          partCount[2]--;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '-',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '${partCount[2]}',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        partCount[2]++;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '+',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '${selectedPricelist[2]}원',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(height: 10),
                                                  IconButton(
                                                    icon: Icon(Icons.clear),
                                                    onPressed: () {
                                                      setState(() {
                                                        partbool[2] = false;
                                                        listBoxY = 732;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          color: Colors.white,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < partbool.length; i++) {
                                  partbool[i] = false;
                                }
                                partbool[2] = true;
                                listBoxY = 882;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: partbool[3] ? 250 : 100,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 3.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.32,
                                          child: Row(
                                            children: [
                                              Text(partlist[3],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                partbool[3]
                                                    ? ''
                                                    : selectedPartlist[3],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          child: sincbool[3] || programbool[3]
                                              ? GestureDetector(
                                                  child: Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Colors.red,
                                                    size: 50,
                                                  ),
                                                  onTap: () {
                                                    for (int i = 0;
                                                        i < sincbool.length;
                                                        i++) {
                                                      if (i == 3) {
                                                        continue;
                                                      }
                                                      if (sincbool[i]) {
                                                        FlutterDialog(
                                                            context,
                                                            partlist[3],
                                                            partlist[i]);
                                                      }
                                                    }
                                                    if(programbool[3]) {
                                                    SpacDialog(context, partlist[3]);}
                                                  })
                                              : SizedBox(),
                                        ),
                                      ],
                                    ),
                                    height: 94,
                                    color: partbool[3]
                                        ? Colors.deepPurpleAccent
                                        : Colors.white,
                                  ),
                                  partbool[3]
                                      ? Container(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(selectedPartlist[3],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (partCount[3] > 0)
                                                          partCount[3]--;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '-',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '${partCount[3]}',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        partCount[3]++;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '+',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '${selectedPricelist[3]}원',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(height: 10),
                                                  IconButton(
                                                    icon: Icon(Icons.clear),
                                                    onPressed: () {
                                                      setState(() {
                                                        listBoxY = 732;
                                                        partbool[3] = false;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          color: Colors.white,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < partbool.length; i++) {
                                  partbool[i] = false;
                                }
                                partbool[3] = true;
                                listBoxY = 882;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: partbool[4] ? 250 : 100,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 3.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.32,
                                          child: Row(
                                            children: [
                                              Text(partlist[4],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  partbool[4]
                                                      ? ''
                                                      : selectedPartlist[4],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          child: sincbool[4] || programbool[4]
                                              ? GestureDetector(
                                                  child: Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Colors.red,
                                                    size: 50,
                                                  ),
                                                  onTap: () {
                                                    for (int i = 0;
                                                        i < sincbool.length;
                                                        i++) {
                                                      if (i == 4) {
                                                        continue;
                                                      }
                                                      if (sincbool[i]) {
                                                        FlutterDialog(
                                                            context,
                                                            partlist[4],
                                                            partlist[i]);
                                                      }
                                                    }
                                                    if(programbool[4]) {
                                                    SpacDialog(context, partlist[4]);}
                                                  })
                                              : SizedBox(),
                                        ),
                                      ],
                                    ),
                                    height: 94,
                                    color: partbool[4]
                                        ? Colors.deepPurpleAccent
                                        : Colors.white,
                                  ),
                                  partbool[4]
                                      ? Container(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(selectedPartlist[4],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (partCount[4] > 0)
                                                          partCount[4]--;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '-',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '${partCount[4]}',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        partCount[4]++;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '+',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '${selectedPricelist[4]}원',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(height: 10),
                                                  IconButton(
                                                    icon: Icon(Icons.clear),
                                                    onPressed: () {
                                                      setState(() {
                                                        listBoxY = 732;
                                                        partbool[4] = false;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          color: Colors.white,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < partbool.length; i++) {
                                  partbool[i] = false;
                                }
                                partbool[4] = true;
                                listBoxY = 882;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: partbool[5] ? 250 : 100,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 3.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.32,
                                          child: Row(
                                            children: [
                                              Text(partlist[5],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                partbool[5]
                                                    ? ''
                                                    : selectedPartlist[5],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          child: sincbool[5] || programbool[5]
                                              ? GestureDetector(
                                                  child: Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Colors.red,
                                                    size: 50,
                                                  ),
                                                  onTap: () {
                                                    for (int i = 0;
                                                        i < sincbool.length;
                                                        i++) {
                                                      if (i == 5) {
                                                        continue;
                                                      }
                                                      if (sincbool[i]) {
                                                        FlutterDialog(
                                                            context,
                                                            partlist[5],
                                                            partlist[i]);
                                                      }
                                                    }
                                                    if(programbool[5]) {
                                                    SpacDialog(context, partlist[5]);}
                                                  })
                                              : SizedBox(),
                                        ),
                                      ],
                                    ),
                                    height: 94,
                                    color: partbool[5]
                                        ? Colors.deepPurpleAccent
                                        : Colors.white,
                                  ),
                                  partbool[5]
                                      ? Container(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(selectedPartlist[5],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.grey)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (partCount[5] > 0)
                                                          partCount[5]--;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '-',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '${partCount[5]}',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        partCount[5]++;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '+',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '${selectedPricelist[5]}원',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(height: 10),
                                                  IconButton(
                                                    icon: Icon(Icons.clear),
                                                    onPressed: () {
                                                      setState(() {
                                                        listBoxY = 732;
                                                        partbool[5] = false;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          color: Colors.white,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < partbool.length; i++) {
                                  partbool[i] = false;
                                }
                                partbool[5] = true;
                                listBoxY = 882;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: partbool[6] ? 250 : 100,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 3.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.32,
                                          child: Row(
                                            children: [
                                              Text(partlist[6],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  partbool[6]
                                                      ? ''
                                                      : selectedPartlist[6],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          child: sincbool[6] || programbool[6]
                                              ? GestureDetector(
                                                  child: Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Colors.red,
                                                    size: 50,
                                                  ),
                                                  onTap: () {
                                                    for (int i = 0;
                                                        i < sincbool.length;
                                                        i++) {
                                                      if (i == 6) {
                                                        continue;
                                                      }
                                                      if (sincbool[i]) {
                                                        FlutterDialog(
                                                            context,
                                                            partlist[6],
                                                            partlist[i]);
                                                      }
                                                    }
                                                    if(programbool[6]) {
                                                    SpacDialog(context, partlist[6]);}
                                                  })
                                              : SizedBox(),
                                        ),
                                      ],
                                    ),
                                    height: 94,
                                    color: partbool[6]
                                        ? Colors.deepPurpleAccent
                                        : Colors.white,
                                  ),
                                  partbool[6]
                                      ? Container(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    selectedPartlist[6],
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (partCount[6] > 0)
                                                          partCount[6]--;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '-',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '${partCount[6]}',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        partCount[6]++;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '+',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '${selectedPricelist[6]}원',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(height: 10),
                                                  IconButton(
                                                    icon: Icon(Icons.clear),
                                                    onPressed: () {
                                                      setState(() {
                                                        listBoxY = 732;
                                                        partbool[6] = false;
                                                      });
                                                    },
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          color: Colors.white,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < partbool.length; i++) {
                                  partbool[i] = false;
                                }
                                partbool[6] = true;
                                listBoxY = 882;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('예산 : ' + widget.setPrice + '만원',
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold))
                          ])
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.38,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            lowSpac ? Text(
                              '부족사유 : '+ heavyPurpose + '는 실행이 힘듭니다.',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                              ),
                            ) : SizedBox(),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.38,
                            height: listBoxY as double,
                            decoration: BoxDecoration(
                                border: Border.all(width: 3.0),
                                color: Colors.white),
                            child: ListView.builder(
                                itemCount: partbool[0]
                                    ? cpuList.length
                                    : partbool[1]
                                        ? mainboardList.length
                                        : partbool[2]
                                            ? graphicList.length
                                            : partbool[3]
                                                ? memoryList.length
                                                : partbool[4]
                                                    ? ssdList.length
                                                    : partbool[5]
                                                        ? hardList.length
                                                        : powerList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return partbool[0] 
                                      ? partBox( // 여기 partBox 부터 안태형병신
                                          context,
                                          selectedPartlist[0],
                                          cpuList[index],
                                          cpuPrice[index],
                                          OutlinedButton(
                                              child: Text('교체'),
                                              onPressed: () {
                                                setState(() {
                                                  selectedPartlist[0] =
                                                      cpuList[index];
                                                  
                                                  // 여기 포문 추가 
                                                  for(int i = 0; i < 6; i++) {
                                                    if(i == index) {
                                                      selectIndex0[i] = true;
                                                    } else {
                                                      selectIndex0[i] = false;
                                                    }
                                                  }
                                                  // 여기까지 안태형병신
                                                  selectedPricelist[0] =
                                                      cpuPrice[index];
                                                  if ((selectedPartlist[
                                                  0] ==
                                                      '인텔 코어 i9-13세대 13900K') &&
                                                      (selectedPartlist[
                                                      1] ==
                                                          'MSI MAG B660M 박격포 DDR4' || selectedPartlist[
                                                      1] ==
                                                          'ASUS PRIME B550M-A 대원씨티에스')) {
                                                    sincbool[0] = true;
                                                    sincbool[1] = true;
                                                    FlutterDialog(
                                                        context,
                                                        partlist[0],
                                                        partlist[1]);
                                                  } else {
                                                    sincbool[0] = false;
                                                    sincbool[1] = false;
                                                  }

                                                  cost = selectedPricelist[0] +
                                                      selectedPricelist[1] +
                                                      selectedPricelist[2] +
                                                      selectedPricelist[3] +
                                                      selectedPricelist[4] +
                                                      selectedPricelist[5] +
                                                      selectedPricelist[6];
                                                  if(cpuAbleList[index].contains('불가')) {
                                                    lowSpac = true;
                                                    SpacDialog(context, partlist[0]);
                                                    programbool[0] = true;
                                                  }
                                                  else {
                                                    lowSpac = false;
                                                    programbool[0] = false;
                                                  }
                                                });
                                              }), cpuAbleList[index], selectIndex0[index])
                                      : partbool[1]
                                          ? partBox(
                                              context,
                                              selectedPartlist[1],
                                              mainboardList[index],
                                              mainboardPrice[index],
                                              OutlinedButton(
                                                  child: Text('교체'),
                                                  onPressed: () {
                                                    setState(() {
                                                      selectedPartlist[1] =
                                                          mainboardList[index];

                                                      for(int i = 0; i < 6; i++) {
                                                        if(i == index) {
                                                          selectIndex1[i] = true;
                                                        } else {
                                                          selectIndex1[i] = false;
                                                        }
                                                      }
                                                      selectedPricelist[1] =
                                                          mainboardPrice[index];
                                                      if ((selectedPartlist[
                                                      0] ==
                                                          '인텔 코어 i9-13세대 13900K') &&
                                                          (selectedPartlist[
                                                          1] ==
                                                              'MSI MAG B660M 박격포 DDR4' || selectedPartlist[
                                                          1] ==
                                                              'ASUS PRIME B550M-A 대원씨티에스')) {
                                                        sincbool[0] = true;
                                                        sincbool[1] = true;
                                                        FlutterDialog(
                                                            context,
                                                            partlist[1],
                                                            partlist[0]);
                                                      } else {
                                                        sincbool[0] = false;
                                                        sincbool[1] = false;
                                                      }

                                                      if ((selectedPartlist[
                                                      3] == '삼성전자 DDR4-3200 (16GB)' || selectedPartlist[3] ==
                                                          '삼성전자 DDR4-3200 (8GB)') &&
                                                          (selectedPartlist[
                                                          1] ==
                                                              'ASUS TUF Gaming B660M-PLUS D4 아이보라' || selectedPartlist[
                                                          1] ==
                                                              'ASUS PRIME B550M-A 대원씨티에스')) {
                                                        sincbool[1] = true;
                                                        sincbool[3] = true;
                                                        FlutterDialog(
                                                            context,
                                                            partlist[1],
                                                            partlist[3]);
                                                      } else {
                                                        sincbool[3] = false;
                                                        sincbool[1] = false;
                                                      }

                                                      cost = selectedPricelist[0] +
                                                          selectedPricelist[1] +
                                                          selectedPricelist[2] +
                                                          selectedPricelist[3] +
                                                          selectedPricelist[4] +
                                                          selectedPricelist[5] +
                                                          selectedPricelist[6];
                                                      if(mainboardAbleList[index].contains('불가')) {
                                                        lowSpac = true;
                                                        SpacDialog(context, partlist[1]);
                                                        programbool[1] = true;
                                                      }
                                                      else {
                                                        lowSpac = false;
                                                        programbool[1] = false;
                                                      }
                                                    });
                                                  }), cpuAbleList[index], selectIndex1[index])
                                          : partbool[2]
                                              ? partBox(
                                                  context,
                                                  selectedPartlist[2],
                                                  graphicList[index],
                                                  graphicPrice[index],
                                                  OutlinedButton(
                                                      child: Text('교체'),
                                                      onPressed: () {
                                                        setState(() {
                                                          selectedPartlist[2] =
                                                              graphicList[
                                                                  index];
                                                          for(int i = 0; i < 6; i++) {
                                                            if(i == index) {
                                                              selectIndex2[i] = true;
                                                            } else {
                                                              selectIndex2[i] = false;
                                                            }
                                                          }
                                                          selectedPricelist[2] =
                                                              graphicPrice[
                                                                  index];
                                                          if (selectedPartlist[
                                                                      2] ==
                                                                  '이엠텍 지포스 RTX 3060 Ti STORM X Dual OC D6 8GB' &&
                                                              selectedPartlist[
                                                                      3] ==
                                                                  '마이크론 Crucial DDR4-3200 CL22 (8GB)') {
                                                            sincbool[2] = true;
                                                            sincbool[3] = true;
                                                            FlutterDialog(
                                                                context,
                                                                partlist[2],
                                                                partlist[3]);
                                                          } else {
                                                            sincbool[2] = false;
                                                            sincbool[3] = false;
                                                          }
                                                          cost = selectedPricelist[0] +
                                                              selectedPricelist[
                                                                  1] +
                                                              selectedPricelist[
                                                                  2] +
                                                              selectedPricelist[
                                                                  3] +
                                                              selectedPricelist[
                                                                  4] +
                                                              selectedPricelist[
                                                                  5] +
                                                              selectedPricelist[
                                                                  6];
                                                          if(graphicAbleList[index].contains('불가')) {
                                                            lowSpac = true;
                                                            SpacDialog(context, partlist[2]);
                                                            programbool[2] = true;
                                                          }
                                                          else {
                                                            lowSpac = false;
                                                            programbool[2] = false;
                                                          }
                                                        });
                                                      }), cpuAbleList[index], selectIndex2[index])
                                              : partbool[3]
                                                  ? partBox(
                                                      context,
                                                      selectedPartlist[3],
                                                      memoryList[index],
                                                      memoryPrice[index],
                                                      OutlinedButton(
                                                          child: Text('교체'),
                                                          onPressed: () {
                                                            setState(() {
                                                              selectedPartlist[
                                                                      3] =
                                                                  memoryList[
                                                                      index];
                                                              for(int i = 0; i < 6; i++) {
                                                                if(i == index) {
                                                                  selectIndex3[i] = true;
                                                                } else {
                                                                  selectIndex3[i] = false;
                                                                }
                                                              }
                                                              selectedPricelist[
                                                                      3] =
                                                                  memoryPrice[
                                                                      index];
                                                              if (selectedPartlist[2] ==
                                                                  '이엠텍 지포스 RTX 3060 Ti STORM X Dual OC D6 8GB' &&
                                                                  selectedPartlist[3] ==
                                                                      '마이크론 Crucial DDR4-3200 CL22 (8GB)') {
                                                                sincbool[2] = true;
                                                                sincbool[3] = true;
                                                                FlutterDialog(
                                                                    context,
                                                                    partlist[3],
                                                                    partlist[2]);
                                                              } else {
                                                                sincbool[2] = false;
                                                                sincbool[3] = false;
                                                              }

                                                              if ((selectedPartlist[
                                                              3] == '삼성전자 DDR4-3200 (16GB)' || selectedPartlist[3] ==
                                                                  '삼성전자 DDR4-3200 (8GB)') &&
                                                                  (selectedPartlist[
                                                                  1] ==
                                                                      'ASUS TUF Gaming B660M-PLUS D4 아이보라' || selectedPartlist[
                                                                  1] ==
                                                                      'ASUS PRIME B550M-A 대원씨티에스')) {
                                                                sincbool[1] = true;
                                                                sincbool[3] = true;
                                                                FlutterDialog(
                                                                    context,
                                                                    partlist[3],
                                                                    partlist[1]);
                                                              } else {
                                                                sincbool[3] = false;
                                                                sincbool[1] = false;
                                                              }
                                                              cost = selectedPricelist[0] +
                                                                  selectedPricelist[
                                                                      1] +
                                                                  selectedPricelist[
                                                                      2] +
                                                                  selectedPricelist[
                                                                      3] +
                                                                  selectedPricelist[
                                                                      4] +
                                                                  selectedPricelist[
                                                                      5] +
                                                                  selectedPricelist[
                                                                      6];
                                                              if(memoryAbleList[index].contains('불가')) {
                                                                lowSpac = true;
                                                                SpacDialog(context, partlist[3]);
                                                                programbool[3] = true;
                                                              }
                                                              else {
                                                                lowSpac = false;
                                                                programbool[3] = false;
                                                              }
                                                            });
                                                          }), cpuAbleList[index], selectIndex3[index])
                                                  : partbool[4]
                                                      ? partBox(
                                                          context,
                                                          selectedPartlist[4],
                                                          ssdList[index],
                                                          ssdPrice[index],
                                                          OutlinedButton(
                                                              child: Text('교체'),
                                                              onPressed: () {
                                                                setState(() {
                                                                  selectedPartlist[
                                                                          4] =
                                                                      ssdList[
                                                                          index];
                                                                  for(int i = 0; i < 6; i++) {
                                                                    if(i == index) {
                                                                      selectIndex4[i] = true;
                                                                    } else {
                                                                      selectIndex4[i] = false;
                                                                    }
                                                                  }
                                                                  selectedPricelist[
                                                                          4] =
                                                                      ssdPrice[
                                                                          index];
                                                                  cost = selectedPricelist[0] +
                                                                      selectedPricelist[
                                                                          1] +
                                                                      selectedPricelist[
                                                                          2] +
                                                                      selectedPricelist[
                                                                          3] +
                                                                      selectedPricelist[
                                                                          4] +
                                                                      selectedPricelist[
                                                                          5] +
                                                                      selectedPricelist[
                                                                          6];
                                                                  if(ssdAbleList[index].contains('불가')) {
                                                                    lowSpac = true;
                                                                    SpacDialog(context, partlist[4]);
                                                                    programbool[4] = true;
                                                                  }
                                                                  else {
                                                                    lowSpac = false;
                                                                    programbool[4] = false;
                                                                  }
                                                                });
                                                              }), cpuAbleList[index], selectIndex4[index])
                                                      : partbool[5]
                                                          ? partBox(
                                                              context,
                                                              selectedPartlist[
                                                                  5],
                                                              hardList[index],
                                                              hardPrice[index],
                                                              OutlinedButton(
                                                                  child: Text(
                                                                      '교체'),
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      selectedPartlist[
                                                                              5] =
                                                                          hardList[
                                                                              index];
                                                                      for(int i = 0; i < 6; i++) {
                                                                        if(i == index) {
                                                                          selectIndex5[i] = true;
                                                                        } else {
                                                                          selectIndex5[i] = false;
                                                                        }
                                                                      }
                                                                      selectedPricelist[
                                                                              5] =
                                                                          hardPrice[
                                                                              index];
                                                                      cost = selectedPricelist[0] +
                                                                          selectedPricelist[
                                                                              1] +
                                                                          selectedPricelist[
                                                                              2] +
                                                                          selectedPricelist[
                                                                              3] +
                                                                          selectedPricelist[
                                                                              4] +
                                                                          selectedPricelist[
                                                                              5] +
                                                                          selectedPricelist[
                                                                              6];
                                                                      if(hardAbleList[index].contains('불가')) {
                                                                        lowSpac = true;
                                                                        SpacDialog(context, partlist[5]);
                                                                        programbool[5] = true;
                                                                      }
                                                                      else {
                                                                        lowSpac = false;
                                                                        programbool[5] = false;
                                                                      }
                                                                    });
                                                                  }), cpuAbleList[index], selectIndex5[index])
                                                          : partBox(
                                                              context,
                                                              selectedPartlist[
                                                                  6],
                                                              powerList[index],
                                                              powerPrice[index],
                                                              OutlinedButton(
                                                                  child: Text(
                                                                      '교체'),
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      selectedPartlist[
                                                                              6] =
                                                                          powerList[
                                                                              index];
                                                                      for(int i = 0; i < 6; i++) {
                                                                        if(i == index) {
                                                                          selectIndex6[i] = true;
                                                                        } else {
                                                                          selectIndex6[i] = false;
                                                                        }
                                                                      }
                                                                      selectedPricelist[
                                                                              6] =
                                                                          powerPrice[
                                                                              index];
                                                                      cost = selectedPricelist[0] +
                                                                          selectedPricelist[
                                                                              1] +
                                                                          selectedPricelist[
                                                                              2] +
                                                                          selectedPricelist[
                                                                              3] +
                                                                          selectedPricelist[
                                                                              4] +
                                                                          selectedPricelist[
                                                                              5] +
                                                                          selectedPricelist[
                                                                              6];
                                                                      if(powerAbleList[index].contains('불가')) {
                                                                        lowSpac = true;
                                                                        SpacDialog(context, partlist[6]);
                                                                        programbool[6] = true;
                                                                      }
                                                                      else {
                                                                        lowSpac = false;
                                                                        programbool[6] = false;
                                                                      }
                                                                    });
                                                                  }), cpuAbleList[index], selectIndex6[index]);
                                  // 여기 까지 복붙해서 치환해넣으시고 안태형병신 (매개변수추가에 따른 인스턴스 추가 및 onPressed 에 for문 추가)
                                }),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('담은 금액 : ${cost}원',
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold)),
                            cost > int.parse(widget.setPrice) * 10000
                                ? GestureDetector(
                                    child: Icon(
                                      Icons.warning_amber_rounded,
                                      color: Colors.red,
                                      size: 50,
                                    ),
                                    onTap: () {
                                      if(partbool[0]) CostDialog(context, partlist[0]);
                                      else if(partbool[1]) CostDialog(context, partlist[1]);
                                      else if(partbool[2]) CostDialog(context, partlist[2]);
                                      else if(partbool[3]) CostDialog(context, partlist[3]);
                                      else CostDialog(context, partlist[1]);
                                    })
                                : SizedBox(width: 50),
                          ]),
                      SizedBox(height: 70),
                    ],
                  ),
                ),
              ],
            )
          ])),
          //여기도 레이아웃 바꿨음 이 컬럼 자체 복붙해서 치환하면 될거임 안태형병신
          Column(children: [
            SizedBox(
                height: _scrollController.hasClients
                    ? MediaQuery.of(context).size.height * 0.84 +
                        _scrollController.offset
                    : MediaQuery.of(context).size.height * 0.84),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Row(
                children: [
                  SizedBox(width:50),
                  TextButton(
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                        Border.all(color: Colors.deepPurpleAccent, width: 2.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '이전',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.deepPurple),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.deepPurpleAccent, width: 2.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '다음',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.deepPurple),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ThirdPage()));
                    },
                  ),
                  SizedBox(width:50)
                ],
              ),
            ])
          ])
          //여기까지 치환 안태형병신
        ],
      ),
    ));
  }
}

// 이 메소드만 수정 했음(매개변수 수정, container boxdecoration 속성의 color 속성 추가  안태형병신
Widget partBox(context, selectedPart, partName, partPrice, Widget, ableList, selectedIndex) {
  _SecondPageState parent = context.findAncestorStateOfType<_SecondPageState>();

  return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
          //seletedIndex 에 따른 컬러설정 - 이부분 수정 안태형병신
          color: selectedIndex ? Colors.purpleAccent : Colors.white,
      ),
      child: Row(children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Row(children: [
            Expanded(
              child: Image.asset('assets/core.png'),
            )
          ]),
        ),
        SizedBox(width: 20),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.38 - 150,
            height: 150,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(partName,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      )),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          width: 80,
                          child: Container(
                              height: 20,
                              child: Row(
                                children: [
                                  Text(ableList,
                                      style: TextStyle(fontSize: 7)),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        '${partPrice}원',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Widget,
                  ])
                ])),
      ]));
}

void FlutterDialog(context, partlist1, partlist2) {
  showDialog(
      context: context,
      //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          //Dialog Main Title
          title: Column(
            children: <Widget>[
              new Text(
                "호환성 경고",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                partlist1 + "와 " + partlist2 + '부품이',
              ),
              Text('호환되지 않습니다.'),
            ],
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("확인"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}

void CostDialog(context, part) {
  showDialog(
      context: context,
      //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          //Dialog Main Title
          title: Column(
            children: <Widget>[
              new Text(
                "예산 초과",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '예산이 초과 되었습니다.',
              ),
              Text(part + '가 오버스펙 입니다.'),
            ],
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("확인"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}


void SpacDialog(context, part) {
  showDialog(
      context: context,
      //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          //Dialog Main Title
          title: Column(
            children: <Widget>[
              new Text(
                "성능 부족",
                style:
                TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '목적에 맞는 프로그램을 돌리기에',
              ),
              Text(part + '의 성능이 부족합니다.'),
            ],
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("확인"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}
