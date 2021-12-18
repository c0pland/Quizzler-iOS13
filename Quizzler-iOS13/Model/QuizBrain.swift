import Foundation
struct QuizBrain {
    let questions = [Question(q: "Nico Rosberg won his sole F1 world title in 2015 while driving for Williams", a: "False"), Question(q: "Sebastian Vettel is the youngest F1 driver to win a race", a: "False"), Question(q: "Lewis Hamilton won his first F1 world championship title with the Mercedes AMG.", a: "False"), Question(q: "Niki Lauda suffered a near-fatal crash during the 1976 season at the Nurburgring", a: "True"), Question(q: "McLaren Honda has won every race in 1988 season except one.", a: "True"), Question(q: "Nico Rosberg and Keke Rosberg are the second father and son pair to both win a WDC", a: "False"), Question(q: "Max Verstappen won his first race as a Red Bull driver", a: "True"), Question(q: "Felipe Massa won the F1 world title in 2007", a: "False"), Question(q: "Jochen Rindt was awarded the F1 world title posthumously", a: "True")]
    var questionNumber = 0
    var score = 0
    
    func checkAnswer(_ userAnswer:String) -> Bool {
        if userAnswer == questions[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getProgress() -> Float{
        return Float(self.questionNumber + 1) / Float(self.questions.count)
    }
    func getQuestion() -> String {
        return self.questions[questionNumber].text
    }
    mutating  func nextQuestion(){
        if questionNumber + 1 < questions.count{
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
    }
    mutating func incScore() {
        self.score += 1
    }
    func getScore() -> Int{
        return self.score
    }
}
