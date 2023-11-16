import 'package:comic_creator_dashtoon/constants/color.dart';
import 'package:comic_creator_dashtoon/constants/typography.dart';
import 'package:comic_creator_dashtoon/widgets/get_image.dart';
import 'package:comic_creator_dashtoon/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
  List<String> PanelInputs = [
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
    "Ranom Image",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black.withOpacity(0.75),
      // appBar: AppBar(
      //   title: const Text(''),
      // ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36, right: 48, left: 48),
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
                  crossAxisAlignment: ResponsiveBreakpoints.of(context).isMobile
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
                          width: ResponsiveBreakpoints.of(context).isMobile
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
                              InputField(editingController: _inputPanelOne),
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
                              InputField(editingController: _inputPanelTwo),
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
                              InputField(editingController: _inputPanelThree),
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
                              InputField(editingController: _inputPanelFour),
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
                              InputField(editingController: _inputPanelFive),
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
                              InputField(editingController: _inputPanelSix),
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
                              InputField(editingController: _inputPanelSeven),
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
                              InputField(editingController: _inputPanelEight),
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
                              InputField(editingController: _inputPanelNine),
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
                              InputField(editingController: _inputPanelTen),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    Center(
                        child: Container(
                      height: 48,
                      width: ResponsiveBreakpoints.of(context).isMobile
                          ? MediaQuery.of(context).size.width * 0.5
                          : MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          gradient: AppColors.gradient,
                          borderRadius: BorderRadius.circular(12)),
                      child: Opacity(
                        opacity: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: TextButton(
                              onPressed: () {
                                PanelInputs.clear();
                                PanelInputs.add(_inputPanelOne.text == ""
                                    ? "Random Image"
                                    : _inputPanelOne.text);
                                PanelInputs.add(_inputPanelTwo.text == ""
                                    ? "Random Image"
                                    : _inputPanelTwo.text);
                                PanelInputs.add(_inputPanelThree.text == ""
                                    ? "Random Image"
                                    : _inputPanelThree.text);
                                PanelInputs.add(_inputPanelFour.text == ""
                                    ? "Random Image"
                                    : _inputPanelFour.text);
                                PanelInputs.add(_inputPanelFive.text == ""
                                    ? "Random Image"
                                    : _inputPanelFive.text);
                                PanelInputs.add(_inputPanelSix.text == ""
                                    ? "Random Image"
                                    : _inputPanelSix.text);
                                PanelInputs.add(_inputPanelSeven.text == ""
                                    ? "Random Image"
                                    : _inputPanelSeven.text);
                                PanelInputs.add(_inputPanelEight.text == ""
                                    ? "Random Image"
                                    : _inputPanelEight.text);
                                PanelInputs.add(_inputPanelNine.text == ""
                                    ? "Random Image"
                                    : _inputPanelNine.text);
                                PanelInputs.add(_inputPanelTen.text == ""
                                    ? "Random Image"
                                    : _inputPanelTen.text);
                                setState(() {});
                                print(PanelInputs);
                              },
                              style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.symmetric(
                                              vertical: 16, horizontal: 20)),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      const Size.fromHeight(56))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Text("Generate Comic Panels",
                                        style: AppTypography.textMd.copyWith(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w500)),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36, right: 48, left: 48),
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
                  crossAxisAlignment: ResponsiveBreakpoints.of(context).isMobile
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Output",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: GridView.builder(
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              ResponsiveBreakpoints.of(context).isMobile
                                  ? 1
                                  : ResponsiveBreakpoints.of(context).isTablet
                                      ? 2
                                      : 2,
                          // childAspectRatio:
                          //     ResponsiveBreakpoints.of(context).isMobile
                          //         ? MediaQuery.of(context).size.width * 0.0035
                          //         : ResponsiveBreakpoints.of(context).isTablet
                          //             ? 1.4
                          //             : 1.3
                        ),
                        itemBuilder: (context, index) {
                          return FetchImage(imageText: "PanelInputs[index]");
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
