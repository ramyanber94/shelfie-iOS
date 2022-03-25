//
//  RegisterView.swift
//  shelfie
//
//  Created by Ramy Anber on 2022-03-25.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .frame(width: sf.w * 1.07, height: sf.h * 1.07)
            VStack{
                Image("logoShelfieWhite")
                    .resizable()
                    .frame(width: sf.w * 0.5, height: sf.h * 0.06, alignment: .center)
                Text("Sign Up")
                    .font(Font.custom("Montserrat", size: 32))
                    .foregroundColor(.white)
                    .frame(width: sf.w * 0.9, height: sf.h * 0.06, alignment: .topLeading)
                
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
