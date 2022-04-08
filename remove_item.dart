import 'package:fluent_ui/fluent_ui.dart';

class RemoveItem extends StatelessWidget {
  const RemoveItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
        color: const Color.fromARGB(234, 233, 233, 0),
        home: Column(
          children: const [
            TextBox(
              header: 'Notes',
              placeholder: 'Type your notes here',
            ),
          ],
        ));
  }
}
