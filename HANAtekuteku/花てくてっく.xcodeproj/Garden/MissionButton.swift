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
                    .shadow(color: .bg, radius: 1, x: 0, y: 0)

                Image(.mission)
                    .shadow(color: .bg, radius: 1, x: 0, y: 0)
            }

        }   //Button
        .buttonStyle(.plain)
        
    }
}

#Preview {
    MissionButton()
}
