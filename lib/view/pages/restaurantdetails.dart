import 'package:flutter/material.dart';
import 'package:foodie/view/Widgets/buttons.dart'; // Adjust import as per your project structure
import 'package:foodie/view/Widgets/inputfield.dart'; // Adjust import as per your project structure

class Restaurantdetails extends StatefulWidget {
  const Restaurantdetails({Key? key}) : super(key: key);

  @override
  _RestaurantdetailsState createState() => _RestaurantdetailsState();
}

class _RestaurantdetailsState extends State<Restaurantdetails> {
  int _currentStep = 0;
  final TextEditingController _restaurantNameController = TextEditingController();
  final TextEditingController _restaurantLocationController = TextEditingController();
  final TextEditingController _ownerNameController = TextEditingController();
  final TextEditingController _restaurantMenuController = TextEditingController();
  final TextEditingController _partnerContractController = TextEditingController();

  // List to store restaurant details
  List<Map<String, String>> restaurantDetails = [];

  void _proceedToNextStep() {
    setState(() {
      _currentStep++;
    });
  }

  void _saveRestaurantDetails() {
    // Save restaurant details to the list
    restaurantDetails.add({
      'restaurantName': _restaurantNameController.text,
      'restaurantLocation': _restaurantLocationController.text,
      'ownerName': _ownerNameController.text,
    });
    // Clear text controllers for next use
    _restaurantNameController.clear();
    _restaurantLocationController.clear();
    _ownerNameController.clear();
  }

  void _saveRestaurantMenu() {
    // Save restaurant menu to the list
    restaurantDetails.add({
      'restaurantMenu': _restaurantMenuController.text,
    });
    // Clear text controller for next use
    _restaurantMenuController.clear();
  }

  void _savePartnerContract() {
    // Save partner contract to the list
    restaurantDetails.add({
      'partnerContract': _partnerContractController.text,
    });
    // Clear text controller for next use
    _partnerContractController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (step) => setState(() => _currentStep = step),
                onStepContinue: _currentStep < 2
                    ? _proceedToNextStep
                    : _currentStep == 2
                        ? _savePartnerContract
                        : null,
                onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep--) : null,
                steps: [
                  Step(
                    title: const Text('Step 1'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputField(
                          hintText: 'Restaurant Name',
                          controller: _restaurantNameController,
                           onSubmitted: (String ) {  },
                        ),
                        const SizedBox(height: 16.0),
                        InputField(
                          hintText: 'Restaurant Location',
                          controller: _restaurantLocationController,
                           onSubmitted: (String ) {  },
                        ),
                        const SizedBox(height: 16.0),
                        InputField(
                          hintText: 'Owner Name',
                          controller: _ownerNameController,
                           onSubmitted: (String ) {  },
                        ),
                        const SizedBox(height: 30.0),
                        MyButton(
                          text: 'Proceed',
                          onTap: () {
                            _saveRestaurantDetails();
                            _proceedToNextStep();
                          },
                        ),
                      ],
                    ),
                  ),
                  Step(
                    title: const Text('Step 2'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputField(
                          hintText: 'Restaurant Menu',
                          controller: _restaurantMenuController,
                           onSubmitted: (String ) {  },
                        ),
                        const SizedBox(height: 30.0),
                        MyButton(
                          text: 'Proceed',
                          onTap: () {
                            _saveRestaurantMenu();
                            _proceedToNextStep();
                          },
                        ),
                      ],
                    ),
                  ),
                  Step(
                    title: const Text('Step 3'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputField(
                          hintText: 'Partner Contract',
                          controller: _partnerContractController,
                           onSubmitted: (String ) {  },
                        ),
                        const SizedBox(height: 30.0),
                        MyButton(
                          text: 'Save',
                          onTap: () {
                            _savePartnerContract();
                            // Optionally navigate to next screen or perform any final action
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
