//
//  QuestionViewController.swift
//  mentuzzle
//
//  Created by 船越舞斗 on 2024/09/04.
//

import UIKit

class QuestionViewController: UIViewController {
    let questions = [//Fi
                     "人それぞれの思いや感性は、個々に尊重されるべきだと思う",
                     "最終的な判断は「自分の好み」であるかどうかで決めがちである",
                     "弱者に対して慈しむ気持ちを持つ方である",
                     "普段、自分の心が穏やかな状態かどうかをとても気にする",
                     "自分の気持ちが、相手の気持ちと重なることが多い",
                     "自分の想いは複雑で、容易に人に説明できるようなものではない",
                     "個人が抱く心理や感情を、より鮮明に理解したいと思う",
                     //Fe
                     "自分のことに限らず「単独行動」や「仲間はずれ」に不安を感じやすいと思う",
                     "そこにいる人々がどのような共通認識を持っているかをとても気にする",
                     "集団の中で１人１人の振る舞いに意識が向きやすい",
                     "自分だけでなく、相手や周りの価値基準に沿う方である",
                     "自分のことが蔑ろになっても、人に手助けしようとするところがある",
                     "なるべく誰かの役に立ちたいと思うし、他者から必要とされる存在になりたいと思う",
                     "自分はとても感情表現が豊かだと思うし、相手に共感を示す方である",
                     //Ti
                     "自分の考えに夢中になり、周りの心情に意識が向かなくなるときがある",
                     "既に決定づけられた結論や定義に対して、ずっと欠点や改善点がないかを気にしている",
                     "倫理や感性とは切り離した基準で、独自の持論や理屈を展開しやすい",
                     "大衆的な価値観を無視して、物事に対する反論や逆説的な意見を持ちやすい",
                     "自分をより満足させられる動機は、心理的調和よりも知的興味である",
                     "物事は簡単に鵜呑みにせず、いろいろな角度から考察・検証したいと思う",
                     "発信者の権威や地位に関係なく、その内容について懐疑心を抱きやすい",
                     //Te
                     "格差・身分差は社会上然るべきで、稚拙な不平不満は滑稽に思う",
                     "人の個性が様々にあったとしても、一律の形式や社会的規範を無視するほども重要ではない",
                     "なるべく物事は簡潔かつ効率的に、体系化・形式化を図ることを好む",
                     "社会的に評価される目標ほど、自分が達成することに意味を感じる",
                     "アイデアは迅速にフォーマット化し、実用性や利益を生むものへと昇華したいと思う",
                     "個人の立場や能力を示す、社会上の肩書や役割をとても信頼し参考にしている",
                     "画一的なシステムの元、集団目標の定まりが見えるため自分が率先して引導を試みる",
                     //Si
                     "日々の連続性や習慣に沿う方が安心するし、なるべく変えたくない",
                     "自分が決断・行動を起こす基準に、根拠や過去の実例に強くこだわる方である",
                     "これまでの自分に蓄積された経験や記憶をとても信頼している",
                     "一般的な感覚に順応するのは大事だと思うし、幾分常識性も加味すべきである",
                     "なるべく自身の慣れ親しんだもので、環境を築き秩序立てたいと感じる",
                     "身の回りの細かいところの1つ1つが気になり、いつも注目している",
                     "自分の身体の中で起こっていることや、普段の体調を鮮明に捉えられている",
                     //Se
                     "目の前の環境にとても集中していて、ありのままの刺激的な体験に高揚感を覚える",
                     "ニュースやトレンドはなるべくチェックするし、いつも自然と新しい情報を入手している",
                     "光、音、匂い、味、手触りに敏感で、外部からの刺激を積極的に感知している",
                     "じっとしているよりも、何かしら活動している方が有意義に感じる",
                     "観察したり空間を把握することは得意で、現実世界に対する実時間的な感覚にシビアである",
                     "自分の「思う」、「感じる」の根源は、宙ではなく身体から起こる",
                     "未来を想像するよりもずっと、今この瞬間に起こす自身の行動に興味がある",
                     //Ni
                     "「いつかきっとこうなるだろう」という予感が、自分の行動を決める１つの指針だったりする",
                     "自分の頭の中で空想するイメージは、よく現実の出来事を忘れさせる",
                     "複数の事実や要因から導き出される、秘められた1つの真理や核心をふと閃いたりする",
                     "自分の意志は自分の中にある芯に沿って存在していて、外部の人や環境に影響されたくない",
                     "どこからの因果や時系列に関係ない、ふと起こす瞬間的な発想は充分に信頼に値する",
                     "起きていてもなんとなく、夢のような抽象的な映像を浮かべることがある",
                     "要素の1つ1つが繊維状に紡がれるかのように、一連の繋がりを捉えることを好む",
                     //Ne
                     "いかに自分が非常識で破天荒な発想を閃くかに挑戦する気持ちが生まれやすい",
                     "1つの要素から様々な関連性を想起し、発想を膨らませることに楽しみを覚える",
                     "行動を起こす前に、まずできるだけたくさん可能性を思い浮かべる",
                     "物事の変化や流動性を柔軟に受け入れ、それを楽しんでいる節がある",
                     "溢れるようにいろいろな可能性を思いつくし、その全てに対して平等に受容的でありたい",
                     "一心不乱に同じことを繰り返すより、変化の連続が起こる方が好奇心が湧く",
                     "予想通りの結果よりも、予想だにしなかった出来事が起こる方が胸がおどる",]
    var shuffledQuestions = [String]()
    var originalIndices = [Int]()
    var number = 0
    var count = 0
    var points = [50,50,50,50,50,50,50,50]
        
    
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var really: UIButton!
    @IBOutlet weak var yes: UIButton!
    @IBOutlet weak var no: UIButton!
    @IBOutlet weak var never: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shuffleQuestions()
        questionNumber.text = "\(number+1)" + " / " + "\(questions.count)"
        questionLabel.text = shuffledQuestions[number]
    }
    
    func shuffleQuestions() {
        let indices = Array(0..<questions.count)
        let shuffledIndices = indices.shuffled()
        
        for i in shuffledIndices {
            shuffledQuestions.append(questions[i])
            originalIndices.append(i)
        }
    }
    
    func calculateKind(from index: Int) -> Int {
        return index / 7
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let next = segue.destination as? ResultViewController
            next?.Fi = self.points[0]
            next?.Fe = self.points[1]
            next?.Ti = self.points[2]
            next?.Te = self.points[3]
            next?.Si = self.points[4]
            next?.Se = self.points[5]
            next?.Ni = self.points[6]
            next?.Ne = self.points[7]
        }
    }
    
    @IBAction func really(_ sender: Any) {
        updatePoints(by: 8)
    }
    
    @IBAction func yes(_ sender: Any) {
        updatePoints(by: 4)
    }
    
    @IBAction func no(_ sender: Any) {
        updatePoints(by: -4)
    }
    
    @IBAction func never(_ sender: Any) {
        updatePoints(by: -8)
    }
    
    func updatePoints(by value: Int) {
        let originalIndex = originalIndices[number]
        let kind = calculateKind(from: originalIndex)
        points[kind] += value
        if kind < 4 {
            points[3 - kind] -= value / 4
        }
        else if kind < 8 {
            points[11 - kind] -= value / 4
        }
        
        count += 1
        if count == questions.count {
            self.performSegue(withIdentifier: "toResult", sender: nil)
            count = 0
            number = 0
        } else {
            number += 1
            questionNumber.text = "\(number+1)" + " / " + "\(questions.count)"
            questionLabel.text = shuffledQuestions[number]
        }
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
