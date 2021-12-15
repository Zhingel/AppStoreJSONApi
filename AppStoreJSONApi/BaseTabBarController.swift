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
        let appsViewController = UIViewController()
        appsViewController.view.backgroundColor = .white
        appsViewController.navigationItem.title = "Apps"
        let navAppsViewController = UINavigationController(rootViewController: appsViewController)
        navAppsViewController.tabBarItem.image = UIImage(named: "apps")
        navAppsViewController.tabBarItem.title = "Apps"
        navAppsViewController.navigationBar.prefersLargeTitles = true
        
        
        let searchViewController = UIViewController()
        searchViewController.navigationItem.title = "Search"
        searchViewController.view.backgroundColor = .white
        let navSearchViewController = UINavigationController(rootViewController: searchViewController)
        navSearchViewController.tabBarItem.image = UIImage(named: "search")
        navSearchViewController.title = "Search"
        navSearchViewController.navigationBar.prefersLargeTitles = true
    
        viewControllers = [navAppsViewController, navSearchViewController]
    }
}
