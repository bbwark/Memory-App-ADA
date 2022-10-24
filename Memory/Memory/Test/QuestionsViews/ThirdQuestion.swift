//
//  FirstQuestion.swift
//  Memory
//
//  Created by Bruno De Vivo on 21/10/22.
//
import SwiftUI

struct ThirdQuestion: Question {
    
    var questionSentence: String = "When you repeat you usually..."
    var answer1: String = "Browse the book or notes"
    var answer2: String = "Walking"
    var answer3: String = "Write what you repeat"
    var answer4: String = "Speak aloud"
    
    var body: some View {
        
        VStack{
            Spacer()
            
            Text(questionSentence)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            HStack{
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "00D4D2"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "00D4D2"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "00D4D2"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "D45A15"))
            }
            .padding(.bottom)
            
            VStack{
                
                Button {
                } label: {
                    //Answer 1
                    AnswerButton(textInBox: answer1)
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 2
                    AnswerButton(textInBox: answer2)
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 3
                    AnswerButton(textInBox: answer3)
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 4
                    AnswerButton(textInBox: answer4)
                }
            }
            Spacer()
        }
    }
}


struct ThirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestion()
    }
}
