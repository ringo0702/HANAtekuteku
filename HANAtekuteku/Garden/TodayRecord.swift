//
//  TodayRecord.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/03.
//
//  GardenView:「今日の記録」コンポーネント

import  SwiftUI

struct TodayRecord:View {
    var body: some View {
        //今日の記録
        ZStack{
            //フレーム
            RoundedRectangle(cornerRadius: 50)
                .fill(.white.opacity(0))
                .frame(maxWidth: 320, maxHeight: 80)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.mainPink, lineWidth: 1)
                )
            
            VStack{
                Text("今日の記録")
                    .zenFont(.medium, size: 12)
                    .padding(.top, 2)
                Spacer()
                //記録
                HStack(spacing: 16){
                    //距離
                    HStack(alignment: .bottom,spacing: 4){
                        Text("3")
                            .zenFont(.bold, size: 24)
                        Text("km")
                            .zenFont(.medium, size: 16)
                    }
                    //歩数
                    HStack(alignment: .bottom,spacing: 4){
                        Text("8,334")
                            .zenFont(.bold, size: 24)
                        Text("歩")
                            .zenFont(.medium, size: 16)
                    }
                    //枚数
                    HStack(alignment: .bottom,spacing: 4){
                        Text("3")
                            .zenFont(.bold, size: 24)
                        Text("枚")
                            .zenFont(.medium, size: 16)
                    }
                }   //HStack 記録
                Spacer()
            }   //VStack
        }   //ZStack
        .frame(maxWidth: 320, maxHeight: 80)
    }   //body
}   //View

#Preview {
    TodayRecord()
}
