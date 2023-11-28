import 'package:field_service/responsive/dimentions.dart';
import 'package:field_service/utils/viewModel.dart';
import 'package:field_service/utils/colors.dart';
import 'package:field_service/utils/widgets.dart/common_loading.dart';
import 'package:field_service/utils/widgets.dart/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResponsiveGreyLayout<VIEW_MODEL extends ViewModel> extends StatefulWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  ResponsiveGreyLayout(
      {required this.mobileBody, required this.desktopBody, super.key});

  @override
  State<ResponsiveGreyLayout<VIEW_MODEL>> createState() =>
      _ResponsiveGreyLayoutState<VIEW_MODEL>();
}

class _ResponsiveGreyLayoutState<VIEW_MODEL extends ViewModel>
    extends State<ResponsiveGreyLayout<VIEW_MODEL>> {
  @override
  void initState() {
    withViewModel<VIEW_MODEL>(context, (viewModel) {
      viewModel.onError = (String? msg) {
        if (msg != null) showFlutterToast(message: msg);
      };
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark.copyWith(
              // statusBarColor: MyTheme.red,
              statusBarColor: MyTheme.bgColor),
          child: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: [
                constraints.maxWidth < mobileWidth
                    ? widget.mobileBody
                    : widget.desktopBody,
                LoadingIndicatorConsumer<VIEW_MODEL>()
              ],
            ),
          ),
        );
      },
    );
  }
}
class ResponsiveBlueLayout<VIEW_MODEL extends ViewModel> extends StatefulWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  ResponsiveBlueLayout(
      {required this.mobileBody, required this.desktopBody, super.key});

  @override
  State<ResponsiveBlueLayout<VIEW_MODEL>> createState() =>
      _ResponsiveBlueLayoutState<VIEW_MODEL>();
}

class _ResponsiveBlueLayoutState<VIEW_MODEL extends ViewModel>
    extends State<ResponsiveBlueLayout<VIEW_MODEL>> {
  @override
  void initState() {
    withViewModel<VIEW_MODEL>(context, (viewModel) {
      viewModel.onError = (String? msg) {
        if (msg != null) showFlutterToast(message: msg);
      };
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark.copyWith( 
              statusBarColor: MyTheme.appColor),
          child: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: [
                constraints.maxWidth < mobileWidth
                    ? widget.mobileBody
                    : widget.desktopBody,
                LoadingIndicatorConsumer<VIEW_MODEL>()
              ],
            ),
          ),
        );
      },
    );
  }
}
