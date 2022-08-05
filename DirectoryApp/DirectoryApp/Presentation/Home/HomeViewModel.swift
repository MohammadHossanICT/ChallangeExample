//
//  HomeViewModel.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation


final class HomeViewModel: HomeViewModelContract {
    
    let directoreis: [Directory] = [Directory(name:NSLocalizedString("peoples", comment: "") , iconName: "people"), Directory(name: NSLocalizedString("rooms", comment: ""), iconName: "room")]
    
    var numberOfItems: Int {
        return directoreis.count
    }
    
    func getDirectory(for index:Int)-> Directory {
        return directoreis[index]
    }
}
