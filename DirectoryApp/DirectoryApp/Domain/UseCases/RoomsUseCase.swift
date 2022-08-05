//
//  RoomsUseCase.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.

import Foundation

protocol RoomsUseCase {
    func execute() async throws -> [Room]
}

final class DefaultRoomsUseCase {
    private var roomsRepository: RoomsRepository

    init(roomsRepository: RoomsRepository) {
        self.roomsRepository = roomsRepository
    }
}

extension DefaultRoomsUseCase: RoomsUseCase {
    func execute() async throws -> [Room] {
        do {
            return try await roomsRepository.getRooms()
        }catch {
          throw error
        }
    }
}
