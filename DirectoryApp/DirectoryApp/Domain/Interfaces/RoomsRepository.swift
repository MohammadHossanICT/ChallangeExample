//
//  RoomsRepository.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

protocol RoomsRepository {
    func getRooms() async throws -> [Room]
}
