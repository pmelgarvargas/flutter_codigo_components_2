import 'package:codigo2_components_2/widgets/widget_card.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  bool encen1=false;
  bool encen2=false;
  bool encen3=false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      //contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.wallet, color: Colors.purple),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Change yor payment method",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Update your plan payment details.",
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          TextButton(
            onPressed: () {
              encen1=true;
              encen2=false;
              encen3=false;
              setState(() {  });
            },
            child: WidgetCard(
              imagen:
                  "https://pbs.twimg.com/profile_images/1417870168626274305/SQh0W_dC_400x400.jpg",
              tipo: "Visa",
              concolor: encen1,
            ),
          ),
          TextButton(
            onPressed: () {
              encen1=false;
              encen2=true;
              encen3=false;
              setState(() {  });
            },
            child: WidgetCard(
              imagen:
                  "https://brandemia.org/sites/default/files/sites/default/files/logo_mastercard-despues.jpg",
              tipo: "Mastercard",
              concolor: encen2,
            ),
          ),
          TextButton(
            onPressed: () {
              encen1=false;
              encen2=false;
              encen3=true;
              setState(() {  });
            },
            child: WidgetCard(
              imagen:
                  "https://elcomercio.pe/resizer/SbJMarQnWuq17uLaECbNA2cTB8U=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/7AH5QUCJNVFIXLTZEOSX4PEXDA.jpg",
              tipo: "Apple Pay",
              concolor: encen3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0,right: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.60),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.withOpacity(0.85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
