import 'package:comic_creator_dashtoon/constants/color.dart';
import 'package:comic_creator_dashtoon/constants/typography.dart';
import 'package:comic_creator_dashtoon/widgets/get_image.dart';
import 'package:comic_creator_dashtoon/widgets/input_field.dart';
import 'package:flutter/material.dart';
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
  List<String> panelInputs = [
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
    "Comic Panel",
  ];
  List<String> imagePaths = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black.withOpacity(0.75),
      // appBar: AppBar(
      //   title: const Text(''),
      // ),
      body: SingleChildScrollView(
        child: ResponsiveBreakpoints.of(context).isMobile
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 36, right: 48, left: 48, bottom: 36),
                    child: Container(
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
                      child: Column(
                        crossAxisAlignment:
                            ResponsiveBreakpoints.of(context).isMobile
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Input Form",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 24),
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
                                    const Text(
                                      "Panel 1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelOne),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 2",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelTwo),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 3",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelThree),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 4",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelFour),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 5",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelFive),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 6",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelSix),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 7",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelSeven),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 8",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelEight),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 9",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelNine),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 10",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelTen),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              )),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Center(
                                  child: Container(
                                height: 48,
                                width: ResponsiveBreakpoints.of(context)
                                        .isMobile
                                    ? MediaQuery.of(context).size.width * 0.5
                                    : MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    gradient: AppColors.gradient,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: TextButton(
                                        onPressed: () {
                                          panelInputs.clear();
                                          setState(() {
                                            _inputPanelOne.text == "";
                                            _inputPanelTwo.text == "";
                                            _inputPanelThree.text == "";
                                            _inputPanelFour.text == "";
                                            _inputPanelFive.text == "";
                                            _inputPanelSix.text == "";
                                            _inputPanelSeven.text == "";
                                            _inputPanelEight.text == "";
                                            _inputPanelNine.text == "";
                                            _inputPanelTen.text == "";
                                          });
                                          panelInputs = [
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                          ];
                                        },
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all<
                                                    EdgeInsets>(
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 20)),
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    const Size.fromHeight(56))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(children: [
                                              Text("Clear panels",
                                                  style: AppTypography.textMd
                                                      .copyWith(
                                                          color:
                                                              AppColors.black,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                              const SizedBox(
                                width: 4,
                              ),
                              Center(
                                  child: Container(
                                height: 48,
                                width: ResponsiveBreakpoints.of(context)
                                        .isMobile
                                    ? MediaQuery.of(context).size.width * 0.5
                                    : MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    gradient: AppColors.gradient,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: TextButton(
                                        onPressed: () {
                                          panelInputs.clear();
                                          panelInputs.add(
                                              _inputPanelOne.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelOne.text);
                                          panelInputs.add(
                                              _inputPanelTwo.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelTwo.text);
                                          panelInputs.add(
                                              _inputPanelThree.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelThree.text);
                                          panelInputs.add(
                                              _inputPanelFour.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelFour.text);
                                          panelInputs.add(
                                              _inputPanelFive.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelFive.text);
                                          panelInputs.add(
                                              _inputPanelSix.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelSix.text);
                                          panelInputs.add(
                                              _inputPanelSeven.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelSeven.text);
                                          panelInputs.add(
                                              _inputPanelEight.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelEight.text);
                                          panelInputs.add(
                                              _inputPanelNine.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelNine.text);
                                          panelInputs.add(
                                              _inputPanelTen.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelTen.text);
                                          setState(() {});
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           ComicStrip(
                                          //             panelInputs: panelInputs,
                                          //             imagePaths: imagePaths,
                                          //           )),
                                          // );
                                        },
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all<
                                                    EdgeInsets>(
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 20)),
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    const Size.fromHeight(56))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(children: [
                                              Text("Generate Comic Panels",
                                                  style: AppTypography.textMd
                                                      .copyWith(
                                                          color:
                                                              AppColors.black,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          )
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
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 0,
                              blurRadius: 5,
                              blurStyle: BlurStyle.solid)
                        ],
                      ),
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
                                  final box =
                                      context.findRenderObject() as RenderBox?;
                                  final scaffoldMessenger =
                                      ScaffoldMessenger.of(context);
                                  ShareResult shareResult;
                                  print(imagePaths);
                                  final files = <XFile>[];
                                  for (var i = 0; i < imagePaths.length; i++) {
                                    files.add(XFile(imagePaths[i],
                                        name: 'imageNames[i]'));
                                  }
                                  shareResult = await Share.shareXFiles(files,
                                      text: "text",
                                      subject: "subject",
                                      sharePositionOrigin:
                                          box!.localToGlobal(Offset.zero) &
                                              box.size);
                                },
                                child: const Text(
                                  "Output",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 24),
                                ),
                              ),
                            ],
                          ),
                          // FetchImage(imageText: "comic image"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 1.28,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: GridView.builder(
                              itemCount: 10,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 1
                                        : ResponsiveBreakpoints.of(context)
                                                .isTablet
                                            ? 2
                                            : 2,
                                // childAspectRatio:
                                //     ResponsiveBreakpoints.of(context).isMobile
                                //         ? MediaQuery.of(qcontext).size.width * 0.0035
                                //         : ResponsiveBreakpoints.of(context).isTablet
                                //             ? 1.4
                                //             : 1.3
                              ),
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: FetchImage(
                                    imageText:
                                        "comic panel with${panelInputs[index]}",
                                    imagePaths: imagePaths,
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //ComicStrip()
                ],
              )
            : Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 36, right: 48, left: 48, bottom: 36),
                    child: Container(
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
                      child: Column(
                        crossAxisAlignment:
                            ResponsiveBreakpoints.of(context).isMobile
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Input Form",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 24),
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
                                    const Text(
                                      "Panel 1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelOne),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 2",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelTwo),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 3",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelThree),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 4",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelFour),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 5",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelFive),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 6",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelSix),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 7",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelSeven),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 8",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelEight),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 9",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelNine),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Panel 10",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16),
                                    ),
                                    InputField(
                                        editingController: _inputPanelTen),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              )),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Center(
                                  child: Container(
                                height: 48,
                                width: ResponsiveBreakpoints.of(context)
                                        .isMobile
                                    ? MediaQuery.of(context).size.width * 0.5
                                    : MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    gradient: AppColors.gradient,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: TextButton(
                                        onPressed: () {
                                          panelInputs.clear();
                                          setState(() {
                                            _inputPanelOne.text == "";
                                            _inputPanelTwo.text == "";
                                            _inputPanelThree.text == "";
                                            _inputPanelFour.text == "";
                                            _inputPanelFive.text == "";
                                            _inputPanelSix.text == "";
                                            _inputPanelSeven.text == "";
                                            _inputPanelEight.text == "";
                                            _inputPanelNine.text == "";
                                            _inputPanelTen.text == "";
                                          });
                                          panelInputs = [
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                            "Comic Panel",
                                          ];
                                        },
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all<
                                                    EdgeInsets>(
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 20)),
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    const Size.fromHeight(56))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(children: [
                                              Text("Clear panels",
                                                  style: AppTypography.textMd
                                                      .copyWith(
                                                          color:
                                                              AppColors.black,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                              const SizedBox(
                                width: 4,
                              ),
                              Center(
                                  child: Container(
                                height: 48,
                                width: ResponsiveBreakpoints.of(context)
                                        .isMobile
                                    ? MediaQuery.of(context).size.width * 0.5
                                    : MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    gradient: AppColors.gradient,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: TextButton(
                                        onPressed: () {
                                          panelInputs.clear();
                                          panelInputs.add(
                                              _inputPanelOne.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelOne.text);
                                          panelInputs.add(
                                              _inputPanelTwo.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelTwo.text);
                                          panelInputs.add(
                                              _inputPanelThree.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelThree.text);
                                          panelInputs.add(
                                              _inputPanelFour.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelFour.text);
                                          panelInputs.add(
                                              _inputPanelFive.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelFive.text);
                                          panelInputs.add(
                                              _inputPanelSix.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelSix.text);
                                          panelInputs.add(
                                              _inputPanelSeven.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelSeven.text);
                                          panelInputs.add(
                                              _inputPanelEight.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelEight.text);
                                          panelInputs.add(
                                              _inputPanelNine.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelNine.text);
                                          panelInputs.add(
                                              _inputPanelTen.text == ""
                                                  ? "Random Image"
                                                  : _inputPanelTen.text);
                                          setState(() {});
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           ComicStrip(
                                          //             panelInputs: panelInputs,
                                          //             imagePaths: imagePaths,
                                          //           )),
                                          // );
                                        },
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all<
                                                    EdgeInsets>(
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 20)),
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    const Size.fromHeight(56))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(children: [
                                              Text("Generate Comic Panels",
                                                  style: AppTypography.textMd
                                                      .copyWith(
                                                          color:
                                                              AppColors.black,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          )
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
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 0,
                              blurRadius: 5,
                              blurStyle: BlurStyle.solid)
                        ],
                      ),
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
                                  final box =
                                      context.findRenderObject() as RenderBox?;
                                  final scaffoldMessenger =
                                      ScaffoldMessenger.of(context);
                                  ShareResult shareResult;
                                  print(imagePaths);
                                  final files = <XFile>[];
                                  for (var i = 0; i < imagePaths.length; i++) {
                                    files.add(XFile(imagePaths[i],
                                        name: 'imageNames[i]'));
                                  }
                                  shareResult = await Share.shareXFiles(files,
                                      text: "text",
                                      subject: "subject",
                                      sharePositionOrigin:
                                          box!.localToGlobal(Offset.zero) &
                                              box.size);
                                },
                                child: const Text(
                                  "Output",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 24),
                                ),
                              ),
                            ],
                          ),
                          // FetchImage(imageText: "comic image"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 1.28,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: GridView.builder(
                              itemCount: 10,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 1
                                        : ResponsiveBreakpoints.of(context)
                                                .isTablet
                                            ? 2
                                            : 2,
                                // childAspectRatio:
                                //     ResponsiveBreakpoints.of(context).isMobile
                                //         ? MediaQuery.of(qcontext).size.width * 0.0035
                                //         : ResponsiveBreakpoints.of(context).isTablet
                                //             ? 1.4
                                //             : 1.3
                              ),
                              itemBuilder: (context, index) {
                                return FetchImage(
                                  imageText:
                                      "comic panel with${panelInputs[index]}",
                                  imagePaths: imagePaths,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
