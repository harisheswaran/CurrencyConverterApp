import 'package:flutter/material.dart';

class CurrencyConvertorPage extends StatefulWidget {
  const CurrencyConvertorPage({super.key});

  @override
  State<CurrencyConvertorPage> createState() => _CurrencyConvertorPageState();
}

class _CurrencyConvertorPageState extends State<CurrencyConvertorPage> {
    double result=0;
    final TextEditingController textEditingController=TextEditingController();
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(

          backgroundColor: Colors.grey,
          elevation: 0,
          title: const Text('WELCOME'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding:EdgeInsets.all(20.0),
              child:Text('Currency Convertor',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              ),
              Text(
                '₹ ${result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child:TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration:const InputDecoration(
                    hintText:'Please enter amount in USD',
                    hintStyle:TextStyle(
                      color:Colors.black,
                    ),
                    prefixIcon:Icon(Icons.money_off),
                    prefixIconColor:Colors.black,
                    focusedBorder:OutlineInputBorder(
                      borderSide:BorderSide(
                        color:Colors.black,
                        width:2.0,
                        style:BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(35)
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(
                        color:Colors.black,
                        width:5.0,
                        style:BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(35)
                      ),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result=double.parse(textEditingController.text)* 81;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.black),
                    foregroundColor: const MaterialStatePropertyAll(Colors.white),
                    minimumSize: const MaterialStatePropertyAll(Size(100, 50)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
                  ),
                  child: const Text('CONVERT') ,
                ),
              )
            ],
          ),
        )
    );
  }
}
