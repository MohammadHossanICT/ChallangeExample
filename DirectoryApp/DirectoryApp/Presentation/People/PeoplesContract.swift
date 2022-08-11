//
//  PeoplesContract.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

protocol PeoplesViewBehaviour: AnyObject {
      func applySnapshot(animatingDifferences: Bool)
      func showError(message: String)
      func showActivityIndicator()
      func hideActivityIndicator()
}

protocol PeopleViewModelAction {
    func navigateToDetails(for index: Int)
}

protocol PeopleViewModelInput {
    func getPeoples() async
    func getPeopleImage(for index: Int, completion:@escaping (Data) -> Void)
}

protocol PeopleViewModelOutput {
    var peoples: [People] {get}
}
