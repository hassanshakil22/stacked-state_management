import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_management/screens/home/home_viewModel.dart';
import 'package:state_management/screens/profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (viewModel) => viewModel.onModelReady(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Home"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.counter.toString(),
                    style: const TextStyle(fontSize: 50),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addvalue();
                      },
                      child: const Text("Add")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileView()),
                        ); // await lagany se wo navigator.push pr atak gaya aur osky pooray hony ke baad  wapis next line me rebuildui chalgyi
                        // viewModel.rebuildUi();
                      },
                      child: const Text("Go To Profile"))
                ],
              ),
            ),
          );
        });
  }
}
