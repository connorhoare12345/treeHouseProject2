//
//  Questions.swift
//  TrueFalseStarter
//
//  Created by Connor hoare on 21/01/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import GameKit

// Template for Questions and answers

struct QuizModel {
    let question: String
    let possibleAnswers: [String]
    let answer: Int
}

// Storing Questions

class QuizManager {
    
    let questions = [
       QuizModel(question: "Oranges represent what in The Godfather movies?", possibleAnswers: ["Life", "Death", "A new beggining"], answer: 1),
       QuizModel(question: "Who directed the Lord of the Rings and Hobbit movies since 2001?", possibleAnswers: ["Peter Jackson", "James Cameron", "Josh Wheedon"], answer: 0),
       QuizModel(question: "Apple co-founder Steve Jobs produced one film during his life, which was it?", possibleAnswers: ["Wall-E", "Toy Story", "The Lawnmowerman", "War Games"], answer: 1),
       QuizModel(question: "Which costume does E.T wear when the kids sneak him out of the house?", possibleAnswers: ["The old lady", "A ghost", "Spiderman", "Flash Gordon"], answer: 1),
       QuizModel(question: "Who directed the Young Frankenstein?", possibleAnswers: ["Mel Brooks", "David Zucker", "Woody Allen"], answer: 0),
       QuizModel(question: "Who is the Fairest one of them all?", possibleAnswers: ["Sleeping Beauty", "Bambi", "Cinderella", "Snow White"], answer: 3),
       QuizModel(question: "What is Marilyn Monroe's real name?", possibleAnswers: ["Norma Jane Sunifer", "Norma Jeane Ratimore", "Norma Jeane Mortenson", "Norma Jeane Watson"], answer: 2),
       QuizModel(question: "Which actor has appeared as James Bond the most?", possibleAnswers: ["Daniel Craig", "Sean Connery", "Roger Moore", "George Lazenby"], answer: 2),
       QuizModel(question: "In the Shawshank Redemption, why does Red say he was named Red?", possibleAnswers: ["Childhood nickname", "He once had red hair", "He killed alot of people", "He is Irish"], answer: 3),
       QuizModel(question: "In Iron Man 2, who is the villian", possibleAnswers: ["Tony Stark", "Pepper Pots", "Ivan Vanko"], answer: 2),
       QuizModel(question: "In the Twilight sequel what is Bella's request to Edward?", possibleAnswers: ["To become a penguin", "To become a ghost", "To become a vampire", "To become a wolf"], answer: 2),
       QuizModel(question: "In the movie Eat, Pray, Love. Who will be the lead actress?", possibleAnswers: ["Julia Roberts", "Kate Hudson", "Jessica Alba", "Johannes Scarlet"], answer: 0),
       QuizModel(question: "In the film Shrek, what is the name of Shreks wife?", possibleAnswers: ["Trudy", "Elizabeth", "Fiona"], answer: 2),
       QuizModel(question: "The Wolf of Wall Street, is a film based on which former American Stock-Broker?", possibleAnswers: ["Leonardo DiCaprio", "Donnie Azoff", "Chester Ming", "Jordan Belfort"], answer: 3),
       QuizModel(question: "In which movie does Jim Carey unknowingly star as the main character in his own reality television show?", possibleAnswers: ["Dumb and Dumber", "The Truman Show", "Bruce Almighty", "Ace Ventura"], answer: 1),
       QuizModel(question: "Who played Jack in the film Titanic?", possibleAnswers: ["Brad Pitt", "Liam Neeson","Leonardo DiCaprio", "Jonah Hill"], answer: 2),
       QuizModel(question: "In which Disney film does the song The Circle of Life come from?", possibleAnswers: ["The Lion King", "Frozen", "Aladin"], answer: 0),
       QuizModel(question: "Who starred as Sandy in the first Grease film?", possibleAnswers: ["Kate Hudson", "Olivia Newton John", "Kate Winslet", "Cameron Diaz"], answer: 1),
       QuizModel(question: "Who plays Forrest Gump?", possibleAnswers: ["Jim Carey", "Matt Le Blanc", "Tom Hanks"], answer: 2),
       QuizModel(question: "I see dead people is a quote from which film?", possibleAnswers: ["Paranormal Activity", "Insidious", "The 6th Sense", "It"], answer: 2),
       QuizModel(question: "Who plays Fred Claus in the 2007 film?", possibleAnswers: ["Vince Vaughan", "Heath Ledger", "Matt Damon", "Will Smith"], answer: 0),
       QuizModel(question: "Which comedy movie features a man who is killed in a car accident and comes back to life as a snowman?", possibleAnswers: ["Bad Santa", "Fred Clause", "Jack Frost"], answer: 2),
       ]
       
}




