import 'package:go_router/go_router.dart';

void custemNavigationRouter(context, path) {
  GoRouter.of(context).push('/$path');
}

void custemNavigationRouterReplacement(context, path) {
  GoRouter.of(context).pushReplacement('/$path');
}
