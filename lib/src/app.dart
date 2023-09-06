// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_preview/device_preview.dart';
import 'package:example_widgets/src/widgets_top1/banner_widget.dart';
import 'package:example_widgets/src/widgets_top1/botoes_widget.dart';
import 'package:example_widgets/src/widgets_top1/bottomnavigatorbar_widget.dart';
import 'package:example_widgets/src/widgets_top1/buildcontext_widget.dart';
import 'package:example_widgets/src/widgets_top1/circleavatar_widget.dart';
import 'package:example_widgets/src/widgets_top1/cores_widget.dart';
import 'package:example_widgets/src/widgets_top1/device_preview.dart';
import 'package:example_widgets/src/widgets_top1/dialogs_widget.dart';
import 'package:example_widgets/src/widgets_top1/formularios_widget.dart';
import 'package:example_widgets/src/widgets_top1/layoutbuilder_widget.dart';
import 'package:example_widgets/src/widgets_top1/listview_widget.dart';
import 'package:example_widgets/src/widgets_top1/mediaquery_widget.dart';
import 'package:example_widgets/src/widgets_top1/plataforma_widget.dart';
import 'package:example_widgets/src/widgets_top1/popupmenubutton_widget.dart';
import 'package:example_widgets/src/widgets_top1/rows_columns_widget.dart';
import 'package:example_widgets/src/widgets_top1/stack1_widget.dart';
import 'package:example_widgets/src/widgets_top1/stack2_widget.dart';
import 'package:example_widgets/src/widgets_top1/theme_widget.dart';
import 'package:flutter/material.dart';

import 'core/ui/theme/app_theme.dart';
import 'core/utls/app_routes.dart';
import 'pages/home/home_page.dart';
import 'widgets_top1/container_widget.dart';
import 'widgets_top1/fontes_page.dart';
import 'widgets_top1/images_widget.dart';
import 'widgets_top1/lendo_arquivo_json_widget.dart';
import 'widgets_top1/snackbar_widget.dart';

class MyApp extends StatefulWidget {
  final String title;
  const MyApp({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My APP',
      theme: MyAppTheme.themeData,
      // DevicePreview
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (ctx) => HomePageApp(title: widget.title),
        '/container1-widget': (ctx) => const ContainerWidget(),
        '/images-widget': (ctx) => const ImagesWidget(),
        '/fontes-page': (ctx) => const FontsPage(),
        '/popupmenubutton': (ctx) => const PopupmenubuttonWidget(),
        '/rows_columns': (ctx) => const RowsColumnsWidget(),
        '/mediaquery': (ctx) => const MediaqueryWidget(),
        '/device_preview': (ctx) => const DevicePreviewWidget(),
        '/layoutbuilder': (ctx) => const LayoutbuilderWidget(),
        '/botoes': (ctx) => const BotoesWidget(),
        '/listview': (ctx) => const ListviewWidget(),
        '/dialogs': (ctx) => const DialogsWidget(),
        '/plataforma': (ctx) => const PlataformaWidget(),
        '/buildcontext': (ctx) => const BuildContextWidget(),
        '/theme': (ctx) => const ThemeWidget(),
        '/snackbar': (ctx) => const SnackbarWidget(),
        '/formularios': (ctx) => const FormulariosWidget(),
        '/lendo_arquivo_json': (ctx) => const LendoArquivoJsonWidget(),
        '/stack1': (ctx) => const Stack1Widget(),
        '/stack2': (ctx) => const Stack2Widget(),
        '/bottomnavigatorbar': (ctx) => const BottomNavigatorBarWidget(),
        '/circleavatar': (ctx) => const CircleAvatarWidget(),
        '/cores': (ctx) => const CoresWidget(),
        '/banner': (ctx) => const BannerWidget(),
      },

      onGenerateRoute: (settings) {
        if (settings.name == '/alguma-coisa') {
          return null;
        } else if (settings.name == '/outra-coisa') {
          return null;
        } else {
          return MaterialPageRoute(builder: (_) {
            return HomePageApp(title: widget.title);
          });
        }
      },
      // funciona tipo fosse uma página 404
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) {
          return HomePageApp(title: widget.title);
        });
      },
    );
  }
}
