import 'package:easy_learn/src/widgets/buttom_primary.dart';
import 'package:easy_learn/src/widgets/buttom_secondary.dart';
import 'package:easy_learn/src/widgets/input_text.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.ideographic,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: height * 0.3,
              ),
              Form(
                  autovalidateMode: AutovalidateMode.always,
                  onChanged: () {
                    Form.of(primaryFocus!.context!)!.save();
                  },
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.01,
                      ),
                      InputText(
                          label: "Nombre de usuario o correo",
                          iconPreffix: Icons.person),
                      Container(
                        height: height * 0.03,
                      ),
                      InputText(
                          label: "Contraseña",
                          iconPreffix: Icons.key,
                          iconSuffix: Icons.remove_red_eye),
                    ],
                  )),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () => {},
                    child: const Text(
                      '¿Olvidaste tu contraseña?',
                      style: TextStyle(fontSize: 12),
                    )),
              ),
              Container(
                height: height * 0.01,
              ),
              PrimaryButton(label: "Iniciar sesion"),
              Container(
                height: height * 0.02,
              ),
              SecondaryButton(label: 'Crear cuenta')
            ],
          ),
        ),
      ),
    ));
  }
}
