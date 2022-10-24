//
//  Model.swift
//  Memory
//
//  Created by giovanni russo on 17/10/22.
//

import SwiftUI



struct MyTip : Identifiable{
    
    var id: Int
    
    var title : String
    var Immagine : String
    var starred : Bool
}

 var littleTip = [MyTip(id: 1, title: "An incredible visual memory exercise: Can you tell me what color an orange is without using the word “orange”?", Immagine: "1",starred: false),
    MyTip(id: 2, title: "The most effective visual memory exercises is Memory Palace Tecnique", Immagine: "2", starred: true),
    MyTip(id: 3, title: "Flashcards can be a very effective bar exam study tool", Immagine: "3",starred: false),
    MyTip(id: 4, title: "Visual learners learn by seeing and absorbing what is written in front of them", Immagine: "4",starred: false),
    MyTip(id: 5, title: "Keeping a dream journal is a powerful way to exercise your visual memory", Immagine: "5",starred: true),
    MyTip(id: 6, title: "Visual learners learn by seeing and absorbing what is written in front of them", Immagine: "6", starred: true)

]

var gameCard = [MyTip(id: 1, title: "Memorize Brains", Immagine: "5",starred: false),
    MyTip(id: 2, title: "Simon", Immagine: "6",starred: false),
    MyTip(id: 3, title: "Boh Game", Immagine: "7",starred: false),
]

class Tip: ObservableObject{
    @Published var littleTip2: [MyTip]
    

    init(littleTip2: [MyTip]) {
        self.littleTip2 = [MyTip(id: 1, title: "An incredible visual memory exercise: Can you tell me what color an orange is without using the word “orange”?", Immagine: "1",starred: false),
                           MyTip(id: 2, title: "The most effective visual memory exercises is Memory Palace Tecnique", Immagine: "2", starred: true),
                           MyTip(id: 3, title: "Flashcards can be a very effective bar exam study tool", Immagine: "3",starred: false),
                           MyTip(id: 4, title: "Visual learners learn by seeing and absorbing what is written in front of them", Immagine: "4",starred: false),
                           MyTip(id: 5, title: "Keeping a dream journal is a powerful way to exercise your visual memory", Immagine: "5",starred: true),
                           MyTip(id: 6, title: "Visual learners learn by seeing and absorbing what is written in front of them", Immagine: "6", starred: true)

                       ]

        
    }
}

class prova: ObservableObject{
    var id: Int
    var title : String
    var Immagine : String
   @Published var starred : Bool
    
    init(id: Int, title: String, Immagine: String,starred: Bool) {
        self.id = 1
        self.title = ""
        self.Immagine = ""
        self.starred = false
    }
    
}



var liste = [prova(id: 1, title: "An incredible visual memory exercise: Can you tell me what color an orange is without using the word “orange”?", Immagine: "1",starred: false),
          prova(id: 2, title: "The most effective visual memory exercises is Memory Palace Tecnique", Immagine: "2", starred: true),
          prova(id: 3, title: "Flashcards can be a very effective bar exam study tool", Immagine: "3",starred: false),
          prova(id: 4, title: "Visual learners learn by seeing and absorbing what is written in front of them", Immagine: "4",starred: false),
          prova(id: 5, title: "Keeping a dream journal is a powerful way to exercise your visual memory", Immagine: "5",starred: true),
          prova(id: 6, title: "Visual learners learn by seeing and absorbing what is written in front of them", Immagine: "6", starred: true)
]
