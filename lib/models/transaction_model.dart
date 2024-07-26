class TransactionModel {
  String title;
  String date;
  String price;
  bool isWrapper = false;
  TransactionModel(
      {required this.title,
      required this.price,
      required this.date,
      required this.isWrapper});
}
