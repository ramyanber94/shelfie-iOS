//
//  shelfieApp.swift
//  shelfie
//
//  Created by Luiz Fernando Reis on 2022-03-25.
//

import SwiftUI

let sf = ScaleFactor()

@main
struct shelfieApp: App {
    @State private var showLunchScreen: Bool = true
       
       var body: some Scene {
           WindowGroup {
               ZStack{
                   LoginView().navigationBarHidden(true)
                   ZStack{
                       if showLunchScreen{
                           LaunchView(showLaunch: $showLunchScreen).transition(.move(edge: .leading))
                       }
                   }.zIndex(2.0)
               }
           }
       }
}
