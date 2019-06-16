//
//  RootViewController.swift
//  VisualDebugInSwift5
//
//  Created by Alex Nagy on 16/06/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class RootViewController: UIViewController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        label.text = "Hello Visual Debug"
        label.debug()
        
        view.addSubview(label)
        label.centerInSuperview()
        
        label.leftToSuperview(offset: 32)
        label.rightToSuperview(offset: -32)
    }

}

extension UIView {
    @discardableResult
    public func debug() -> UIView {
        let myBlue = UIColor(red: 42/255, green: 126/255, blue: 254/255, alpha: 1.0)
        backgroundColor = myBlue.withAlphaComponent(0.3)
        layer.borderColor = myBlue.cgColor
        layer.borderWidth = 1.5
        layer.cornerRadius = 3
        layer.masksToBounds = true
        return self
    }
}

