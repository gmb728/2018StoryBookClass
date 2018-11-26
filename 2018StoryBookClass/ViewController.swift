//
//  ViewController.swift
//  BigSmall
//
//  Created by Chang Sophia on 11/22/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bookName: String?
    var explainText: String?
    var imageName: String?

    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var explainTextView: UITextView!
    
    func changeAction() {
        if let name = bookName,
        let text = explainText, let image = imageName{
            navigationItem.title = name
            explainTextView.text = text
            bookImageView.image = UIImage(named: "\(image)")
        }
    }

    override func viewDidLoad() {
        changeAction()
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        bookImageView.layer.masksToBounds = false
        self.bookImageView.layer.shadowOffset = CGSize(width:-8,height:8)
        self.bookImageView.layer.shadowColor = UIColor.darkGray.cgColor
        self.bookImageView.layer.shadowOpacity = 0.8
      
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
}

}
