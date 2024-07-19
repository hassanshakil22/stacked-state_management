import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_management/screens/profile/profile_viewModel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        onViewModelReady: (viewModel) => viewModel.onmodelReady(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("profile"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.counter.toString(),
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: viewModel.addvalue, child: const Text("Add"))
                ],
              ),
            ),
          );
        });
  }
}
