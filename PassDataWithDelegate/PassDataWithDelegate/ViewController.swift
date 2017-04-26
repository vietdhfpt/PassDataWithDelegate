//
//  ViewController.swift
//  PassDataWithDelegate
//
//  Created by Đỗ Việt on 4/26/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // cầu nối giữa OtherViewController và ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let otherVC = segue.destination as? OtherViewController
        
        //lấy dữ liệu từ delegate của OtherViewController sang delegate của ViewController
        otherVC?.delegate = self
    }
}

// hứng dữ liệu từ OtherViewController
extension ViewController: OtherViewControllerDelegate {
    
    func passedName(name: String) {
        // xử lý dữ liệu, ở đây mình gán hiển thị lên nameLabel
        nameLabel.text = name
    }
    
}

