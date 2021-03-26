import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sim_info/sim_info.dart';

class SimInformation extends StatefulWidget {
  @override
  _SimInformationState createState() => _SimInformationState();
}

class _SimInformationState extends State<SimInformation> {
  String _allowsVOIP;
  String _carrierName;
  String _isoCountryCode;
  String _mobileCountryCode;
  String _mobileNetworkCode;

  @override
  void initState() {
    super.initState();
    getSimInfo();
  }

  Future<void> getSimInfo() async {
    String allowsVOIP = await SimInfo.getAllowsVOIP;
    String carrierName = await SimInfo.getCarrierName;
    String isoCountryCode = await SimInfo.getIsoCountryCode;
    String mobileCountryCode = await SimInfo.getMobileCountryCode;
    String mobileNetworkCode = await SimInfo.getMobileNetworkCode;

    setState(() {
      _allowsVOIP = allowsVOIP;
      _carrierName = carrierName;
      _isoCountryCode = isoCountryCode;
      _mobileCountryCode = mobileCountryCode;
      _mobileNetworkCode = mobileNetworkCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USIM Infomation Plugin'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text('VOIP : $_allowsVOIP '),
          Text('CarrierName : $_carrierName'),
          Text('ISO CountryCode : $_isoCountryCode'),
          Text('Mobile CountryCode : $_mobileCountryCode'),
          Text('Mobile NetworkCode : $_mobileNetworkCode'),
        ],
      )),
    );
  }
}
