//
//  ViewController.swift
//  BigSmall
//
//  Created by Chang Sophia on 11/22/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var book: String?
    @IBOutlet weak var imageView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let book = book {
            imageView = UIScrollView(named: book)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

