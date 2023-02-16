//
//  PostCommentViewController.swift
//  Instagram
//
//  Created by 仲優樹 on 2023/02/10.
//

import UIKit
import Firebase

class PostCommentViewController: UIViewController {
    
    // 画面遷移先にPostDataを受け取るための変数を宣言
    var ReceiveData : PostData!
    // 更新データを作成する
    var updateValue: FieldValue!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func postCommentButton(_ sender: Any) {
        // ユーザーが入力したコメント内容をFirestoreに保存
        
        // commentsに更新データを書き込む
        updateValue = FieldValue.arrayUnion([self.textView.text!])
        
        let postRef = Firestore.firestore().collection(Const.PostPath).document(self.textView.text)
        postRef.updateData(["commnets": updateValue!])
        
        // "comment": self.textView.text!
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
