// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Company? company;
    

    Welcome({
        this.company,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        company: json["company"] == null ? null : Company.fromJson(json["company"]),
    );

    Map<String, dynamic> toJson() => {
        "company": company?.toJson(),
    };
}

class Company {
    int? isActive;
    String? name;
    Address? address;
    DateTime? established;
    List<Department>? departments;

    Company({
        this.isActive,
        this.name,
        this.address,
        this.established,
        this.departments,
    });

    factory Company.fromJson(Map<String, dynamic> json) => Company(
        isActive: json["is_active"],
        name: json["name"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        established: json["established"] == null ? null : DateTime.parse(json["established"]),
        departments: json["departments"] == null ? [] : List<Department>.from(json["departments"]!.map((x) => Department.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "is_active": isActive,
        "name": name,
        "address": address?.toJson(),
        "established": established?.toIso8601String(),
        "departments": departments == null ? [] : List<dynamic>.from(departments!.map((x) => x.toJson())),
    };
}

class Address {
    String? street;
    String? city;
    String? state;
    String? postalCode;

    Address({
        this.street,
        this.city,
        this.state,
        this.postalCode,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        postalCode: json["postalCode"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "postalCode": postalCode,
    };
}

class Department {
    String? deptId;
    String? name;
    String? manager;
    int? budget;
    int? year;
    Availability? availability;
    String? meetingTime;

    Department({
        this.deptId,
        this.name,
        this.manager,
        this.budget,
        this.year,
        this.availability,
        this.meetingTime,
    });

    factory Department.fromJson(Map<String, dynamic> json) => Department(
        deptId: json["deptId"],
        name: json["name"],
        manager: json["manager"],
        budget: json["budget"],
        year: json["year"],
        availability: json["availability"] == null ? null : Availability.fromJson(json["availability"]),
        meetingTime: json["meeting_time"],
    );

    Map<String, dynamic> toJson() => {
        "deptId": deptId,
        "name": name,
        "manager": manager,
        "budget": budget,
        "year": year,
        "availability": availability?.toJson(),
        "meeting_time": meetingTime,
    };
}

class Availability {
    bool? online;
    bool? inStore;

    Availability({
        this.online,
        this.inStore,
    });

    factory Availability.fromJson(Map<String, dynamic> json) => Availability(
        online: json["online"],
        inStore: json["inStore"],
    );

    Map<String, dynamic> toJson() => {
        "online": online,
        "inStore": inStore,
    };
}
