import 'package:flutter/material.dart';

enum PopupMenuPages {
  plataformaWidget,
  buildContextWidget,
  themeWidget,

  snackbarWidget,
  formulariosWidget,
  lendoArquivoJsonWidget,

  stack1Widget,
  stack2Widget,
  bottomNavigatorBarWidget,

  circleAvatarWidget,
  coresWidget,
  bannerWidget,
}

class PopupMenuButtonWidgetV1 extends StatelessWidget {
  const PopupMenuButtonWidgetV1({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupMenuPages>(
        // initialValue: PopupMenuPages.plataformaWidget,
        // icon: const Icon(Icons.restaurant_menu),
        onSelected: (PopupMenuPages valueSelected) {
      switch (valueSelected) {
        case PopupMenuPages.plataformaWidget:
          Navigator.pushNamed(context, '/plataforma');
          break;
        case PopupMenuPages.buildContextWidget:
          Navigator.pushNamed(context, '/buildcontext');
          break;
        case PopupMenuPages.themeWidget:
          Navigator.pushNamed(context, '/theme');
          break;
        case PopupMenuPages.snackbarWidget:
          Navigator.pushNamed(context, '/snackbar');
          break;
        case PopupMenuPages.formulariosWidget:
          Navigator.pushNamed(context, '/formularios');
          break;
        case PopupMenuPages.lendoArquivoJsonWidget:
          Navigator.pushNamed(context, '/lendo_arquivo_json');
          break;
        case PopupMenuPages.stack1Widget:
          Navigator.pushNamed(context, '/stack1');
          break;
        case PopupMenuPages.stack2Widget:
          Navigator.pushNamed(context, '/stack2');
          break;
        case PopupMenuPages.bottomNavigatorBarWidget:
          Navigator.pushNamed(context, '/bottomnavigatorbar');
          break;
        case PopupMenuPages.circleAvatarWidget:
          Navigator.pushNamed(context, '/circleavatar');
          break;
        case PopupMenuPages.coresWidget:
          Navigator.pushNamed(context, '/cores');
          break;
        case PopupMenuPages.bannerWidget:
          Navigator.pushNamed(context, '/banner');
          break;

        default:
      }
    }, itemBuilder: (BuildContext context) {
      return <PopupMenuItem<PopupMenuPages>>[
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.plataformaWidget, child: Text('Plataforma')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.buildContextWidget, child: Text('Build Context')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.themeWidget, child: Text('Theme Widget')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.snackbarWidget, child: Text('Snackbar')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.formulariosWidget, child: Text('Formularios')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.lendoArquivoJsonWidget, child: Text('Lendo Arquivo Json')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.stack1Widget, child: Text('Stack1')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.stack2Widget, child: Text('Stack2')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.bottomNavigatorBarWidget, child: Text('Bottom NavigatorBar')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.circleAvatarWidget, child: Text('Circle Avatar')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.coresWidget, child: Text('Cores')),
        const PopupMenuItem<PopupMenuPages>(value: PopupMenuPages.bannerWidget, child: Text('Banner Widget')),
      ];
    });
  }
}
