import 'package:b_stories/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<B extends BlocBase<S>, S> extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final Widget body;

  final bool? resizeToAvoidBottomInset;
  final bool safeArea;
  final Widget? drawer;

  /// Hàm khởi tạo bloc.
  final B Function(BuildContext) bloc;

  /// Lấy cờ loading từ state (VD: (s) => s.isLoading).
  final bool Function(S state) loadingSelector;

  /// Callback tuỳ chọn sau khi tạo bloc (VD: add event khởi tạo).
  final void Function(B bloc)? onCreate;

  const BaseView({
    super.key,
    required this.bloc,
    required this.loadingSelector,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.resizeToAvoidBottomInset,
    this.safeArea = false,
    this.drawer,
    this.onCreate,
  });

  @override
  State<BaseView<B, S>> createState() => _BaseViewState<B, S>();
}

class _BaseViewState<B extends BlocBase<S>, S> extends State<BaseView<B, S>> {
  late final B _bloc;

  void _applyLoading(bool isLoading) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isLoading) {
        if (!EasyLoading.isShow) EasyLoading.show();
      } else {
        if (EasyLoading.isShow) EasyLoading.dismiss();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _bloc = widget.bloc(context);
    widget.onCreate?.call(_bloc);
    // Áp dụng trạng thái loading ban đầu
    _applyLoading(widget.loadingSelector(_bloc.state));
  }

  @override
  void dispose() {
    if (EasyLoading.isShow) EasyLoading.dismiss();
    _bloc.close(); // BaseView sở hữu bloc nên tự đóng
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>.value(
      value: _bloc,
      child: BlocListener<B, S>(
        listenWhen: (prev, curr) =>
            widget.loadingSelector(prev) != widget.loadingSelector(curr),
        listener: (context, state) {
          _applyLoading(widget.loadingSelector(state));
        },
        child: Scaffold(
          resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
          backgroundColor: AppColors.backgroundColor,
          drawer: widget.drawer,
          appBar: widget.appBar,
          bottomNavigationBar: widget.bottomNavigationBar,
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).unfocus(),
            child: widget.safeArea ? SafeArea(child: widget.body) : widget.body,
          ),
          bottomSheet: widget.bottomSheet,
        ),
      ),
    );
  }
}
