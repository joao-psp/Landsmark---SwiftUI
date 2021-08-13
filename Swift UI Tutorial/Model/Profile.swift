//
//  Profile.swift
//  Swift UI Tutorial
//
//  Created by João Pedro DTI on 13/08/21.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.summer
    var goalDate = Date()
    var githubURL = "joao-psp"
    var instaURL = "joao.psp"

    static let `default` = Profile(username: "joao.psp")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { self.rawValue }
    }
}
