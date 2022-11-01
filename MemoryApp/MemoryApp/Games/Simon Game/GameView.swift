//
//  GameView.swift
//
//  Created by Bruno De Vivo on 28/10/22.
//

import SwiftUI

struct GameView: View {
    @State var points: Int = 0
    
    @State var sequenceToRemember : [Int] = []
    @State var sequenceToInsert : [Int] = []
    
    @State var insertedValue : Int = -1
    
    @State var touchable = false
    
    @State var firstBright = false
    @State var secondBright = false
    @State var thirdBright = false
    @State var fourthBright = false
    
    @State var listening = false
    
    @State var playing = false
    
    var body: some View {
        
        VStack{
            Text("\(points)")
                .font(.largeTitle)
            
            Spacer()
            
            HStack{
                TileView(color: Color("Purple"), bright: $firstBright)
                    .onTapGesture {
                        if(touchable){
                            firstTileBright(delay: 0.0)
                            sequenceToInsert.append(1)
                            checkNextRound()
                        }
                    }
                
                TileView(color: Color("Cyan"), bright: $secondBright)
                    .onTapGesture {
                        if(touchable){
                            secondTileBright(delay: 0.0)
                            sequenceToInsert.append(2)
                            checkNextRound()
                        }
                    }
            }
            
            HStack{
                TileView(color: Color("Orange"), bright: $thirdBright)
                    .onTapGesture {
                        if(touchable){
                            thirdTileBright(delay: 0.0)
                            sequenceToInsert.append(3)
                            checkNextRound()
                        }
                    }
                
                TileView(color: Color("Green"), bright: $fourthBright)
                    .onTapGesture {
                        if(touchable){
                            fourthTileBright(delay: 0.0)
                            sequenceToInsert.append(4)
                            checkNextRound()
                        }
                    }
            }
            
            Spacer()
            
            Button {
                print("Start")
                startRound()
            } label: {
                Text("Start")
            }
            .offset(y: playing ? 200 : -80.0)
            .disabled(playing)
        }
        .navigationTitle("Simon Game")
    }
    
    typealias StepComplete = () -> Void
    
    func startRound() -> Void {
        playing = true
        
        sequenceToRemember.append(Int.random(in: 1...4))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            print("play")
            playSequence(sequence: sequenceToRemember) { () -> () in
                sequenceToInsert.removeAll()
                listening = true
                print("\(sequenceToRemember)")
                print("listening")
                
            }
        }
    }
    
    func playSequence(sequence: [Int], completed: @escaping StepComplete) -> Void {
        touchable = false
        var counter = 0.0
        sequence.forEach { num in
            switch num {
            case 1:
                firstTileBright(delay: counter)
            case 2:
                secondTileBright(delay: counter)
            case 3:
                thirdTileBright(delay: counter)
            case 4:
                fourthTileBright(delay: counter)
            default:
                print("something wrong")
            }
            
            counter += 1.2
        }
        
        //continue the execution of the program after the sequence completed to run
        DispatchQueue.main.asyncAfter(deadline: .now() + (1.2 * Double(sequence.count))){
            
            touchable = true
            completed()
        }
    }
    
    func checkNextRound() {
        if(listening){
            
            //controlla se l'ultimo elemento inserito in posizione N è lo stesso nella posizione N della sequenza corrispondente: se non lo è allora resetta entrambe le sequenze, azzera i punti, mette listening false; se lo è allora controlla se le sequenze sono della stessa lunghezza: se lo sono allora aggiunge un punto, mette listening su false, chiama il next round
            
            let lastInsertedIndex : Int = sequenceToInsert.count - 1
            
            print("\(lastInsertedIndex): inserted \(sequenceToInsert[lastInsertedIndex])/\(sequenceToRemember[lastInsertedIndex]) to remember")
            
            if(sequenceToInsert[lastInsertedIndex] == sequenceToRemember[lastInsertedIndex]){
                print("SAME")
                if(sequenceToInsert.count == sequenceToRemember.count){
                    print("ENTERELY SAME")
                    points += 1
                    listening = false
                    startRound()
                }
            }
            else{
                print("NOT SAME")
                points = 0
                listening = false
                sequenceToInsert.removeAll()
                sequenceToRemember.removeAll()
                playing = false
            }
        }
    }
    
    
    func firstTileBright(delay: Double) -> Void{
        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
            withAnimation(.easeInOut(duration: 0.2)){
                firstBright.toggle() //make it to bright
                withAnimation(.easeOut(duration: 0.2).delay(0.3)){
                    firstBright.toggle() //make it opaque
                }
            }
        }
    }
    
    func secondTileBright(delay: Double) -> Void{
        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
            withAnimation(.easeInOut(duration: 0.2)){
                secondBright.toggle() //make it to bright
                withAnimation(.easeOut(duration: 0.2).delay(0.3)){
                    secondBright.toggle() //make it opaque
                }
            }
        }
    }
    
    func thirdTileBright(delay: Double) -> Void{
        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
            withAnimation(.easeInOut(duration: 0.2)){
                thirdBright.toggle() //make it to bright
                withAnimation(.easeOut(duration: 0.2).delay(0.3)){
                    thirdBright.toggle() //make it opaque
                }
            }
        }
    }
    
    func fourthTileBright(delay: Double) -> Void{
        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
            withAnimation(.easeInOut(duration: 0.2)){
                fourthBright.toggle() //make it to bright
                withAnimation(.easeOut(duration: 0.2).delay(0.3)){
                    fourthBright.toggle() //make it opaque
                }
            }
        }
    }
}


    
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}


