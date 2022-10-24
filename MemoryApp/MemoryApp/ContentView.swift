//
//  ContentView.swift
//  Memory
//
//  Created by giovanni russo on 17/10/22.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        
        TabView{
            Games()
                .tabItem{
                    
                    Label("Games", systemImage: "gamecontroller.fill")
                }.onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
            Tips()
            
                .tabItem{ Label("Tips", systemImage: "lightbulb.fill")
                
                }
            
          
        }
        
        .onAppear(){
            UITabBar.appearance().backgroundColor = UIColor.white
        }
        .accentColor(.cyan)
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

extension UIApplication {
    func addTapGestureRecognizer() {
        guard let window = windows.first else { return }
        let tapGesture = UITapGestureRecognizer(target: window, action: #selector(UIView.endEditing))
        tapGesture.requiresExclusiveTouchType = false
        tapGesture.cancelsTouchesInView = false
        tapGesture.delegate = self
        window.addGestureRecognizer(tapGesture)
    }
}

extension UIApplication: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true // set to `false` if you don't want to detect tap during other gestures
    }
}


