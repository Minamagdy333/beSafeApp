import 'package:be_safe3/signals/api_signals.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

final mediciationSignal = futureSignal(repoSignal.value.fetchMedicication);

class MyMedications extends StatelessWidget {
  const MyMedications({super.key});
  static const String routName = "My Medications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Medications"),
        
      ),
      body: Center(
        child: Watch.builder(
          builder: (context) {
            final snapshot = mediciationSignal.value;
            if (snapshot.isLoading) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Error: ${snapshot.error}"),
                  ElevatedButton(
                    onPressed: mediciationSignal.refresh,
                    child: const Text("Refresh"),
                  ),
                ],
              );
            }
            if (!snapshot.hasValue || snapshot.value == null) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("No Data"),
                  ElevatedButton(
                    onPressed: mediciationSignal.refresh,
                    child: const Text("Refresh"),
                  ),
                ],
              );
            }
            final medications = snapshot.value!;
            return RefreshIndicator(
              onRefresh: mediciationSignal.refresh,
              child: ListView.builder(
                itemCount: medications.length,
                itemBuilder: (context, index) {
                  final medication = medications[index];
                  return ListTile(
                    title: Text(medication.name!),
                    subtitle: Text(medication.type!),
                    trailing: Text(medication.time!),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
