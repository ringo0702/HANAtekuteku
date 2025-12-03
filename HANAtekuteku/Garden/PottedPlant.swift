//
//  PottedPlant.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI

struct PottedPlant: View {
    var body: some View {
        ZStack{
            Color.bg.ignoresSafeArea()
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.white.opacity(0))
                        .frame(maxWidth: 320, maxHeight: 80)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.mainPink, lineWidth: 1)
                        )
                }   //ZStack
                Spacer()
            }   //VStack
            .padding(.top, 130)
        }   //ZStack
    }   //body
}   //View

#Preview {
    PottedPlant()
}
