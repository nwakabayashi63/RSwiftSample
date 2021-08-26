//
//  SecondViewController.swift
//  RSwiftSample
//
//  Created by 若林直人 on 2021/08/27.
//

import Foundation

import UIKit

class SecondViewController: UIViewController {

    private let text: String
    @IBOutlet weak var label: UILabel!
    
    init?(coder: NSCoder, text: String) {
        self.text = text
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "text = \(text)"
    }


}
