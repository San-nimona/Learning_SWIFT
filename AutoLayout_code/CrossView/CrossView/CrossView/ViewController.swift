//
//  ViewController.swift
//  CrossView
//
//  Created by katu on 29/04/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var viewB: UIView!
    
    @IBOutlet weak var centerConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewB.removeConstraint(centerConstraint)
        
        myButton.centerXAnchor.constraint(equalTo: viewB.centerXAnchor).isActive=true
        myLabel.centerXAnchor.constraint(equalTo: viewB.centerXAnchor).isActive=true
        myLabel.trailingAnchor.constraint(equalTo: myButton.trailingAnchor).isActive=true
        createLayout()
        // Do any additional setup after loading the view.
    }
    func createLayout() {
        let superview = self.view
        
        let myLabel = UILabel()
        myLabel.translatesAutoresizingMaskIntoConstraints = true
        myLabel.text = "My Label"
    }
}

