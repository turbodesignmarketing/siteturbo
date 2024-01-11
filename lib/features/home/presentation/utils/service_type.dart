enum ServiceType {
  socialMedia(
    name: 'SOCIAL MEDIA',
    commentary:
        'foco no conteúdo e design limpo, impactando o público alvo de verdade.',
  ),
  branding(
    name: 'BRANDING',
    commentary: 'esse é o ponto inicial!',
  ),
  consulting(
    name: 'CONSULTORIA',
    commentary: 'não é só fazer uma artezinha que vai funcionar!',
  ),
  website(
    name: 'SITE E LANDING PAGE',
    commentary: 'você ainda não sabe, mas precisa disso aqui!',
  ),
  printed(
    name: 'IMPRESSOS',
    commentary: 'a sua marca não vive só do digital',
  ),
  contentCapture(
    name: 'CAPTAÇÃO DE CONTEÚDO',
    commentary: 'calma, que não precisa fazer dancinha',
  ),
  ebook(
    name: 'EBOOK E APRESENTAÇÃO',
    commentary: 'são extensões da sua marca, então seja profissional',
  );

  const ServiceType({
    required this.name,
    required this.commentary,
  });

  final String name;
  final String commentary;
}
