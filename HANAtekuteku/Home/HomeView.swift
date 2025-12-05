//
//  HomeView.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI

struct HomeView: View {
    @State private var selectedNews = 0

    let news: [String] = ["天気", "お花", "記録"]
    var body: some View {
        ZStack{
            Color.bg.ignoresSafeArea()
            VStack{
                ZStack{
                    NewsWeather()
                        .padding(.top, 14)
                    VStack{
                        ZStack{
                            //上ボーダー
                            Rectangle()
                                .fill(.thinGreen)
                                .frame(maxWidth: .infinity, maxHeight: 2)
                            ZStack{
                                RoundedRectangle(cornerRadius :30)
                                    .fill(Color.thinGreen)
                                    .frame(width: 80, height: 24)
                                Text("今日の" + news[selectedNews])
                                    .zenFont(.medium, size: 12)
                            }
                        }
                        Spacer()
                        //下ボーダー
                        Rectangle()
                            .fill(.thinGreen)
                            .frame(maxWidth: .infinity, maxHeight: 2)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 144)
                }   //ZStack 今日のトピック
                .padding(.top, 140)
                Spacer()
            }   //VStack
        }   //ZStack
    }   //body
}   //View

#Preview {
    HomeView()
}
