//
//  MokcPeopleUseCase.swift
//  DirectoryAppTests
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation
@testable import DirectoryApp
import XCTest

class MokcPeopleUseCase: PeopleUseCase {
    var peoplesRecords: [People]?
    func execute() async throws -> [People] {
        if peoplesRecords == nil {
            throw  APIError.invalidData
        }
       return  peoplesRecords!
    }
    func getImage(for url: String) async throws -> Data {
        if url == "invalid" {
            throw  APIError.invalidData
        }
        return url.data(using: .utf8)!
    }
    func enqueuePeopelesRecords(peoplesRecords: [People]) {
        self.peoplesRecords = peoplesRecords
    }
}
