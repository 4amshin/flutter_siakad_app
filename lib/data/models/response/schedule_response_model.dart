import 'dart:convert';

class ScheduleResponseModel {
  final List<Jadwal> data;

  ScheduleResponseModel({
    required this.data,
  });

  factory ScheduleResponseModel.fromJson(String str) =>
      ScheduleResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ScheduleResponseModel.fromMap(Map<String, dynamic> json) =>
      ScheduleResponseModel(
        data: List<Jadwal>.from(json["data"].map((x) => Jadwal.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Jadwal {
  final int id;
  final int scheduleId;
  final int studentId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Schedule schedule;
  final Student student;

  Jadwal({
    required this.id,
    required this.scheduleId,
    required this.studentId,
    required this.createdAt,
    required this.updatedAt,
    required this.schedule,
    required this.student,
  });

  factory Jadwal.fromJson(String str) => Jadwal.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Jadwal.fromMap(Map<String, dynamic> json) => Jadwal(
        id: json["id"],
        scheduleId: json["schedule_id"],
        studentId: json["student_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        schedule: Schedule.fromMap(json["schedule"]),
        student: Student.fromMap(json["student"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "schedule_id": scheduleId,
        "student_id": studentId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "schedule": schedule.toMap(),
        "student": student.toMap(),
      };
}

class Schedule {
  final int id;
  final int subjectId;
  final String hari;
  final String jamMulai;
  final String jamSelesai;
  final String ruangan;
  final String kodeAbsensi;
  final String tahunAkademik;
  final String semester;
  final String createdBy;
  final String updatedBy;
  final String deletedBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Subject subject;

  Schedule({
    required this.id,
    required this.subjectId,
    required this.hari,
    required this.jamMulai,
    required this.jamSelesai,
    required this.ruangan,
    required this.kodeAbsensi,
    required this.tahunAkademik,
    required this.semester,
    required this.createdBy,
    required this.updatedBy,
    required this.deletedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.subject,
  });

  factory Schedule.fromJson(String str) => Schedule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Schedule.fromMap(Map<String, dynamic> json) => Schedule(
        id: json["id"],
        subjectId: json["subject_id"],
        hari: json["hari"],
        jamMulai: json["jam_mulai"],
        jamSelesai: json["jam_selesai"],
        ruangan: json["ruangan"],
        kodeAbsensi: json["kode_absensi"],
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
        "hari": hari,
        "jam_mulai": jamMulai,
        "jam_selesai": jamSelesai,
        "ruangan": ruangan,
        "kode_absensi": kodeAbsensi,
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
  final Student dosen;

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
    required this.dosen,
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
        dosen: Student.fromMap(json["dosen"]),
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
        "dosen": dosen.toMap(),
      };
}

class Student {
  final int id;
  final String name;
  final String email;
  final String roles;
  final dynamic phone;
  final dynamic address;
  final DateTime emailVerifiedAt;
  final dynamic twoFactorSecret;
  final dynamic twoFactorRecoveryCodes;
  final dynamic twoFactorConfirmedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.roles,
    required this.phone,
    required this.address,
    required this.emailVerifiedAt,
    required this.twoFactorSecret,
    required this.twoFactorRecoveryCodes,
    required this.twoFactorConfirmedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Student.fromJson(String str) => Student.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Student.fromMap(Map<String, dynamic> json) => Student(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        roles: json["roles"],
        phone: json["phone"],
        address: json["address"],
        emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
        twoFactorSecret: json["two_factor_secret"],
        twoFactorRecoveryCodes: json["two_factor_recovery_codes"],
        twoFactorConfirmedAt: json["two_factor_confirmed_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "roles": roles,
        "phone": phone,
        "address": address,
        "email_verified_at": emailVerifiedAt.toIso8601String(),
        "two_factor_secret": twoFactorSecret,
        "two_factor_recovery_codes": twoFactorRecoveryCodes,
        "two_factor_confirmed_at": twoFactorConfirmedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
