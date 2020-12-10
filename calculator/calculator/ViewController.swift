//
//  ViewController.swift
//  calculator
//
//  Created by alfahri yudha muqorrobin on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFild1: UITextField!
    
    @IBOutlet weak var textFild2: UITextField!
    
    @IBOutlet weak var hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatik: "+")
    }
    
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatik: "-")
    }
    
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(aritmatik: "*")
    }
    
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(aritmatik: "/")
    }


func hitung(aritmatik: String){
    if textFild1.text == "" || textFild2.text == ""{
        hasil.text = "kolom nya harus diisi"
    }else{
        let input1 = Double(textFild1.text!)
        let input2 = Double(textFild2.text!)
        var jumlah: Double?
        switch aritmatik {
        case "+":
            jumlah = input1! + input2!
        case "-":
            jumlah = input1! - input2!
        case "*":
            jumlah = input1! * input2!
        case "/":
            jumlah = input1! / input2!
        default:
            break
        }
        hasil.text = String(jumlah!)
    }
 }
}

