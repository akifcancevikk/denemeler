import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());

class Users {
    final int temNo;
    final int temId;
    final String temKod;
    final String temAdi;
    final String temMail;
    final String temCepno;
    final int temAktifPasif;
    final int temCariFiltre;
    final String temCariler;
    final int temTemsilciFiltre;
    final String temTemsilciler;
    final String temSifre;
    final DateTime temSifredegistirmetarih;
    final String temOnaykodu;
    final String temGirisIp;
    final DateTime temGirisTarih;
    final DateTime temSonSiparisTarih;
    final String temMobile;

    Users({
        required this.temNo,
        required this.temId,
        required this.temKod,
        required this.temAdi,
        required this.temMail,
        required this.temCepno,
        required this.temAktifPasif,
        required this.temCariFiltre,
        required this.temCariler,
        required this.temTemsilciFiltre,
        required this.temTemsilciler,
        required this.temSifre,
        required this.temSifredegistirmetarih,
        required this.temOnaykodu,
        required this.temGirisIp,
        required this.temGirisTarih,
        required this.temSonSiparisTarih,
        required this.temMobile,
    });

    factory Users.fromMap(Map<String, dynamic> json) => Users(
        temNo: json["temNo"],
        temId: json["temId"],
        temKod: json["temKod"],
        temAdi: json["temAdi"],
        temMail: json["temMail"],
        temCepno: json["temCepno"],
        temAktifPasif: json["temAktifPasif"],
        temCariFiltre: json["temCariFiltre"],
        temCariler: json["temCariler"],
        temTemsilciFiltre: json["temTemsilciFiltre"],
        temTemsilciler: json["temTemsilciler"],
        temSifre: json["temSifre"],
        temSifredegistirmetarih: DateTime.parse(json["temSifredegistirmetarih"]),
        temOnaykodu: json["temOnaykodu"],
        temGirisIp: json["temGirisIp"],
        temGirisTarih: DateTime.parse(json["temGirisTarih"]),
        temSonSiparisTarih: DateTime.parse(json["temSonSiparisTarih"]),
        temMobile: json["temMobile"],
    );

    Map<String, dynamic> toMap() => {
        "temNo": temNo,
        "temId": temId,
        "temKod": temKod,
        "temAdi": temAdi,
        "temMail": temMail,
        "temCepno": temCepno,
        "temAktifPasif": temAktifPasif,
        "temCariFiltre": temCariFiltre,
        "temCariler": temCariler,
        "temTemsilciFiltre": temTemsilciFiltre,
        "temTemsilciler": temTemsilciler,
        "temSifre": temSifre,
        "temSifredegistirmetarih": temSifredegistirmetarih.toIso8601String(),
        "temOnaykodu": temOnaykodu,
        "temGirisIp": temGirisIp,
        "temGirisTarih": temGirisTarih.toIso8601String(),
        "temSonSiparisTarih": temSonSiparisTarih.toIso8601String(),
        "temMobile": temMobile,
    };
}
