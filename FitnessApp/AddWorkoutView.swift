//
//  AddWorkoutView.swift
//  FitnessApp
//
//  Created by Bryan Huang on 4/26/15.
//  Copyright (c) 2015 Bryan Huang. All rights reserved.
//

import UIKit

class AddWorkoutView: UIViewController {
    
    @IBOutlet var backButton: UIBarButtonItem!
    @IBOutlet var addButton: UIBarButtonItem!
    @IBOutlet var workoutName: UITextField!
    @IBOutlet var weightAmount: UITextField!
    @IBOutlet var repAmount: UITextField!
    
    
    var mainWindowController: MainWindow!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var dismissKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        
        view.addGestureRecognizer(dismissKeyboard)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setMainWindow(mainWindow: MainWindow){
        self.mainWindowController = mainWindow
    }
    
    func DismissKeyboard(){
        view.endEditing(true)
    }
    
    func verifyWorkout() -> Bool {
        var workoutVerified = false
    
        if(workoutName.text != nil && count(workoutName.text) > 0 && weightAmount.text != nil && count(weightAmount.text) > 0 && repAmount.text != nil && count(repAmount.text) > 0){
            workoutVerified = true
        }
        
        return workoutVerified
    }
    
    @IBAction func addWorkout(sender: AnyObject){
        if(verifyWorkout()){
            println("true")
        }

    }
    
    @IBAction func dismissAddWorkoutView(sender: AnyObject){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
