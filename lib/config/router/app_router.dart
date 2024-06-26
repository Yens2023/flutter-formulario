import 'package:flutter_formularios/presentation/screens/register_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_formularios/presentation/screens/bloc_counter_screen.dart';
import 'package:flutter_formularios/presentation/screens/cubit_counter_screen.dart';
import 'package:flutter_formularios/presentation/screens/home_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/cubits',
    builder: (context, state) => const CubitCounterScreen(),
  ),
  GoRoute(
    path: '/counter-bloc',
    builder: (context, state) => const BlocCounterScreen(),
  ),
  GoRoute(
    path: '/new-user',
    builder: (context, state) => const RegisterScreen(),
  ),
]);
