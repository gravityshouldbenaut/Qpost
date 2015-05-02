//
//  ViewController.swift
//  Qpost
//
//  Created by Samarth Sandeep on 5/2/15.
//  Copyright (c) 2015 Samarth Sandeep. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet var workImg: UIImageView!
    var question:NSString!
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        question = textField.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func attachImage(sender: UIButton) {
        workImg.image = UIImage(named: "mathsequations.jpg")
    }
    @IBAction func postToMYSQL(sender: AnyObject) {
        var imageData = UIImagePNGRepresentation(UIImage(contentsOfFile: "mathsequations.jpg"))
       
        var request = NSMutableURLRequest(URL: NSURL(string: "http://www.google.com")!)
        var session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
//        var boundary:NSString = "0xKhTmLbOuNdArY"
//         var kNewLine:NSString = "\r\n"
//        
        let body = NSMutableData()
        
        body.appendData((question as NSString).dataUsingEncoding(NSUTF8StringEncoding)!)
        body.appendData(imageData)
//        body.appendData((base64String as NSString).dataUsingEncoding(NSUTF8StringEncoding)!)
        request.HTTPBody = body
        
    
    
    }
    

}

