//
//  ViewController.swift
//  Segmented controllers
//
//  Created by Patrick Stroyan on 2/24/22.
//

import UIKit

class ViewController: UIViewController
{

   

    @IBOutlet weak var hello: UILabel!
    
    
    @IBOutlet weak var outlet: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        
        outlet.setTitleTextAttributes(titleTextAttributes, for: .normal)
        
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        outlet.setTitleTextAttributes(titleTextAttributes2, for: .selected)
    }
    
    
    @IBAction func language(_ sender: Any)
    {
        switch outlet.selectedSegmentIndex
        
        {
        case 0:
            hello.text = "Hello!"
        
        case 1:
            hello.text = "Hola!"
            
        case 2:
            hello.text = "Bonjour!"
        default:
            hello.text = "Hello!"
        }
        
    }
    
    
}

