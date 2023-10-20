import 'dart:convert';

class KhsResponseModel {
  final List<Khs> data;

  KhsResponseModel({
    required this.data,
  });

  factory KhsResponseModel.fromJson(String str) =>
      KhsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory KhsResponseModel.fromMap(Map<String, dynamic> json) =>
      KhsResponseModel(
        data: List<Khs>.from(json["data"].map((x) => Khs.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Khs {
  final int id;
  final int subjectId;
  final int studentId;
  final String nilai;
  final String grade;
  final String keterangan;
  final String tahunAkademik;
  final String semester;
  final String createdBy;
  final String updatedBy;
  final String deletedBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Subject subject;

  Khs({
    required this.id,
    required this.subjectId,
    required this.studentId,
    required this.nilai,
    required this.grade,
    required this.keterangan,
    required this.tahunAkademik,
    required this.semester,
    required this.createdBy,
    required this.updatedBy,
    required this.deletedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.subject,
  });

  factory Khs.fromJson(String str) => Khs.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Khs.fromMap(Map<String, dynamic> json) => Khs(
        id: json["id"],
        subjectId: json["subject_id"],
        studentId: json["student_id"],
        nilai: json["nilai"],
        grade: json["grade"],
        keterangan: json["keterangan"],
        tahunAkademik: json["tahun_akademik"],
        semester: json["semester"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        deletedBy: json["deleted_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        subject: Subject.fromMap(json["subject"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "subject_id": subjectId,
        "student_id": studentId,
        "nilai": nilai,
        "grade": grade,
        "keterangan": keterangan,
        "tahun_akademik": tahunAkademik,
        "semester": semester,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "deleted_by": deletedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "subject": subject.toMap(),
      };
}

class Subject {
  final int id;
  final int dosenId;
  final String title;
  final String semester;
  final String tahunAkademik;
  final int sks;
  final String kodeMatkul;
  final String deskripsi;
  final DateTime createdAt;
  final DateTime updatedAt;

  Subject({
    required this.id,
    required this.dosenId,
    required this.title,
    required this.semester,
    required this.tahunAkademik,
    required this.sks,
    required this.kodeMatkul,
    required this.deskripsi,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Subject.fromJson(String str) => Subject.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Subject.fromMap(Map<String, dynamic> json) => Subject(
        id: json["id"],
        dosenId: json["dosen_id"],
        title: json["title"],
        semester: json["semester"],
        tahunAkademik: json["tahun_akademik"],
        sks: json["sks"],
        kodeMatkul: json["kode_matkul"],
        deskripsi: json["deskripsi"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "dosen_id": dosenId,
        "title": title,
        "semester": semester,
        "tahun_akademik": tahunAkademik,
        "sks": sks,
        "kode_matkul": kodeMatkul,
        "deskripsi": deskripsi,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
