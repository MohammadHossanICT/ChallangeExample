//
//  MockRoomsUseCase.swift
//  DirectoryAppTests
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation
import XCTest
@testable import DirectoryApp


class MockRoomsUseCase: RoomsUseCase {
    var roomsRecords: [Room]?
    
   func execute() async throws -> [Room] {
        if roomsRecords == nil {
           throw  APIError.invalidData
       }
      return  roomsRecords!
    }
    
    func enqueueRoomsRecords(roomsRecords: [Room]) {
        self.roomsRecords = roomsRecords
    }
}

