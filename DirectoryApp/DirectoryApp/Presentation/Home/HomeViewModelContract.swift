//
//  HomeViewModelContract.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

protocol HomeViewModelContract {
    var numberOfItems: Int { get }
    func getDirectory(for index:Int)-> Directory
}
