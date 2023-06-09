//
//  Person.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 09.06.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    
    static func getUser() -> User {
        User(
            login: "Maxim",
            password: "12345",
            person: Person(
                name: "Maxim",
                surname: "Shkryabin",
                age: 36,
                gender: .male,
                fotoPath: "foto.jpg",
                jobInformation: [
                    JobInformation(
                    title: "1S coder",
                    responsibilities: "Development of reports / processing and maintenance of configurations"),
                    JobInformation(
                    title: "IOS coder",
                    responsibilities: "Creation and support of applications")
                ],
                education: [
                    Education(
                        title: "Engineer",
                        speciality: "St. Petersburg State University of Telecommunications. prof. M.A. Bonch-Bruevich",
                        responsibilities: "Design and development of information management systems")
                ]
            )
                
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let gender: Gender
    let fotoPath: String
    let jobInformation: [JobInformation]
    let education: [Education]
}

enum Gender: String {
    case male = "Male"
    case female = "Female"
}

struct JobInformation {
    let title: String
    let responsibilities: String
}

struct Education {
    let title: String
    let speciality: String
    let responsibilities: String
}

