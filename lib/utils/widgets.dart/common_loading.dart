import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/viewModel.dart';
import 'package:flutter/material.dart'; 

class LoadingIndicatorConsumer<V extends ViewModel> extends StatelessWidget {
  const LoadingIndicatorConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<V, bool>(
      selector: (_, V state) => state.isLoading,
      builder: (_, bool isLoading, __) => isLoading
          ? const Center(child: LoadingWidget())
          : const SizedBox.shrink(),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          // color: MyTheme.primaryLight,
          borderRadius: BorderRadius.circular(8),
        ), // Dialog background
        child: const CircularProgressIndicator(
          // color: MyTheme.white,
        ));
  }
}
