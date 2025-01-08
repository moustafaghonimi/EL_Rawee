import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:elrawee/Core/services/service_locator_get_it.dart';
import 'package:elrawee/Feathurs/auth/presention/view/sign_up/sign_up_view.dart';
import 'package:elrawee/Feathurs/auth/data/auth_cubit/cubit/cubit/auth_cubit.dart';
import 'package:elrawee/Feathurs/onBording/presentaion/view/on_bording_screen.dart';
import 'package:elrawee/Feathurs/splach/presention/view/splash_screen.dart';

import '../../Feathurs/auth/presention/view/sign_in/sign_in_view.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/OnBording',
    builder: (context, state) => OnBording(),
  ),
  GoRoute(
    path: '/SignIn',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignIn(),
    ),
  ),
  GoRoute(
    path: '/SignUpView',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignUpView(),
    ),
  ),
]);
