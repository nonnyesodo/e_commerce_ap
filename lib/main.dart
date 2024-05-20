import 'package:eccomerce/features/home/presetntation/bloc/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/page route/page_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeCubit()),
        ],
        child: ScreenUtilInit(
            minTextAdapt: true,
            splitScreenMode: true,
            designSize: MediaQuery.sizeOf(context),
            builder: (context, child) {
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'ecommerce',
                  theme: ThemeData(
                      colorScheme:
                          ColorScheme.fromSeed(seedColor: Colors.white),
                      useMaterial3: true),
                  initialRoute: RouteName.onboard,
                  onGenerateRoute: AppRoute.onGeneratedRoute);
            }));
  }
}
