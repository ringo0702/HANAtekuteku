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
            Image(.gardenSoil)
                .resizable()
                .frame(maxHeight: .infinity)
                .ignoresSafeArea()
            //今日の記録、ミッションボタン
            VStack(spacing: 16){
                TodayRecord()
                HStack(){
                    Spacer()
                    MissionButton()
                }
                .frame(maxWidth: 320)
                Spacer()
            }   //VStack
            .padding(.top, 140)
        }   //ZStack
        
    }   //body
}   //View

#Preview {
    GardenView()
}
