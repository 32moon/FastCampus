//
//  ViewController.swift
//  MyAlbum
//
//  Created by 이문정 on 2020/12/11.
//

import UIKit

class ViewController: UIViewController {
   
    var currentValue = 0

    @IBOutlet weak var priceLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceLabel.text = "₩ \(currentValue)"
        refresh()
        
    }
    // 버튼 눌렀을 때 얼럿창 띄우기
    
    
    @IBAction func showAlert(_ sender: UIButton) {
        let message = "가격은 \(currentValue) 입니다."
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action in self.refresh()})
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh(){
        let randomPrice = arc4random_uniform(1000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "₩ \(currentValue)"
    }
    
}
