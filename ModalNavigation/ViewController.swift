//
//  ViewController.swift
//  ModalNavigation
//
//  Created by Sanjay Noronha on 2016/04/10.
//  Copyright © 2016 funza Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func showAlertView(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Service Unavailable ", message: "Please try again later.", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
        
    }
    @IBAction func showActivityViewer(sender: AnyObject) {
        
        let myMessage = "Hello World"
        let activityVC = UIActivityViewController(activityItems: [myMessage], applicationActivities: nil)
        self.presentViewController(activityVC, animated: true, completion: nil)
        
    }
    @IBAction func showImagePicker(sender: AnyObject) {
        
        let imagePicker = UIImagePickerController()
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        //The tint color to apply to the navigation items and bar button items.
        imagePicker.navigationBar.tintColor = UIColor.whiteColor()
        
        //The tint color to apply to the navigation bar background
        //This color is made translucent by default unless you set the translucent property to false.
        imagePicker.navigationBar.barTintColor = UIColor.purpleColor()
        imagePicker.navigationBar.translucent = false
        
        //Display attributes for the bar’s title text.
        imagePicker.navigationBar.titleTextAttributes = [ NSForegroundColorAttributeName:UIColor.whiteColor() ]
        
        self.presentViewController(imagePicker, animated: true, completion: nil)
        
    }


}

