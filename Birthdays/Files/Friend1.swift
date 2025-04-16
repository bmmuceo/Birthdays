//
//  Friend .swift
//  Birthdays
//
//  Created by RyanA on 4/16/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
}

