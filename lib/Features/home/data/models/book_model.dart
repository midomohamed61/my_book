class BookModel {
  final String kind;
  final int totalItems;
  final List<Item> items;

  BookModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

}

class Item {
  final Kind kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;
  final SearchInfo searchInfo;

  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

}

class AccessInfo {
  final Country country;
  final Viewability viewability;
  final bool embeddable;
  final bool publicDomain;
  final TextToSpeechPermission textToSpeechPermission;
  final Epub epub;
  final Epub pdf;
  final String webReaderLink;
  final AccessViewStatus accessViewStatus;
  final bool quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

}

enum AccessViewStatus {
  NONE,
  SAMPLE
}

enum Country {
  US
}

class Epub {
  final bool isAvailable;
  final String acsTokenLink;

  Epub({
    required this.isAvailable,
    required this.acsTokenLink,
  });

}

enum TextToSpeechPermission {
  ALLOWED,
  ALLOWED_FOR_ACCESSIBILITY
}

enum Viewability {
  NO_PAGES,
  PARTIAL
}

enum Kind {
  BOOKS_VOLUME
}

class SaleInfo {
  final Country country;
  final Saleability saleability;
  final bool isEbook;
  final SaleInfoListPrice listPrice;
  final SaleInfoListPrice retailPrice;
  final String buyLink;
  final List<Offer> offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.listPrice,
    required this.retailPrice,
    required this.buyLink,
    required this.offers,
  });

}

class SaleInfoListPrice {
  final double amount;
  final String currencyCode;

  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

}

class Offer {
  final int finskyOfferType;
  final OfferListPrice listPrice;
  final OfferListPrice retailPrice;
  final bool giftable;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
    required this.giftable,
  });

}

class OfferListPrice {
  final int amountInMicros;
  final String currencyCode;

  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

}

enum Saleability {
  FOR_SALE,
  NOT_FOR_SALE
}

class SearchInfo {
  final String textSnippet;

  SearchInfo({
    required this.textSnippet,
  });

}

class VolumeInfo {
  final String title;
  final List<String> authors;
  final String publisher;
  final String publishedDate;
  final String description;
  final List<IndustryIdentifier> industryIdentifiers;
  final ReadingModes readingModes;
  final int pageCount;
  final PrintType printType;
  final List<Category> categories;
  final MaturityRating maturityRating;
  final bool allowAnonLogging;
  final String contentVersion;
  final PanelizationSummary panelizationSummary;
  final ImageLinks imageLinks;
  final Language language;
  final String previewLink;
  final String infoLink;
  final String canonicalVolumeLink;
  final String subtitle;
  final int averageRating;
  final int ratingsCount;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    required this.subtitle,
    required this.averageRating,
    required this.ratingsCount,
  });

}

enum Category {
  COMPUTERS,
  MUSIC
}

class ImageLinks {
  final String smallThumbnail;
  final String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

}

class IndustryIdentifier {
  final Type type;
  final String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

}

enum Type {
  ISBN_10,
  ISBN_13,
  OTHER
}

enum Language {
  EN
}

enum MaturityRating {
  NOT_MATURE
}

class PanelizationSummary {
  final bool containsEpubBubbles;
  final bool containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

}

enum PrintType {
  BOOK
}

class ReadingModes {
  final bool text;
  final bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });

}
