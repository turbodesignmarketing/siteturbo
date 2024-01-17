enum ServiceTypeEnum {
  socialMedia(
    name: 'SOCIAL MEDIA',
    title: 'Trabalhamos com processos muito bem definidos!',
    subtitle: [
      'estudo de nicho',
      'criação de páginas',
      'planejamento e estratégia',
      'conteúdos',
      'legendas',
      'criativos',
      'agendamento',
      'análise de métricas mensal',
    ],
  ),
  branding(
    name: 'BRANDING',
    title:
        'Criamos uma identidade visual e um conceito único para a sua marca.',
    subtitle: [
      "estudo de nicho",
      "criação de conceito",
      "logotipo",
      "tipografia",
      "cores",
      "estampa",
      "elementos",
      "aplicações",
    ],
  ),
  sites(
    name: 'SITES',
    title: 'Expanda a sua presença de marca com um site.',
    subtitle: [],
  ),
  impressos(
    name: 'IMPRESSOS',
    title:
        'Seja um adesivo ou um outdoor, nós ajudamos a sua marca a estar presente em todos os meios.',
    subtitle: [],
  ),
  captacao(
    name: 'CAPTAÇÃO',
    title:
        'Sua marca precisa de fotos e vídeos autorais para ter mais alcance e gerar mais autoridade e conexão.',
    subtitle: [],
  ),
  ebooks(
    name: 'EBOOKS',
    title:
        'Entregue materiais atrativos e profissionais e impacte seus clientes.',
    subtitle: [],
  );

  const ServiceTypeEnum({
    required this.name,
    required this.title,
    required this.subtitle,
  });
  final String name;
  final String title;
  final List<String> subtitle;
}
