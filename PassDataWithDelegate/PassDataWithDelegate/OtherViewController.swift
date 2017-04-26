//
//  OtherViewController.swift
//  PassDataWithDelegate
//
//  Created by Đỗ Việt on 4/26/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

//khởi tạo protocol với name giống tên class và thêm chữ delegate phía sau
protocol OtherViewControllerDelegate {
    //khởi tạo func ko có thân hàm.
    func passedName(name: String)
    
}

class OtherViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    var delegate: OtherViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Bắn dữ liệu từ OtherViewController về ViewController thông qua delegate
    @IBAction func saveAndPassData(_ sender: UIBarButtonItem) {
        
        delegate?.passedName(name: nameTextField.text!)
        
        _ = navigationController?.popViewController(animated: true)
        
    }
    
}
