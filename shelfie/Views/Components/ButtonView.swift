//
//  ButtonView.swift
//  shelfie
//
//  Created by Luiz Fernando Reis on 2022-03-25.
//

import SwiftUI

struct ButtonView: View {
    var sf = ScaleFactor()
    var text = ""
    var fontSize: CGFloat?
    var hTextPadding: CGFloat?
    var color = Color("ButtonColor1")
    var height: CGFloat?
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: self.action ?? {}) {
                Text(text)
                .font(Font.system(size: fontSize ?? 0.027 * sf.h).weight(.bold))
                .padding(.horizontal, hTextPadding ?? 0.07 * sf.h)
        }
        .foregroundColor(Color.white)
        .frame(height: height ?? 0.075 * sf.h)
        .background(color)
        .cornerRadius(30)
        .shadow(color: Color.black.opacity(0.5), radius: 2, x: 1, y: 1)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
