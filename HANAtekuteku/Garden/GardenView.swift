//
//  GardenView.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI

struct GardenView: View {
    var body: some View {
        ZStack{
            Color.bg.ignoresSafeArea()
            VStack(spacing: 16){
                TodayRecord()
                HStack(){
                    Spacer()
                    MissionButton()
                }
                .frame(maxWidth: 320)
                Spacer()
            }   //VStack
            .padding(.top, 130)
        }   //ZStack
    }   //body
}   //View

#Preview {
    GardenView()
}
