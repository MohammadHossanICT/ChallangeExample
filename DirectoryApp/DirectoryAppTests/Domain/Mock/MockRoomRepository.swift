//
//  MockRoomRepository.swift
//  DirectoryAppTests
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation
@testable import DirectoryApp

final class MockRoomRepository: RoomsRepository {
    
    var roomsRecords: [Room]?

    func getRooms() async throws -> [Room] {
        if roomsRecords == nil {
           throw  APIError.invalidData
       }
      return  roomsRecords!
    }
    
    func enqueueRoomsRecords(roomsRecords: [Room]) {
        self.roomsRecords = roomsRecords
    }
}
