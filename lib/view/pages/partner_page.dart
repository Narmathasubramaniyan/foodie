import 'package:flutter/material.dart';
import 'package:foodie/view/Widgets/buttons.dart';
import 'package:foodie/view/Widgets/inputfield.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnerPage extends StatefulWidget {
  const PartnerPage({super.key});

  @override
  _PartnerPageState createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
  final TextEditingController _restaurantNameController = TextEditingController();
  final TextEditingController _bankIFSCController = TextEditingController();
  final TextEditingController _bankAccountController = TextEditingController();
  final List<Map<String, String>> _partnerDetails = [];

  @override
  void dispose() {
    _restaurantNameController.dispose();
    _bankIFSCController.dispose();
    _bankAccountController.dispose();
    super.dispose();
  }

  void _savePartnerDetails() {
    String restaurantName = _restaurantNameController.text.trim();
    String bankIFSC = _bankIFSCController.text.trim();
    String bankAccount = _bankAccountController.text.trim();

    if (restaurantName.isNotEmpty && bankIFSC.isNotEmpty && bankAccount.isNotEmpty) {
      setState(() {
        _partnerDetails.add({
          'restaurantName': restaurantName,
          'bankIFSC': bankIFSC,
          'bankAccount': bankAccount,
        });
      });
      _restaurantNameController.clear();
      _bankIFSCController.clear();
      _bankAccountController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partner'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'For oncary for filling process',
            style: GoogleFonts.alice(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(height: 50.0),
          InputField(
            hintText: 'Your Restaurant Name',
            controller: _restaurantNameController,
            onSubmitted: (_) => _savePartnerDetails(),
          ),
          const SizedBox(height: 16.0),
          InputField(
            hintText: 'Bank IFSC',
            controller: _bankIFSCController,
            onSubmitted: (_) => _savePartnerDetails(),
          ),
          const SizedBox(height: 16.0),
          InputField(
            hintText: 'Bank Account Number',
            controller: _bankAccountController,
            onSubmitted: (_) => _savePartnerDetails(),
          ),
          const SizedBox(height: 30.0),
          MyButton(
            text: 'Save',
            onTap: _savePartnerDetails,
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: _partnerDetails.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_partnerDetails[index]['restaurantName']!),
                  subtitle: Text('IFSC: ${_partnerDetails[index]['bankIFSC']!}, Account: ${_partnerDetails[index]['bankAccount']!}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}