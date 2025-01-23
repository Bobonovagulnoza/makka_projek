
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'detail_page/core/utils/sizes.dart';
import 'detail_page/package_detail/presantation/pages/package_detail_view.dart';
import 'detail_page/package_detail/presantation/pages/package_detail_view_model.dart';
import 'home_page/presentation/widgets/main_body_items.dart';
import 'onboarding/welcome_page_view.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // home: OnboardingView (),
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MainBodyItems();
      },
    ),
    GoRoute(path: '/batafsil',
      builder: (context, state) => PackageDetailView(viewModel: state.extra as PackageDetailViewModel),)
  ],
);
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'detail_page/core/client.dart';
// import 'detail_page/core/utils/sizes.dart';
// import 'detail_page/core/utils/theme.dart';
// import 'detail_page/package_detail/data/repositories/package_repository.dart';
// import 'detail_page/package_detail/presantation/pages/package_detail_view.dart';
// import 'detail_page/package_detail/presantation/pages/package_detail_view_model.dart';
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//   runApp(const TravelApp());
// }
//
// class TravelApp extends StatelessWidget {
//   const TravelApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     AppSizes.init(context);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: AppThemes.lightTheme,
//       home: PackageDetailView(
//         viewModel: PackageDetailViewModel(
//           repo: PackageRepository(
//             client: ApiClient(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
