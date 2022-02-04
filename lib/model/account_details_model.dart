class AccountDetailsModel{
  String? name;
  String? month;
  String? receiptNo;
  String? penalty;
  String? tk;


  AccountDetailsModel(
  {this.name, this.month, this.receiptNo, this.penalty, this.tk,});

  //get
  factory AccountDetailsModel.fromMap(map){
    return AccountDetailsModel(
      name:  map['name'],
      month:  map['month'],
      receiptNo:  map['reciptNo'],
      penalty:  map['penalty'],
      tk:  map['tk'],
    );
  }

  //post
  Map<String, dynamic> toMap(){
    return {
      'name' : name,
      'month' : month,
      'reciptNo' : receiptNo,
      'penalty' : penalty,
      'tk' : tk,
    };
  }
}
