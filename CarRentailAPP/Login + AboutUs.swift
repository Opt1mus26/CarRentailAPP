//
//  Login + AboutUs.swift
//  CarRentailAPP
//
//  Created by Pavel Tsyganov on 24.11.2021.
//

struct Login {
    var name: String
    var lastName: String
    var dateFrom: String
    var dateBefore: String
    
    var fullname: String {
        "\(name) \(lastName)"
    }
}

struct AboutUs {
    var name: String
    var lastName: String
    var address: String
    var email: String
    var phone: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
