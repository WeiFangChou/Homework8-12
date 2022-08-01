//
//  BirthdayViewController.swift
//  Homework8-12
//
//  Created by WeiFangChou on 2022/8/1.
//

import UIKit

class BirthdayViewController: UIViewController {
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var gifImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let aniatedImage = UIImage.animatedImageNamed("number-", duration: 2)
        gifImageView.image = aniatedImage
    }
    

    

    @IBSegueAction func showResult(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
            controller?.birthday = datePicker.date
        return controller
    }
}
