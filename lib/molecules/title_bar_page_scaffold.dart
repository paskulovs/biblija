import 'package:biblija/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitleBarPageScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final bool showBackButton;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final PreferredSizeWidget? headerWidget;

  const TitleBarPageScaffold({
    super.key,
    required this.body,
    required this.title,
    this.showBackButton = true,
    this.onBack,
    this.actions,
    this.headerWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: showBackButton ? _backButtonWidget(context) : null,
        title: Text(title),
        titleSpacing: _titleSpacing,
        leadingWidth: _leadingWidth,
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: actions,
        bottom: headerWidget,
      ),
      body: body,
    );
  }

  double get _titleSpacing {
    return showBackButton ? 0 : Constants.defaultTitleBarPagePadding.left;
  }

  double get _leadingWidth {
    return showBackButton ? Constants.defaultHeaderLeadingWidgetWidth : 0;
  }

  Widget _backButtonWidget(BuildContext context) {
    return GestureDetector(
      onTap: onBack ?? () {
        if(context.canPop()) {
          context.pop();
        }
      },
      child: const Icon(Icons.arrow_back),
    );
  }
}
