//
//  ResultProtocol.swift
//  Memory
//
//  Created by Bruno De Vivo on 21/10/22.
//
import SwiftUI

protocol Result: View {
    var memoryType:String { get set }
    var memoryImage:String { get set }
    var description:String { get set }
}
