//
//  PostCommentViewController.swift
//  Instagram
//
//  Created by 仲優樹 on 2023/02/10.
//

import UIKit
import Firebase

class PostCommentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func postCommentButton(_ sender: Any) {
        // ユーザーが入力したコメント内容をFirestoreに保存
        let postRef = Firestore.firestore().collection(Const.PostPath).document()
        self.dismiss(animated: true, completion: nil)
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
