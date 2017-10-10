//
//  ViewController.swift
//  Rotate Image
//
//  Created by DOTS2 on 10/10/17.
//  Copyright © 2017 Arjuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgPreview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnRotate(_ sender: Any) {
    //menambahkan durasi animasi
        //durasi rotasinya adalah 2 detik 
        //dan angle rotasi nya 180 derajat
    
        UIView.animate(withDuration: 2.0, animations:{self.imgPreview.transform = CGAffineTransform(rotationAngle: (180.0 * .pi) / 180.0)
    
        
        })
        
    
    }
    
    
    @IBAction func btnRotate2(_ sender: Any) {
        
        //multiple rotate image
        imgPreview.transform = CGAffineTransform.identity.translatedBy(x: 100, y: 300).rotated(by: CGFloat.pi / 4).scaledBy(x: -1, y: 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

