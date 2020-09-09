//
//  UIViewController+Alert.swift
//  KxMemo
//
//  Created by MAC on 2020/09/09.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

extension UIViewController {
    // 경고창 구현
    func alert(title: String = "알림", message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
}
