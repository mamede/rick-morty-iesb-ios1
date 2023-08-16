//
//  RMCharacterViewController.swift
//  rick-morty-iesb-ios1
//
//  Created by Felipe Mamede on 16/08/23.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)

        RMService.shared.execute(request, expecting: RMCharacters.self) { result in
        }
    }
    
    
}
