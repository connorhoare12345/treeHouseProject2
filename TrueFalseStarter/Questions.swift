//
//  Questions.swift
//  TrueFalseStarter
//
//  Created by Connor hoare on 21/01/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import GameKit

private let viewController = ViewController()

// Template for Questions and answers

struct QuizModel {
    let question: String
    let possibleAnswers: [String]
    let answer: String
}

// Storing Questions

class QuizManager {
    
    
    var questionIndex: Int = 0
    
    let questions = [
       QuizModel(question: "Oranges represent what in The Godfather movies?", possibleAnswers: ["Life", "Death", "A new beggining"], answer: "Death"),
       QuizModel(question: "Who directed the Lord of the Rings and Hobbit movies since 2001?", possibleAnswers: ["Peter Jackson", "James Cameron", "Josh Wheedon"], answer: "Peter Jackson"),
       QuizModel(question: "Apple co-founder Steve Jobs produced one film during his life, which was it?", possibleAnswers: ["Wall-E", "Toy Story", "The Lawnmowerman", "War Games"], answer: "Toy Story"),
       QuizModel(question: "Which costume does E.T wear when the kids sneak him out of the house?", possibleAnswers: ["The Old Lady", "A Ghost", "Spiderman", "Flash Gordon"], answer: "A Ghost"),
       QuizModel(question: "Who directed the Young Frankenstein?", possibleAnswers: ["Mel Brooks", "David Zucker", "Woody Allen"], answer: "Mel Brooks"),
       QuizModel(question: "Who is the Fairest one of them all?", possibleAnswers: ["Sleeping Beauty", "Bambi", "Cinderella", "Snow White"], answer: "Snow White"),
       QuizModel(question: "What is Marilyn Monroe's real name?", possibleAnswers: ["Norma Jane Sunifer", "Norma Jeane Ratimore", "Norma Jeane Mortenson", "Norma Jeane Watson"], answer: "Norma Jeane Ratimore"),
       QuizModel(question: "Which actor has appeared as James Bond the most?", possibleAnswers: ["Daniel Craig", "Sean Connery", "Roger Moore", "George Lazenby"], answer: "Roger Moore"),
       QuizModel(question: "In the Shawshank Redemption, why does Red say he was named Red?", possibleAnswers: ["Childhood nickname", "He once had red hair", "He killed alot of people", "He is Irish"], answer: "He is Irish"),
       QuizModel(question: "In Iron Man 2, who is the villian", possibleAnswers: ["Tony Stark", "Pepper Pots", "Ivan Vanko"], answer: "Ivan Vanko"),
       QuizModel(question: "In the Twilight sequel what is Bella's request to Edward?", possibleAnswers: ["To become a penguin", "To become a ghost", "To become a vampire", "To become a wolf"], answer: "To become a vampire"),
       QuizModel(question: "In the movie Eat, Pray, Love. Who will be the lead actress?", possibleAnswers: ["Julia Roberts", "Kate Hudson", "Jessica Alba", "Johannes Scarlet"], answer: "Julia Roberts"),
       QuizModel(question: "In the film Shrek, what is the name of Shreks wife?", possibleAnswers: ["Trudy", "Elizabeth", "Fiona"], answer: "Fiona"),
       QuizModel(question: "The Wolf of Wall Street, is a film based on which former American Stock-Broker?", possibleAnswers: ["Leonardo DiCaprio", "Donnie Azoff", "Chester Ming", "Jordan Belfort"], answer: "Jordan Belfort"),
       QuizModel(question: "In which movie does Jim Carey unknowingly star as the main character in his own reality television show?", possibleAnswers: ["Dumb and Dumber", "The Truman Show", "Bruce Almighty", "Ace Ventura"], answer: "The Truman Show"),
       QuizModel(question: "Who played Jack in the film Titanic?", possibleAnswers: ["Brad Pitt", "Liam Neeson","Leonardo DiCaprio", "Jonah Hill"], answer: "Leonardo DiCaprio"),
       QuizModel(question: "In which Disney film does the song The Circle of Life come from?", possibleAnswers: ["The Lion King", "Frozen", "Aladin"], answer: "The Lion King"),
       QuizModel(question: "Who starred as Sandy in the first Grease film?", possibleAnswers: ["Kate Hudson", "Olivia Newton John", "Kate Winslet", "Cameron Diaz"], answer: "Olivia Newton John"),
       QuizModel(question: "Who plays Forrest Gump?", possibleAnswers: ["Jim Carey", "Matt Le Blanc", "Tom Hanks"], answer: "Tom Hanks"),
       QuizModel(question: "I see dead people is a quote from which film?", possibleAnswers: ["Paranormal Activity", "Insidious", "The 6th Sense", "It"], answer: "The 6th Sense"),
       QuizModel(question: "Who plays Fred Claus in the 2007 film?", possibleAnswers: ["Vince Vaughan", "Heath Ledger", "Matt Damon", "Will Smith"], answer: "Vince Vaughan"),
       QuizModel(question: "Which comedy movie features a man who is killed in a car accident and comes back to life as a snowman?", possibleAnswers: ["Bad Santa", "Fred Clause", "Jack Frost"], answer: "Jack Frost"),
       ]
    
    // Display Random Question
    
    func displayQuestion() -> QuizModel {
        questionIndex = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        let questionProvider = questions[questionIndex]
        
        return questionProvider
    }
    
    // Check for the correct answer
   
    func answerChecker(answer: String) -> Bool{
        
        let questionArray = questions[questionIndex]
        let correctAnswer = questionArray.answer
        
        print(correctAnswer)
        print(answer)
        
        if correctAnswer == answer {
            return true
        } else {
            return false
                
        }
    }
    
    func buttonHider(buttonArray: [UIButton], questionLabel: UILabel) {

        let question = displayQuestion()
        
        let questionField = viewController.questionField
       
        questionLabel.text = question.question
        
        for i in 0...question.possibleAnswers.count - 1 {
            buttonArray[i].isHidden = false
            buttonArray[i].setTitle(question.possibleAnswers[i], for: .normal)
        }
        
        if(question.possibleAnswers.count < buttonArray.count ) {
            for i in question.possibleAnswers.count...buttonArray.count - 1 {
                buttonArray[i].isHidden = true
            }
        }
    }
}



