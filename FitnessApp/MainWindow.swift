//
//  MainWindow.swift
//  FitnessApp
//
//  Created by Bryan Huang on 4/19/15.
//  Copyright (c) 2015 Bryan Huang. All rights reserved.
//

import UIKit

class MainWindow: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var addWorkoutButton: UIBarButtonItem!
    @IBOutlet var emptyTableViewLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addNewWorkout(sender: AnyObject){
        
        var addWorkoutView = AddWorkoutView(nibName: "AddWorkoutView", bundle: nil)
        addWorkoutView.setMainWindow(self)
        
        self.presentViewController(addWorkoutView, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
