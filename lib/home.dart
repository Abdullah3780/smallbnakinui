import "package:flutter/material.dart";

import 'customcontainer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showBankCards = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff070619),

        // backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/profilepic.png',
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hussain Saeed',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.wallet,
                              color: Colors.white,
                            ),
                            Text(
                              ' 2030.07 USD',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.09,
                    right: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            showBankCards = !showBankCards;
                          });
                        },
                        child: Text(
                          'Bank Cards',
                          style: TextStyle(
                              color: showBankCards == true
                                  ? Colors.black
                                  : Colors.white,
                              backgroundColor:
                                  showBankCards == true ? Colors.white : null),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text('Transactions',
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Fortune',
                            style: TextStyle(color: Colors.white)))
                  ],
                ),
              ),
              showBankCards == true
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: CustomContainer(
                        customColor: Color(0xff4372F0),
                        customWidget: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Account Summary',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Latest Statement Balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Text(
                                    '\$ 1678',
                                    style: TextStyle(
                                      color: Color(0xffEDB57D),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Minimum Payment Due',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                  ),
                                  Text(
                                    '\$ 167.8',
                                    style: TextStyle(
                                      color: Color(0xffEDB57D),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'On June 21, 2019',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
              showBankCards == true
                  ? Container()
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
              showBankCards == true
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: CustomContainer(
                        customColor: Color(0xff8552EA),
                        customWidget: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cashback 2019',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Image.asset('assets/cashbackrange.png'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '+63.98',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '+0.63%',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cashback Balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Cashback Rate',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
              showBankCards == true
                  ? Container()
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
              showBankCards == true
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: CustomContainer(
                        customColor: Color(0xff621CEF),
                        customWidget: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Statatistics',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    '+63.98',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Cashback Balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/graph.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
              showBankCards == true
                  ? Expanded(
                      child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffE7E9F8),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.075,
                            bottom: MediaQuery.of(context).size.height * 0.075,
                            left: MediaQuery.of(context).size.width * 0.15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your Cards',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.35,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xffF0618F),
                                        Color(0xffD675B1),
                                        Color(0xff7A6BE2),
                                        Color(0xff6C65BF)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xff000000),
                                        blurRadius: 0.5,
                                        offset: Offset(0.2, 0.2))
                                  ],
                                  borderRadius: BorderRadius.circular(12.2)),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.075,
                                    right: MediaQuery.of(context).size.width *
                                        0.075,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.01),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Chase Bank',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '\$1750',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '**** 3456',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Your Bank',
                              style: TextStyle(fontSize: 18),
                            ),
                            Row(
                              children: [
                                Icon(Icons.credit_card_outlined, size: 40),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chase Bank',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text('1 (800) 935-9935')
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'Add New',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ))
                  : Container()
            ],
          ),
        ));
  }
}
