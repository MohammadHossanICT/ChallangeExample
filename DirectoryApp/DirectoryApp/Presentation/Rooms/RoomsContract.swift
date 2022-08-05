//
//  RoomsContract.swift
//  DirectoryApp
//
//  Created by Mohammad on 04/08/22.
//

import Foundation

protocol RoomsViewModelInput {
    var view: RoomsViewBehaviour? {get}
    func getRooms() async
}

protocol RoomsViewModelOutput {
      var rooms: [Room] {get}
}

protocol RoomsViewBehaviour: AnyObject {
      func updateSnap()
      func showError(message: String)
      func showActivityIndicator()
      func hideActivityIndicator()
}
