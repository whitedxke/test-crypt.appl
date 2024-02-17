import 'index.dart';

@RoutePage()
class RecoveryPage extends StatelessWidget {
  const RecoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RecoveryDelegate delegate = RecoveryDelegate(
      context: context,
    );
    return RecoveryView(
      protocol: delegate,
    );
  }
}

class RecoveryDelegate extends RecoveryProtocol {
  final BuildContext context;

  RecoveryDelegate({
    required this.context,
  });

  @override
  void navigateToContinue() {}
}
