//
//  PeopleDetailsViewModel.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

protocol PeopleDetailsContract {
    var people: People { get }
}
final class PeopleDetailsViewModel: PeopleDetailsContract {
    var people: People
    init(people: People) {
        self.people = people
    }
}
