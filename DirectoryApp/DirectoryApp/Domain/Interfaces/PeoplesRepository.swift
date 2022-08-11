//
//  PeoplesRepository.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

protocol PeoplesRepository {
   func getPeoples() async throws -> [People]
   func getImages(for url: String) async throws -> Data 
}

protocol ImageCacher {
    func getImage(url: String) -> Data?
    func saveImage(url: String, data: Data)
}
