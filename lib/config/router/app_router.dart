import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen(), name: HomeScreen.name),
    GoRoute(path: '/buttons', builder: (context, state) => ButtonsScreen(), name: ButtonsScreen.name),
    GoRoute(path: '/cards', builder: (context, state) => CardsScreen(), name: CardsScreen.name),
    GoRoute(path: '/progress', builder: (context, state) => ProgressScreen(), name: ProgressScreen.name),
    GoRoute(path: '/snackbars', builder: (context, state) => SnackbarScreen(), name: SnackbarScreen.name),
    GoRoute(path: '/animated', builder: (context, state) => AnimatedScreen(), name: AnimatedScreen.name),
    GoRoute(path: '/ui-controls', builder: (context, state) => UiControlsScreen(), name: UiControlsScreen.name),
    GoRoute(path: '/tutorial', builder: (context, state) => AppTutorialScreen(), name: AppTutorialScreen.name),
  ]
);
