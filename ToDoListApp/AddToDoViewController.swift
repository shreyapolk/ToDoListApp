//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Shreya Polkampally on 5/31/20.
//  Copyright © 2020 Shreya Polkampally. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titletextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        /*
        let toDo = ToDo ()
        if let titleText = titletextField.text {
            toDo.name = titleText
            toDo.important  = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData ()
        navigationController?.popViewController(animated: true)
   */
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

          let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

          if let titleText = titletextField.text {
              toDo.name = titleText
              toDo.important = importantSwitch.isOn
          }

          try? context.save()

          navigationController?.popViewController(animated: true)
        }
    
 }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

