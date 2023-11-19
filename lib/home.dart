import 'package:comic_creator_dashtoon/constants/color.dart';
import 'package:comic_creator_dashtoon/main.dart';
import 'package:comic_creator_dashtoon/widgets/get_image.dart';
import 'package:comic_creator_dashtoon/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _inputPanelOne = TextEditingController();
  final TextEditingController _inputPanelTwo = TextEditingController();
  final TextEditingController _inputPanelThree = TextEditingController();
  final TextEditingController _inputPanelFour = TextEditingController();
  final TextEditingController _inputPanelFive = TextEditingController();
  final TextEditingController _inputPanelSix = TextEditingController();
  final TextEditingController _inputPanelSeven = TextEditingController();
  final TextEditingController _inputPanelEight = TextEditingController();
  final TextEditingController _inputPanelNine = TextEditingController();
  final TextEditingController _inputPanelTen = TextEditingController();
  final TextEditingController _inputPanelText = TextEditingController();
  List<String> panelInputs = [];
  List<String> imagePaths = [];
  List<String> bubbleText = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  bool changeColor = true;
  @override
  void initState() {
    setState(() {
      bubbleText = [
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
      ];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black.withOpacity(0.75),
      // appBar: AppBar(
      //   title: const Text(''),
      // ),
      body: ResponsiveBreakpoints.of(context).isMobile
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: ResponsiveBreakpoints.of(context).isMobile
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 36, right: 48, left: 48, bottom: 36),
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.8),
                      ),
                      child: Column(
                        crossAxisAlignment:
                            ResponsiveBreakpoints.of(context).isMobile
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              panelInputs.clear();
                              panelInputs.add(_inputPanelOne.text == ""
                                  ? "Random Image"
                                  : _inputPanelOne.text);
                              panelInputs.add(_inputPanelTwo.text == ""
                                  ? "Random Image"
                                  : _inputPanelTwo.text);
                              panelInputs.add(_inputPanelThree.text == ""
                                  ? "Random Image"
                                  : _inputPanelThree.text);
                              panelInputs.add(_inputPanelFour.text == ""
                                  ? "Random Image"
                                  : _inputPanelFour.text);
                              panelInputs.add(_inputPanelFive.text == ""
                                  ? "Random Image"
                                  : _inputPanelFive.text);
                              panelInputs.add(_inputPanelSix.text == ""
                                  ? "Random Image"
                                  : _inputPanelSix.text);
                              panelInputs.add(_inputPanelSeven.text == ""
                                  ? "Random Image"
                                  : _inputPanelSeven.text);
                              panelInputs.add(_inputPanelEight.text == ""
                                  ? "Random Image"
                                  : _inputPanelEight.text);
                              panelInputs.add(_inputPanelNine.text == ""
                                  ? "Random Image"
                                  : _inputPanelNine.text);
                              panelInputs.add(_inputPanelTen.text == ""
                                  ? "Random Image"
                                  : _inputPanelTen.text);
                              setState(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 4, bottom: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Generate Comic",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 24),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.green,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Form(
                              key: _formKey,
                              child: SizedBox(
                                width: ResponsiveBreakpoints.of(context)
                                        .isMobile
                                    ? MediaQuery.of(context).size.width * 0.5
                                    : MediaQuery.of(context).size.width * 0.3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 1",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(0);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelOne),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 2",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(1);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelTwo),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 3",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(2);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelThree),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 4",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(3);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelFour),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 5",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(4);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelFive),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 6",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(5);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelSix),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 7",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(6);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelSeven),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 8",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(7);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelEight),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(8);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelNine),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Panel 10",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _showDialog(9);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                right: 4,
                                                top: 4,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text(
                                              "Add Text",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InputField(
                                        editingController: _inputPanelTen),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 36, right: 48, left: 48, bottom: 36),
                    child: Container(
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.8),
                      ),
                      child: Column(
                        crossAxisAlignment:
                            ResponsiveBreakpoints.of(context).isMobile
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Share.shareXFiles(
                                  [XFile('assets/random_comic_panel.jpg')],
                                  text: 'Great picture');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 4, bottom: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Output",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 24),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // FetchImage(imageText: "comic image"),
                          const SizedBox(
                            height: 16,
                          ),
                          if (panelInputs.isNotEmpty)
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: GridView.builder(
                                itemCount: 10,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      ResponsiveBreakpoints.of(context).isMobile
                                          ? 2
                                          : ResponsiveBreakpoints.of(context)
                                                  .isTablet
                                              ? 2
                                              : 2,
                                ),
                                itemBuilder: (context, index) {
                                  return Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        FetchImage(
                                          imageText:
                                              "comic panel with${panelInputs[index]}",
                                          imagePaths: imagePaths,
                                        ),
                                        if (bubbleText[index] != "")
                                          Container(
                                              width: double.infinity,
                                              color: Colors.white,
                                              padding: EdgeInsets.all(4),
                                              child: Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      color: Colors.white),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                    child: Text(
                                                      bubbleText[index]
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.bangers(),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                      ]);
                                },
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                  //ComicStrip()
                ],
              ),
            )
          : Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 36, right: 48, left: 48, bottom: 36),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.8),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 0,
                              blurRadius: 5,
                              blurStyle: BlurStyle.solid)
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment:
                              ResponsiveBreakpoints.of(context).isMobile
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                panelInputs.clear();
                                panelInputs.add(_inputPanelOne.text == ""
                                    ? "Random Image"
                                    : _inputPanelOne.text);
                                panelInputs.add(_inputPanelTwo.text == ""
                                    ? "Random Image"
                                    : _inputPanelTwo.text);
                                panelInputs.add(_inputPanelThree.text == ""
                                    ? "Random Image"
                                    : _inputPanelThree.text);
                                panelInputs.add(_inputPanelFour.text == ""
                                    ? "Random Image"
                                    : _inputPanelFour.text);
                                panelInputs.add(_inputPanelFive.text == ""
                                    ? "Random Image"
                                    : _inputPanelFive.text);
                                panelInputs.add(_inputPanelSix.text == ""
                                    ? "Random Image"
                                    : _inputPanelSix.text);
                                panelInputs.add(_inputPanelSeven.text == ""
                                    ? "Random Image"
                                    : _inputPanelSeven.text);
                                panelInputs.add(_inputPanelEight.text == ""
                                    ? "Random Image"
                                    : _inputPanelEight.text);
                                panelInputs.add(_inputPanelNine.text == ""
                                    ? "Random Image"
                                    : _inputPanelNine.text);
                                panelInputs.add(_inputPanelTen.text == ""
                                    ? "Random Image"
                                    : _inputPanelTen.text);
                                setState(() {});
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 4, bottom: 4),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Generate Comic",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 24),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    MouseRegion(
                                      onEnter: (event) {
                                        setState(() {
                                          changeColor = !changeColor;
                                        });
                                      },
                                      onExit: (event) {
                                        setState(() {
                                          changeColor = !changeColor;
                                        });
                                      },
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: changeColor
                                            ? Colors.white
                                            : Colors.green,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Form(
                                key: _formKey,
                                child: SizedBox(
                                  width: ResponsiveBreakpoints.of(context)
                                          .isMobile
                                      ? MediaQuery.of(context).size.width * 0.5
                                      : MediaQuery.of(context).size.width * 0.3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 1",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(0);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelOne),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 2",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(1);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelTwo),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 3",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(2);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelThree),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 4",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(3);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelFour),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 5",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(4);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelFive),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 6",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(5);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelSix),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 7",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(6);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelSeven),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 8",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(7);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelEight),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 9",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(8);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelNine),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Panel 10",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              _showDialog(9);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                  top: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Text(
                                                "Add Text",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InputField(
                                          editingController: _inputPanelTen),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 36, right: 48, left: 48, bottom: 36),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.47,
                      height: MediaQuery.of(context).size.height * 0.9,
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.8),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 0,
                              blurRadius: 5,
                              blurStyle: BlurStyle.solid)
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment:
                              ResponsiveBreakpoints.of(context).isMobile
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    // final box = context.findRenderObject()
                                    //     as RenderBox?;
                                    // final scaffoldMessenger =
                                    //     ScaffoldMessenger.of(context);
                                    // ShareResult shareResult;
                                    // print(imagePaths);
                                    // final files = <XFile>[];
                                    // for (var i = 0;
                                    //     i < imagePaths.length;
                                    //     i++) {
                                    //   files.add(XFile(imagePaths[i],
                                    //       name: 'imageNames[i]'));
                                    // }
                                    // shareResult = await Share.shareXFiles(files,
                                    //     text: "text",
                                    //     subject: "subject",
                                    //     sharePositionOrigin:
                                    //         box!.localToGlobal(Offset.zero) &
                                    //             box.size);
                                    Share.shareXFiles([
                                      XFile('assets/random_comic_panel.jpg')
                                    ], text: 'Great picture');
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                        color:
                                            Colors.lightBlue.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Output",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 24),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 16,
                            ),
                            // FetchImage(imageText: "comic image"),
                            if (panelInputs.isNotEmpty)
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.9,
                                width: MediaQuery.of(context).size.width * 0.47,
                                child: GridView.builder(
                                  addAutomaticKeepAlives: true,
                                  itemCount: 10,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        ResponsiveBreakpoints.of(context)
                                                .isMobile
                                            ? 2
                                            : ResponsiveBreakpoints.of(context)
                                                    .isTablet
                                                ? 2
                                                : 2,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          FetchImage(
                                            imageText:
                                                "comic panel with${panelInputs[index]}",
                                            imagePaths: imagePaths,
                                          ),
                                          if (bubbleText[index].toString() !=
                                              "")
                                            Text(
                                              bubbleText[index],
                                              style: GoogleFonts.bangers(
                                                  color: Colors.white,
                                                  decorationColor:
                                                      Colors.yellow),
                                            )
                                          // Container(
                                          //     width: double.infinity,
                                          //     color: Colors.white,
                                          //     padding: EdgeInsets.all(4),
                                          //     child: Container(
                                          //       decoration: BoxDecoration(
                                          //           border: Border.all(
                                          //               color: Colors.black),
                                          //           color: Colors.white),
                                          //       child: Padding(
                                          //         padding: EdgeInsets.all(4.0),
                                          //         child: Text(
                                          //           // bubbleText[index]
                                          //           //     .toString(),
                                          //           "yes",
                                          //           // style:
                                          //           //     GoogleFonts.bangers(),
                                          //         ),
                                          //       ),
                                          //     )),
                                        ]);
                                  },
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  void _showDialog(int index) {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          title: Text(
            'Add text',
            style: GoogleFonts.bangers(color: Colors.white),
          ),
          content: InputField(editingController: _inputPanelText),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  bubbleText[index] = _inputPanelText.text;
                });
                Navigator.of(context).pop();
              },
              child: Container(
                padding:
                    const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 4),
                decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Ok",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w800,
                      fontSize: 12),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
