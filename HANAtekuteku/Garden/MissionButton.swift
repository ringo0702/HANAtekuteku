//
//  MissionButton.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/03.
//
import SwiftUI

struct MissionButton:View {
    var body: some View {
        Button(action:{
            
        }){
            ZStack{
                Circle()
                    .fill(.mainGreen)
                    .frame(maxWidth: 40, maxHeight: 40)
                    .overlay(
                        Circle()
                            .stroke(Color.bg, lineWidth: 1)
                    )
                    .shadow(color: .fontcaption, radius: 2, x: 0, y: 5)
                Image(.mission)
            }
        }   //Button
        .buttonStyle(.plain)
    }
}

#Preview {
    MissionButton()
}
