//
//  ViewController.swift
//  TestSwift_OC
//
//  Created by 邱云翔 on 16/8/29.
//  Copyright © 2016年 邱云翔. All rights reserved.
//

import UIKit

class ViewController: UIViewController,QYXLunBoTuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.blueColor();
        
        let imageDataArray = ["http://7xrxob.com2.z0.glb.qiniucdn.com/Fs4IB0MldeBzopdlxwmzNrJZciyE","http://7xrxob.com2.z0.glb.qiniucdn.com/Fh3frVXyBXFo0IcXrbA9iW9zP5Dx","http://7xrxob.com2.z0.glb.qiniucdn.com/FrYoGPiRwtm5s0FLZ7y0ANGvUBD-","http://7xrxob.com2.z0.glb.qiniucdn.com/Fl5L8gpVw7O-PRKJxDFWGQqCAPGZ","http://cdn.duitang.com/uploads/item/201512/20/20151220155233_X3yhm.jpeg","http://cdn.duitang.com/uploads/item/201512/20/20151220124415_8FzL2.jpeg"]
        
        let lunBoView = QYXLunBoTuView(frame: CGRectMake(0,150,self.view.bounds.size.width,self.view.bounds.size.width/16*9))
        self.view.addSubview(lunBoView)
        lunBoView.imageDataArr = imageDataArray
        lunBoView.delegate = self
        
        
        if imageDataArray.count > 1 {
            lunBoView.timer.fire()
        } else {
            lunBoView.ViewShouldBeginScroll()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tapImageView(index: Int) {
        print(index)
    }

}



