//
//  RoomRecord.swift
//  DirectoryApp
//
//  Created by   Mohammad on 04/08/22.
//

import Foundation

struct Room: Hashable {
    var createdAt: String
    var occupiedMessage: String
    var maxOccupancy: Int
    var id: String
}
