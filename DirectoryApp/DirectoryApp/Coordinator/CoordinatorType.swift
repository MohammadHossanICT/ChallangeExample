//
//  CoordinatorType.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation
import UIKit

protocol CoordinatorType: AnyObject {
    var navController: UINavigationController { get set }
    func start()
}
