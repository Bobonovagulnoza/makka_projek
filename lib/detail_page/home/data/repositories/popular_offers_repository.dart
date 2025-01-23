
import '../../../core/client.dart';
import '../models/special_offer_model.dart';

class SpecialOffersRepository {
  SpecialOffersRepository({required this.client});

  final ApiClient client;

  List<SpecialOfferModel> specialOffers = [];

  Future<List<SpecialOfferModel>> fetchSpecialOffers() async {
    if (specialOffers.isNotEmpty) return specialOffers;

    var rawSpecialOffers = await client.fetchSpecialOffers();
    specialOffers = rawSpecialOffers.map((offer) => SpecialOfferModel.fromJson(offer)).toList();
    specialOffers.sort((a, b) => a.order - b.order);
    return specialOffers;
  }
}
