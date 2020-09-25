//
//  ViewController.swift
//  TransicaoTela
//
//  Created by Gabriel Duarte on 25/09/20.
//
import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    
    }

    override func viewDidAppear (_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    @IBAction func loginUIButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "DetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc : DetailVC? = segue.destination as? DetailVC
        
        vc?.view.backgroundColor = .red
        vc?.myLabelOutlet.text = "Gabriel"
    }
    
}
