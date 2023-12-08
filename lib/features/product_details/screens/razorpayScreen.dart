import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class razorpay extends StatefulWidget {
  dynamic price;
  String productName;
  razorpay({required this.price, required this.productName});
  @override
  _razorpayState createState() => _razorpayState();
}

class _razorpayState extends State<razorpay> {
  Razorpay? _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay?.clear();
  }

  void openChecF() async {
    var options = {
      'key': 'rzp_test_k2g2Y9L9TH22B0',
      'amount': "${widget.price * 100}",
      'name': 'usama',
      'description': 'Payment',
      'prefill': {'contact': '9423204038', 'email': 'usamaiotexcel@gmail.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay?.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS PAYMENT: ${response.paymentId}", timeInSecForIosWeb: 4);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR HERE: ${response.code} - ${response.message}",
        timeInSecForIosWeb: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET IS : ${response.walletName}",
        timeInSecForIosWeb: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 21, 240, 36)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Payment',
          style: TextStyle(
              // backgroundColor: Colors.green,
              fontSize: 22.0,
              color: Color.fromARGB(255, 84, 104, 84)),
        ),
      ),
      body: Column(children: [
        const SizedBox(height: 16.0),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Text('\₹${widget.price}',
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade500)),
                  const SizedBox(height: 10.0),
                  Text('${widget.productName}',
                      style: TextStyle(color: Colors.black, fontSize: 30.0)),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 18.0),
        InkWell(
            onTap: () {
              openChecF();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Container(
                  width: MediaQuery.of(context).size.width - 60.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.amber),
                  child: const Center(
                      child: Text('Pay',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white)))),
            ))
      ]),
    );
  }
}
