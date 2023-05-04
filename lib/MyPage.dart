import 'dart:html';

import 'package:cum_ez/secondPage.dart';
import 'package:flutter/material.dart';

class myPage extends StatefulWidget {
  const myPage({Key? key}) : super(key: key);

  @override
  State<myPage> createState() => _myPageState();
}

class _myPageState extends State<myPage> {
  final _valueList = ['게임', '문서작업', '그래픽작업'];
  final _valueListgame = ['배틀그라운드', '리그오브레전드', '카트라이더', '스타크래프트', '오버워치2'];
  final _valueListdoc = ['ppt', 'docs', 'excel'];
  final _valueListgrap = ['3dMax', 'AutoCAD', '포토샵', '일러스트', '애프터이펙트'];
  String _selectedValue = '게임';
  String _selectedValue1 = '게임';
  String _selectedValue2 = '게임';
  String _selectedValuedt = '리그오브레전드';
  String _selectedValuedt1 = '리그오브레전드';
  String _selectedValuedt2 = '리그오브레전드';
  bool isTrue = false;
  bool isTrue1 = false;
  String setPrice = '';
  var setPurpose = List<String>.filled(1, '리그오브레전드', growable: true);
  int budget = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset('assets/logo.png'),
                      )

                    ],
                  )
                ]
              ),
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '목적',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(
                                      color: Colors.black38, width: 3),
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.57),
                                        blurRadius: 5)
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, right: 8),
                                child: DropdownButton<String>(
                                    value: _selectedValue,
                                    items: _valueList.map((value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        if (value == '게임') {
                                          _selectedValuedt = '배틀그라운드';
                                        } else if (value == '문서작업') {
                                          _selectedValuedt = 'ppt';
                                        } else {
                                          _selectedValuedt = '3dMax';
                                        }
                                        _selectedValue = value!;
                                      });
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            isTrue
                                ? DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        //background color of dropdown button
                                        border: Border.all(
                                            color: Colors.black38, width: 3),
                                        //border of dropdown button
                                        borderRadius: BorderRadius.circular(50),
                                        //border raiuds of dropdown button
                                        boxShadow: <BoxShadow>[
                                          //apply shadow on Dropdown button
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.57),
                                              //shadow for button
                                              blurRadius: 5)
                                          //blur radius of shadow
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 8),
                                      child: DropdownButton<String>(
                                          value: _selectedValue1,
                                          items: _valueList.map((value) {
                                            return DropdownMenuItem(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              if (value == '게임') {
                                                _selectedValuedt1 = '배틀그라운드';
                                              } else if (value == '문서작업') {
                                                _selectedValuedt1 = 'ppt';
                                              } else {
                                                _selectedValuedt1 = '3dMax';
                                              }
                                              _selectedValue1 = value!;
                                                setPurpose[1] = _selectedValuedt1;

                                            });
                                          }),
                                    ),
                                  )
                                : SizedBox(),
                            SizedBox(
                              height: 20,
                            ),
                            isTrue1
                                ? DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        //background color of dropdown button
                                        border: Border.all(
                                            color: Colors.black38, width: 3),
                                        //border of dropdown button
                                        borderRadius: BorderRadius.circular(50),
                                        //border raiuds of dropdown button
                                        boxShadow: <BoxShadow>[
                                          //apply shadow on Dropdown button
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.57),
                                              //shadow for button
                                              blurRadius: 5)
                                          //blur radius of shadow
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 8),
                                      child: DropdownButton<String>(
                                        value: _selectedValue2,
                                        items: _valueList.map((value) {
                                          return DropdownMenuItem(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            if (value == '게임') {
                                              _selectedValuedt2 = '배틀그라운드';
                                            } else if (value == '문서작업') {
                                              _selectedValuedt2 = 'ppt';
                                            } else {
                                              _selectedValuedt2 = '3dMax';
                                            }
                                            _selectedValue2 = value!;
                                              setPurpose[2] = _selectedValuedt2;

                                          });
                                        },
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                !isTrue1
                                    ? IconButton(
                                        onPressed: () {
                                          if (!isTrue) {
                                            setState(() {
                                              isTrue = true;
                                              setPurpose.insert(1, _selectedValuedt1);
                                            });
                                          } else if (isTrue) {
                                            setState(() {
                                              isTrue1 = true;
                                              setPurpose.insert(2, _selectedValuedt2);
                                            });
                                          }
                                        },
                                        icon: Icon(Icons.add_circle_outline),
                                        iconSize: 50,
                                      )
                                    : SizedBox(),
                                isTrue
                                    ? IconButton(
                                        onPressed: () {
                                          if (isTrue1) {
                                            setState(() {
                                              isTrue1 = false;
                                              setPurpose.removeAt(2);
                                            });
                                          } else if (isTrue) {
                                            setState(() {
                                              isTrue = false;
                                              setPurpose.removeAt(1);
                                            });
                                          }
                                        },
                                        icon: Icon(Icons.clear),
                                        iconSize: 50,
                                      )
                                    : SizedBox(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '세부사항',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(
                                      color: Colors.black38, width: 3),
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.57),
                                        blurRadius: 5)
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, right: 8),
                                child: DropdownButton<String>(
                                    value: _selectedValuedt,
                                    items: _selectedValue == '게임'
                                        ? _valueListgame.map((value) {
                                            return DropdownMenuItem(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList()
                                        : _selectedValue == '문서작업'
                                            ? _valueListdoc.map((value) {
                                                return DropdownMenuItem(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList()
                                            : _valueListgrap.map((value) {
                                                return DropdownMenuItem(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedValuedt = value!;
                                        if(budget < 130) {
                                          if(value == '배틀그라운드') budget = 180;
                                          else if(value == 'AutoCAD') budget = 155;
                                          else if(value == '3dMax') budget = 130;
                                        } else if (budget < 155) {
                                          if(value == '배틀그라운드') budget = 180;
                                          else if(value == 'AutoCAD') budget = 155;
                                        } else if (budget < 180) {
                                          if(value == '배틀그라운드') budget = 180;
                                        }
                                        setPurpose[0] = value;
                                      });
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            isTrue
                                ? DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        //background color of dropdown button
                                        border: Border.all(
                                            color: Colors.black38, width: 3),
                                        //border of dropdown button
                                        borderRadius: BorderRadius.circular(50),
                                        //border raiuds of dropdown button
                                        boxShadow: <BoxShadow>[
                                          //apply shadow on Dropdown button
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.57),
                                              //shadow for button
                                              blurRadius: 5)
                                          //blur radius of shadow
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 8),
                                      child: DropdownButton<String>(
                                          value: _selectedValuedt1,
                                          items: _selectedValue1 == '게임'
                                              ? _valueListgame.map((value) {
                                                  return DropdownMenuItem(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList()
                                              : _selectedValue1 == '문서작업'
                                                  ? _valueListdoc.map((value) {
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList()
                                                  : _valueListgrap.map((value) {
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedValuedt1 = value!;
                                              if(budget < 130) {
                                                if(value == '배틀그라운드') budget = 180;
                                                else if(value == 'AutoCAD') budget = 155;
                                                else if(value == '3dMax') budget = 130;
                                              } else if (budget < 155) {
                                                if(value == '배틀그라운드') budget = 180;
                                                else if(value == 'AutoCAD') budget = 155;
                                              } else if (budget < 180) {
                                                if(value == '배틀그라운드') budget = 180;
                                              }
                                              setPurpose[1] = value;
                                            });
                                          }),
                                    ),
                                  )
                                : SizedBox(),
                            SizedBox(
                              height: 20,
                            ),
                            isTrue1
                                ? DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        //background color of dropdown button
                                        border: Border.all(
                                            color: Colors.black38, width: 3),
                                        //border of dropdown button
                                        borderRadius: BorderRadius.circular(50),
                                        //border raiuds of dropdown button
                                        boxShadow: <BoxShadow>[
                                          //apply shadow on Dropdown button
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.57),
                                              //shadow for button
                                              blurRadius: 5)
                                          //blur radius of shadow
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 8),
                                      child: DropdownButton<String>(
                                        value: _selectedValuedt2,
                                        items: _selectedValue2 == '게임'
                                            ? _valueListgame.map((value) {
                                                return DropdownMenuItem(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList()
                                            : _selectedValue2 == '문서작업'
                                                ? _valueListdoc.map((value) {
                                                    return DropdownMenuItem(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList()
                                                : _valueListgrap.map((value) {
                                                    return DropdownMenuItem(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedValuedt2 = value!;
                                            if(budget < 130) {
                                              if(value == '배틀그라운드') budget = 180;
                                              else if(value == 'AutoCAD') budget = 155;
                                              else if(value == '3dMax') budget = 130;
                                            } else if (budget < 155) {
                                              if(value == '배틀그라운드') budget = 180;
                                              else if(value == 'AutoCAD') budget = 155;
                                            } else if (budget < 180) {
                                              if(value == '배틀그라운드') budget = 180;
                                            }
                                            setPurpose[2] = value;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '예산',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      color: Colors.white,
                                    ),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      onChanged: (text) {
                                        setState(() {
                                          setPrice = text;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Text(
                                  '만원',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                              child: Text('추천 예산 : ${budget} ~ ${budget + 50}만원',
                                  style: TextStyle(fontSize: 20, color: Colors.grey),),
                            ),
                            SizedBox(
                              height: 250,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  child: Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.deepPurpleAccent, width: 2.0),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('다음',style: TextStyle(fontSize: 30,
                                            color: Colors.deepPurple),),
                                          ],
                                        ),
                                      ],
                                    ),

                                  ),
                                  onPressed: () {
                                    if(setPrice != '') {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage(setPrice: setPrice,
                                                    setPurpose: setPurpose,)));
                                    }
                                  },
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
