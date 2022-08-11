//
//  MockPeopleRepository.swift
//  DirectoryAppTests
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation
@testable import DirectoryApp

final class MockPeopleRepository: PeoplesRepository {
    var peoplesRecords: [People]?

    func getPeoples() async throws -> [People] {
        if peoplesRecords == nil {
            throw  APIError.invalidData
        }
       return  peoplesRecords!
    }
    func getImages(for url: String) async throws -> Data {
        if url == "invalid" {
            throw  APIError.invalidData
        }
        return url.data(using: .utf8)!
    }    
    func enqueuePeopelesRecords(peoplesRecords: [People]) {
        self.peoplesRecords = peoplesRecords
    }
}
