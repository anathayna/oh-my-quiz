//
//  QuizBrain.swift
//  oh my quiz
//
//  Created by Ana Thayna Franca on 07/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Qual é o maior órgão do corpo humano?", a: ["Coração", "Pele", "Intestino grosso"], correctAnswer: "Pele"),
        Question(q: "Qual o fator relevante da quarta dimensão?", a: ["Comprimento", "Longitude", "Tempo"], correctAnswer: "Tempo"),
        Question(q: "O que significam as letras no fuso horário GMT?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "Qual é a palavra francesa para 'chapéu'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "Um ser humano tem, em média, quantos fios de cabelos?", a: ["1.000", "10.000", "100.000"], correctAnswer: "100.000"),
        Question(q: "Como alguém se despede em espanhol?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Qual dessas cores NÃO aparece no logotipo do Google?", a: ["Verde", "Laranja", "Azul"], correctAnswer: "Laranja"),
        Question(q: "Que bebida alcoólica é feita a partir de melaço?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "Qual é o animal mais rápido do mundo?", a: ["Guepardo", "Falcão", "Peixe-espada"], correctAnswer: "Falcão"),
        Question(q: "Onde está localizada a Tasmânia?", a: ["Indonesia", "Australia", "Escócia"], correctAnswer: "Australia")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }

    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
