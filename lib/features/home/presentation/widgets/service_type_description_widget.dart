import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/theme/app_colors.dart';

class ServiceTypeDescriptionWidget {
  static Widget buildSocialMedia() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderTextAdapter(
          text: 'Trabalhamos com\nprocessos muito bem\ndefinidos que incluem:',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        RenderTextAdapter(
          text:
              '• estudo de nicho\n• criação de páginas\n• planejamento e estratégia\n• copy (conteúdos)\n• legenda\n• criativos\n• agendamento\n• análise de métricas mensal',
          fontWeight: FontWeight.normal,
          color: AppColors.turboBlack,
          fontSize: 18,
          lineWeight: 1.3,
        ),
      ],
    );
  }

  static Widget buildBranding() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderTextAdapter(
          text:
              'Criamos uma identidade\nvisual e um conceito único\npara a sua marca.',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        RenderTextAdapter(
          text:
              "• estudo de nicho\n• criação de conceito\n• logotipo\n• tipografia\n• cores\n• estampa\n• elementos\n• aplicações",
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: AppColors.turboBlack,
          lineWeight: 1.3,
        ),
      ],
    );
  }

  static Widget buildConsulting() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderTextAdapter(
          text:
              'Passo a passo\nestratégico para\nvocê se posicionar\ncom objetivos e obter\nresultados reais.',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        RenderTextAdapter(
          text: "Mídias on e offline.",
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        RenderTextAdapter(
          text: "Análise completa que vai\nalém das suas redes sociais. ",
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: AppColors.turboBlack,
          lineWeight: 1.3,
        ),
      ],
    );
  }

  static Widget buildWebsite() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderTextAdapter(
          text: 'Expanda a sua\npresença de marca\ncom um site.',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
      ],
    );
  }

  static Widget buildPrinted() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderTextAdapter(
          text:
              'Seja um adesivo\nou um outdoor,\nnós ajudamos a\nsua marca a estar\npresente em todos\nos meios.',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
      ],
    );
  }

  static Widget buildContentCapture() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderTextAdapter(
          text:
              'Sua marca precisa\nde fotos e vídeos\nautorais para ter\nmais alcance e gerar\nmais autoridade e\nconexão. ',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
      ],
    );
  }

  static Widget buildEbook() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderTextAdapter(
          text:
              'Entregue materiais\natrativos e profissionais\ne impacte seus clientes.',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.turboBlack,
          lineWeight: 1,
        ),
      ],
    );
  }
}
