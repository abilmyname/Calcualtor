//
//  ViewController.swift
//  Calculator
//
//  Created by SLYTH on 11/11/20.
//  Copyright © 2020 GROWDEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputPanjang: UITextField!
    @IBOutlet weak var inputLebar: UITextField!
    @IBOutlet weak var hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func hitung(aritmatika: String){
        if inputPanjang.text == "" || inputLebar.text == ""{
            hasil.text = "input tidak boleh kosong"
        }
        else{
            // mengubah dari String jadi Double
            let nilaiPanjang = Double(inputPanjang.text!)
            let nilaiLebar = Double(inputLebar.text!)
            
            var jumlah: Double?
            
            switch aritmatika {
            case "+":
                jumlah = nilaiPanjang! + nilaiLebar!
            case "-":
                jumlah = nilaiPanjang! - nilaiLebar!
            case "*":
                jumlah = nilaiPanjang! * nilaiLebar!
            case "/":
                jumlah = nilaiPanjang! / nilaiLebar!
            default:
                break
            }
            
            hasil.text = String(jumlah!)
            
        }
    }
    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatika: "+")
    }
    
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatika: "")
    }
    
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(aritmatika: "*")
    }
    
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(aritmatika: "/")
    }
    
    
}

