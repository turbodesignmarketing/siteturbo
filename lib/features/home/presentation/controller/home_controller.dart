import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  @observable
  List<ServiceTypeEnum> serviceOptions = <ServiceTypeEnum>[
    ServiceTypeEnum.socialMedia,
    ServiceTypeEnum.branding,
    ServiceTypeEnum.sites,
    ServiceTypeEnum.impressos,
    ServiceTypeEnum.captacao,
    ServiceTypeEnum.ebooks,
  ];

  @observable
  ServiceTypeEnum selectedServiceType = ServiceTypeEnum.socialMedia;

  @action
  void setSelectedServiceType(ServiceTypeEnum serviceType) {
    selectedServiceType = serviceType;
  }
}

enum ServiceTypeEnum {
  socialMedia('SOCIAL MEDIA'),
  branding('BRANDING'),
  sites('SITES'),
  impressos('IMPRESSOS'),
  captacao('CAPTAÇÃO'),
  ebooks('EBOOKS');

  final String name;
  const ServiceTypeEnum(this.name);
}