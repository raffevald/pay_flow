import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';
// import 'package:pay_flow/shared/widget/dividar_vertical/dividar_vertical_widget.dart';
import 'package:pay_flow/shared/widget/set_label_buttons/set_label_buttons.dart';

// import '../../shared/widget/bttom_sheet/bottom_sheet_widget.dart';
// import 'package:pay_flow/shared/themes/appcolors.dart';
// import '../../shared/widget/label_button/label_button.dart';

class BarcadodeScannerPage extends StatefulWidget {
  BarcadodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcadodeScannerPage> createState() => _BarcadodeScannerPageState();
}

class _BarcadodeScannerPageState extends State<BarcadodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    // return BottomSheetWidget(
    //   title: "Não foi possivel identificar um código de barras",
    //   subtitle: "Tente escanear novamente ou digite o código do seu boleto.",
    //   primaryLabel: "Escanear novamente",
    //   primaryOnPressed: () {},
    //   secondaryLabel: "Digitar novamente",
    //   secondaryOnPressed: () {},
    // );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                "Escaneie o códico de barras do boleto",
                style: TextStyles.buttonBackground,
              ),
            ),
            // leading: BackButton(
            //   color: AppColors.background,
            // ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Inserir código do boleto",
            primaryOnPressed: () {},
            secondaryLabel: "Adicionar da galeria",
            secondaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
