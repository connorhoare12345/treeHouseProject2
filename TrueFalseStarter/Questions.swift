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
       QuizModel(question: "What is Marilyn Monroe's real name?", possibleAnswers: ["Norma Jane Sunifer", "Norma Jeane Ratimore", "Norma Jeane Mortenson", "Norma Jeane Watson"], answer: "Norma Jeane Mortenson"),
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
       QuizModel(question: "BB-8 is an astromech droid from which film?", possibleAnswers: ["Star Wars", "Star Trek", "Elysium"], answer: "Star Wars"),
       QuizModel(question: "In what year was the original Jurassic Park filmed?", possibleAnswers: ["1995", "1996", "1994", "1993"], answer: "1993"),
       QuizModel(question: "Which actress played Katniss Everdean in the Hunger Games?", possibleAnswers: ["Scarlet Johansen", "Jennifer Lawrence", "Emma Stone"], answer: "Jennifer Lawrence"),
       QuizModel(question: "Which fictional city is the home of Batman", possibleAnswers: ["Gondoor", "Hogsmead", "Gotham", "Narnia"], answer: "Gotham"),
       QuizModel(question: "Which actor is know for the saying. I'll Be Back?", possibleAnswers: ["Arnold Schwarzenegger", "Ben Stiller", "Robert Di Niro", "Jean Claude Van Damme"], answer: "Arnold Schwarzenegger"),
       QuizModel(question: "In which Star Wars film did the Ewoks first appear?", possibleAnswers: ["The Phantom Menace", "Return of the Jedi", "Revenge of the Sith", "A New Hope"], answer: "Return of the Jedi"),
       QuizModel(question: "Infamous English prisoner, Charles Bronson, was played by what actor in the 2008 film Bronson?", possibleAnswers: ["Mark Wahlburg", "Tom Hardy", "James Franco", "Dave Franco"], answer: "Tom Hardy"),
       QuizModel(question: "What was the name of the monkey in the Disney movie Aladdin?", possibleAnswers: ["Apu", "Abu", "Adu", "Atu"], answer: "Abu"),
       QuizModel(question: "Which actor played the main character in the 1990 film Edward Scissorhands?", possibleAnswers: ["Leonardo DiCaprio", "Johnny Depp", "Tom Cruise"], answer: "Johnny Depp"),
       QuizModel(question: "Who was the male lead in the 1996 summer blockbuster Independence Day?", possibleAnswers: ["Samuel L Jackson", "Will Smith", "Morgan Freeman"], answer: "Will Smith"),
       QuizModel(question: "What is the only mythological animal mentioned in a Harry Potter book title?", possibleAnswers: ["Phoenix", "Dragon", "Centaur", "Wooky"], answer: "Phoenix"),
       QuizModel(question: "In the film classic Star Wars, what was the name of the ancient spaceship captained by Han Solo?", possibleAnswers: ["Air Force One", "The Millenium Falcon", "LAX"], answer: "The Millenium Falcon"),
       QuizModel(question: "In the Superman movies what newspaper does Clark Kent Work for?", possibleAnswers: ["The Daily Echo", "The Super Times", "The Daily Planet", "The Crimson"], answer: "The Daily Planet"),
       QuizModel(question: "In what movie, if you watch a certain video you'll die in 7 days?", possibleAnswers: ["The Ring", "Paranormal Activity", "Chucky", "The Conjuring"], answer: "The Ring"),
       QuizModel(question: "In the 'Harry Potter' movies, Severus Snape and Draco Malfoy were members of which house at Hogwarts?", possibleAnswers: ["Slytherin", "Hufflepuff", "Griffyndor", "Ravenclaw"], answer: "Slytherin"),
       QuizModel(question: "In what year was the first Harry Potter movie released?", possibleAnswers: ["2000", "2001", "2002"], answer: "2001"),
       QuizModel(question: "The first movie ever given the title “Blockbuster” was which movie?", possibleAnswers: ["Planet of the Apes", "Jaws", "Independance Day", "Titanic"], answer: "Jaws"),
       QuizModel(question: "In Walt Disney’s Sleeping Beauty, what is the name of the Queen witch?", possibleAnswers: ["Bella Trix La Strange", "Malificent", "Hermione Granger"], answer: "Malificent"),
       QuizModel(question: "In movie ratings what do the letters PG stand for?", possibleAnswers: ["Peace Guide", "Particularly Good", "Parental Guidance", "Plays Good"], answer: "Parental Guidance")
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



