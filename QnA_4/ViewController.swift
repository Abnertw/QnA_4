//
//  ViewController.swift
//  QnA_4
//
//  Created by Abnertw on 2021/1/24.

import UIKit

class ViewController: UIViewController {
    
    struct QnA {                     // 先定義一個struct用以做為陣列的主架構
        var question = ""            // struct內存放了題目與答案
        var answer = ""
    }
    
    @IBOutlet weak var numberLabel: UILabel!     // 題數標籤
    @IBOutlet weak var questionLabel: UILabel!   // 問題標籤
    @IBOutlet weak var answerLabel: UILabel!     // 答案標籤
    
    
    var count = 0  // 陣列起始值由0開始
                   // 將設定好的struct架構，用於陣列中(問題與答案)
    var qnaArray = [QnA(question: "台灣第一座國家公園是哪一座?", answer: "墾丁國家公園"),
                    QnA(question: "台灣超過3000公尺以上的高山有幾座?", answer: "268座"),
                    QnA(question: "台灣最大的自然湖泊?", answer: "日月潭"),
                    QnA(question: "客家人口比例最高的行政區?", answer: "美濃"),
                    QnA(question: "哪個地方有小九份之稱?", answer: "奮起湖"),
                    QnA(question: "中央山脈上的藍寶石指的是哪裏?", answer: "嘉明湖"),
                    QnA(question: "哪2個縣市設有北迴歸縣標誌碑?", answer: "嘉義縣與花蓮縣"),
                    QnA(question: "台灣何處擁有世界三大海底溫泉之一?", answer: "綠島朝日"),
                    QnA(question: "北天燈南烽炮是指哪2個地方?", answer: "平溪、鹽水"),
                    QnA(question: "台灣唯一的珊瑚礁島嶼?", answer: "小琉球")]
  
    
    func again() {                                     // 建立一個func供重玩鍵使用
        qnaArray.shuffle()                             // 隨機選題
        count = 0                                      // 陣列數值歸零
        questionLabel.text = qnaArray[count].question  // 將陣列的題目顯示在螢幕上
        answerLabel.isHidden = true                    // 答案先蓋住不顯示出來
        numberLabel.text = "\(count + 1)"              // 將題數+1，並顯示在螢幕上
    }
        
    
    func nextQuestion() {                              // 建立一個func供下一題鍵使用
        questionLabel.text = qnaArray[count].question  // 將陣列的題目顯示在螢幕上
        answerLabel.text = qnaArray[count].answer      // 將陣列的答案顯示在螢幕上
        numberLabel.text = "\(count + 1)"              // 將題數+1，並顯示在螢幕上
        answerLabel.isHidden = true                    // 答案先蓋住不顯示出來
    }
    
    
    @IBAction func nextBT(_ sender: Any) {    // 下一題鍵
        count += 1                            // 陣列之數值加1
        if count == 10 {                      // 10個問題為0~9，所以count等於10時
           count = 9                          // 超過陣列數時，就停在第10題，不可再玩了
        }
        nextQuestion()                        // 將常用的nextQuestion func帶入
    }
    
    
    
    @IBAction func showBT(_ sender: Any) {    // 顯示答案鍵
        answerLabel.isHidden = false          // 顯示答案
    }

    
    @IBAction func againBT(_ sender: Any) {   // 再玩一次鍵
        again()
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    qnaArray.shuffle()                        // 隨機選題
    nextQuestion()                            // 在程式開始時，顯示題目
    }
}


/* 台灣小知識題庫
 問題1: 台灣第一座國家公園是哪一座?
 答案1: 墾丁國家公園
 問題2: 台灣超過3000公尺以上的高山有幾座?
 答案2: 268座
 問題3: 台灣最大的自然湖泊?
 答案3: 日月潭
 問題4: 客家人口比例最高的行政區?
 答案4: 美濃
 問題5: 哪個地方有小九份之稱?
 答案5: 奮起湖
 問題6: 中央山脈上的藍寶石指的是哪裏?
 答案6: 嘉明湖
 問題7: 有哪2個縣市設有北迴歸縣標誌碑?
 答案7: 嘉義縣與花蓮縣
 問題8: 台灣何處擁有世界三大海底溫泉之一?
 答案8: 綠島朝日海底溫泉
 問題9: 北天燈南烽炮是指哪2個地方?
 答案9: 平溪、鹽水
 問題10: 台灣唯一的珊瑚礁島嶼?
 答案10: 小琉球
*/
