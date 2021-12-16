//
//  BaseTabBarController.swift
//  AppStoreJSONApi
//
//  Created by Стас Жингель on 15.12.2021.
//

import Foundation
import UIKit

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [createNavController(viewController: UIViewController(),title: "Today", imageName: "today"),
                           createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps"),
                           createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search")]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        let navViewController = UINavigationController(rootViewController: viewController)
        navViewController.tabBarItem.image = UIImage(named: imageName)
        navViewController.tabBarItem.title = title
        navViewController.navigationBar.prefersLargeTitles = true
        return navViewController
    }
}
