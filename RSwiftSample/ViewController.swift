//
//  ViewController.swift
//  RSwiftSample
//
//  Created by 若林直人 on 2021/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        inputField.text = "テスト"
    }

    @IBAction func buttonTap(_ sender: Any) {
        let secondVC = R.storyboard.main().instantiateViewController(identifier: R.storyboard.main.secondViewController.identifier) { [weak self] coder in
            SecondViewController(coder: coder, text: self?.inputField.text ?? "")
        }
        present(secondVC, animated: true, completion: nil)
    }
    
}

