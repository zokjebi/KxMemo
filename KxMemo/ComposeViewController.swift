//
//  ComposeViewController.swift
//  KxMemo
//
//  Created by MAC on 2020/09/09.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var memoTextView: UITextView!
    
    @IBAction func save(_ sender: Any) {
        
        guard let memo = memoTextView.text, memo.count > 0 else {
            alert(message: "메모를 입력하세요")
            return
        }
        
        let newMemo = Memo(content: memo)
        Memo.dummyMemoList.append(newMemo)
        
        // 
        NotificationCenter.default.post(name: ComposeViewController.newMemodidInsert, object: nil)
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension ComposeViewController {
    static let newMemodidInsert = Notification.Name(rawValue: "newMemoDidInsert")
}
