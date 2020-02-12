//
//  ViewController.swift
//  sHeros
//
//  Created by Rodrigo Miyashiro on 24/01/20.
//  Copyright © 2020 Rodrigo Miyashiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func obtainCharacters1() {
        let network = DefaultHTTPClient()
        let characters = ObtainCharactersRequest(network: network)
        characters.obtainCharacters(1) { (characters, error) in
            if let _ = error {
                print("🕵️‍♂️ Deu bostcha 1...")
            }

            if let _ = characters {
                print("🕵️‍♂️ Ok 1")
            }
        }
    }

    func obtainSpecificCharacter() {
        let network = DefaultHTTPClient()
        let character = ObtainCharacterRequest(network: network)
        character.obtainCharacter(1011334) { (character, error) in
            if let _ = error {
                print("🕵️‍♂️ Deu bostcha 2...")
            }

            if let _ = character {
                print("🕵️‍♂️ Ok 2")
            }
        }
    }
}
