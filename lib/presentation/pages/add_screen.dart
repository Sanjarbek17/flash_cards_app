import 'package:flutter/material.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  static const String routeName = '/add';

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final controller = TextEditingController();
  String desrip = '';
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: const Color(0xFF2C1C6B),
        colorScheme: const ColorScheme.light().copyWith(secondary: const Color(0xFF200681)),
        cardColor: const Color(0xFFF8F9FC),
        textTheme: const TextTheme(bodyLarge: TextStyle(fontSize: 20, color: Color(0xFF2C1C6B))),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Flash Card'),
        ),
        body: Center(
          child: MarkdownTextInput(
            (String value) => setState(() => desrip = value),
            desrip,
            label: 'Description',
            maxLines: 10,
            actions: MarkdownType.values,
            controller: controller,
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
