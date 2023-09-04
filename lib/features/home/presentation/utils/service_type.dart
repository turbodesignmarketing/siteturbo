enum ServiceType {
  socialMedia(name: 'SOCIAL MEDIA', commentary: 'foco no conteúdo e design limpo, impactando o público alvo de verdade.', titleWidth: 170),
  branding(name: 'BRANDING', commentary: 'esse é o ponto inicial!', titleWidth: 130),
  consulting(name: 'CONSULTORIA', commentary: 'não é só fazer uma artezinha que vai funcionar!', titleWidth: 165),
  website(name: 'SITE E LANDING PAGE', commentary: 'você ainda não sabe, mas precisa disso aqui!', titleWidth: 242),
  printed(name: 'IMPRESSOS', commentary: 'a sua marca não vive só do digital', titleWidth: 141),
  contentCapture(name: 'CAPTAÇÃO DE CONTEÚDO', commentary: 'calma, que não precisa fazer dancinha', titleWidth: 286),
  ebook(name: 'EBOOK E APRESENTAÇÃO', commentary: 'são extensões da sua marca, então seja profissional', titleWidth: 284);

  const ServiceType({required this.name, required this.commentary, required this.titleWidth,});

  final String name;
  final String commentary;
  final double titleWidth;
}
