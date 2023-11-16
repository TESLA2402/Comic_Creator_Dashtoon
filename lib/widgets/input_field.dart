import 'package:comic_creator_dashtoon/constants/color.dart';
import 'package:comic_creator_dashtoon/constants/typography.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextEditingController editingController;
  const InputField({super.key, required this.editingController});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.editingController,
      validator: (String? value) {
        if (value!.trim().isEmpty) {
          return 'Please Enter Description ';
        }

        return null;
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        prefixIcon: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => AppColors.gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: const Icon(Icons.edit_outlined),
        ),
        hintText: 'Describe the comic panel....',
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: null,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: AppColors.error[500]!)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: AppColors.error[500]!)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 1.5, color: AppColors.gray[200]!)),
        fillColor: AppColors.gray[100],
        hintStyle: AppTypography.textMd
            .copyWith(color: AppColors.gray[500], fontSize: 16),
        helperStyle: AppTypography.textSm.copyWith(color: AppColors.gray[400]),
        errorStyle: AppTypography.textSm.copyWith(color: AppColors.error[400]),
        iconColor: AppColors.gray[400],
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelStyle: AppTypography.textSm
            .copyWith(color: AppColors.gray[600], fontWeight: FontWeight.w500),
      ),
    );
  }
}
