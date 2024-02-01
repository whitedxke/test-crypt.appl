import 'index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  GetIt.instance.registerSingleton<OnboardingRepository>(
    OnboardingRepository.getInstance(),
  );

  runApp(
    Application(),
  );
}
