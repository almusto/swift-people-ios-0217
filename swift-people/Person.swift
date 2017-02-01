//
//  Person.swift
//  swift-people
//
//  Created by Alessandro Musto on 2/1/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation


class Person {
  let name: String
  fileprivate(set) var ageInYears: Int?
  fileprivate(set) var skills = Set<String>()

  var qualifiedTutor: Bool {
    return skills.count >= 4
  }


  init(name: String, ageInYears: Int?) {
    self.name = name
    self.ageInYears = ageInYears
  }

  convenience init(name: String) {
    self.init(name: name, ageInYears: nil)
  }

  convenience init() {
    self.init(name: "John Doe")
  }

  func celebrateBirthday() -> String {
    if var age = self.ageInYears {
      age += 1
      self.ageInYears = age
      let ageOrdinal = age.ordinal()
      return "HAPPY \(age)\(ageOrdinal.uppercased()) BIRTHDAY, \(name.uppercased())!!!"
    } else {
      let string = "happy birthday, \(name)!!!"
      return string.uppercased()
    }
  }

  func learnSkillBash() {
    skills.insert("bash")
  }

  func learnSkillXcode() {
    skills.insert("Xcode")
  }

  func learnSkillObjectiveC() {
    skills.insert("Objective-C")
  }

  func learnSkillSwift() {
    skills.insert("Swift")
  }

  func learnSkillInterfaceBuilder() {
    skills.insert("Interface Builder")
  }



}
