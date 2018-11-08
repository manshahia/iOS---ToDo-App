//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by Ravi Inder Manshahia on 08/11/18.
//  Copyright © 2018 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBAction func addToDo(_ sender: Any) {
        if let toDo = self.textField.text {
            toDoArray.append(toDo)
            UserDefaults.standard.set(self.toDoArray, forKey: "todoArray")
            textField.text = ""
        }
    }
    var toDoArray = [String]()
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let todosObjectArray = UserDefaults.standard.object(forKey: "todoArray") as? [String]
        {
            self.toDoArray = todosObjectArray
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

