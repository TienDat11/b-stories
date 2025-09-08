// login_page.dart
import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/features/auth/auth_injector.dart';
import 'package:b_stories/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginBloc _loginBloc;
  @override
  void initState() {
    _loginBloc = authInjector.get();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _loginBloc.add(const LoginEvent.started());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginBloc, LoginState>(
      bloc: (_) => _loginBloc,
      // Lấy cờ loading từ state để EasyLoading show/hide
      loadingSelector: (s) => s.isLoading,
      appBar: AppBar(title: const Text('Đăng nhập')),
      // Bật SafeArea nếu bạn muốn
      // safeArea: true,
      body: const _LoginBody(),
    );
  }
}

class _LoginBody extends StatelessWidget {
  const _LoginBody();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const Text('Nội dung màn hình đăng nhập ở đây'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Ví dụ: trigger lại event khởi tạo
              context.read<LoginBloc>().add(const LoginEvent.started());
            },
            child: const Text('Đăng nhập'),
          ),
          const SizedBox(height: 16),
          // Nếu muốn rebuild UI theo state:
          BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return Text('isLoading: ${state.isLoading}');
            },
          ),
        ],
      ),
    );
  }
}
