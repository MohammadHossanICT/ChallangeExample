//
//  RoomsResponseDTO.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

struct RoomsDTO: Decodable {
    var createdAt: String
    var isOccupied: Bool
    var maxOccupancy: Int
    var id: String
}

// MARK: - Mappings to Domain

extension RoomsDTO {
    func toDomain() -> Room {
        return Room(createdAt:createdAt, occupiedMessage: isOccupied ? "Occupied" :"Not Occupied", maxOccupancy: maxOccupancy, id: id)
    }
}
