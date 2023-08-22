//
//  ViewController.swift
//  rick-morty-iesb-ios1
//
//  Created by Felipe Mamede on 15/08/23.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()

        charactersVC.navigationItem.largeTitleDisplayMode = .automatic

        let nav = UINavigationController(rootViewController: charactersVC)

        nav.tabBarItem = UITabBarItem(title: "Characters",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)

        nav.navigationBar.prefersLargeTitles = true

        setViewControllers(
            [nav],
            animated: true
        )
    }
}

