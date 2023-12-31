import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DefaultPoliticaDePrivacidade extends StatelessWidget {
  const DefaultPoliticaDePrivacidade({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _abrirURL('https://www.google.com.br/'),
      child: const Text(
        "Política de Privacidade",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  void _abrirURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Não foi possível abrir o URL: $url';
    }
  }
}
