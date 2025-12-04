//
//  CustomTabBar.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI

struct CustomTabBar: View {
    @State private var selectedIndex = 0
    
    let tabIcons = ["House", "PottedPlant", "CameraPlus", "MapTrifold", "Notebook"]
    let tabIconsPink = ["House_p", "PottedPlant_p", "MapTrifold_p", "Notebook_p"]
    let tabNames = ["ホーム", "ガーデン","フォト", "マップ", "日記"]
    
    
    
    var body: some View {
        ZStack {
            Color.bg.ignoresSafeArea()
                // ビュー
                ZStack {
                        
                            switch selectedIndex {
                            case 0:
                                HomeView()
                            case 1:
                                GardenView()
                            case 2:
                                Photo()
                            case 3:
                                MapTrifoldView()
                            case 4:
                                Notebook()
                            default:
                                HomeView()
                            }   //swich
                        
                    VStack{
                        //上部タブ
                        HStack {
                            //上部タブ中身
                            HStack{
                                //ページタイトル
                                if(selectedIndex == 0){
                                    Image(.appLogo)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 36)
                                }else{
                                    Text(tabNames[selectedIndex])
                                        .zenFont(.medium, size: 24)
                                    
                                }
                                Spacer()
                                //設定アイコン
                                Button(action: {
                                    
                                }){
                                    Image(.userCircleGear)
                                }
                            }
                            .padding(.top, 50)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 120)
                        .background(Color.bg.opacity(0.7))
                        
                        Spacer()
                        
                        ZStack{
                            Rectangle()
                                .fill(Color.mainGreen)
                                .frame(maxWidth: .infinity, maxHeight: 100
                                )
                                .shadow(color: .bg, radius: 2, x: 0, y: 0)
                                
                            // カスタムタブバー
                            HStack{
                                //タブメニュー
                                HStack {
                                    Spacer()
                                    //ホーム
                                    Button(action:{
                                        selectedIndex = 0
                                    }){
                                        VStack{
                                            if(selectedIndex == 0 ){
                                                Image(tabIconsPink[0])
                                            }else {
                                                Image(tabIcons[0])
                                            }
                                            Text(tabNames[0])
                                                .foregroundStyle(selectedIndex == 0 ? .mainPink : .bg) // 色切り替え
                                                .zenFont(.medium, size: 11)
                                                .padding(.top, -10)
                                        }
                                        .shadow(color: selectedIndex == 0 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                                        
                                    }    //Button ホーム
                                    .buttonStyle(.plain)
                                    .padding(.trailing, 24)
                                    
                                    //ガーデン
                                    Button(action:{
                                        selectedIndex = 1
                                    }){
                                        VStack{
                                            if(selectedIndex == 1 ){
                                                Image(tabIconsPink[1])
                                            }else {
                                                Image(tabIcons[1])
                                            }
                                            Text(tabNames[1])
                                                .foregroundStyle(selectedIndex == 1 ? .mainPink : .bg) // 色切り替え
                                                .zenFont(.medium, size: 11)
                                                .padding(.top, -10)
                                        }
                                        .shadow(color: selectedIndex == 1 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                                        
                                    }    //Button ガーデン
                                    .buttonStyle(.plain)
                                    
                                    //フォト
                                    Button(action:{
                                        selectedIndex = 2
                                    }){
                                        ZStack{
                                            Circle()
                                                .fill(.mainPink)
                                                .frame(width: 100, height: 100)
                                                .overlay(
                                                    Circle()
                                                        .stroke(Color.bg, lineWidth: 1)
                                                )
                                            Image(tabIcons[2])
                                        }
                                        .shadow(color: .bg, radius: 1, x: 0, y: 0)
                                        .padding(.bottom, 60)
                                    }    //Button フォト
                                    .buttonStyle(.plain)
                                    
                                    //マップ
                                    Button(action:{
                                        selectedIndex = 3
                                    }){
                                        VStack{
                                            if(selectedIndex == 3 ){
                                                Image(tabIconsPink[2])
                                            }else {
                                                Image(tabIcons[3])
                                            }
                                            Text(tabNames[3])
                                                .foregroundStyle(selectedIndex == 3 ? .mainPink : .bg) // 色切り替え
                                                .zenFont(.medium, size: 11)
                                                .padding(.top, -10)
                                        }
                                        .shadow(color: selectedIndex == 3 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                                    }    //Button マップ
                                    .buttonStyle(.plain)
                                    .padding(.trailing, 24)
                                    
                                    
                                    //日記
                                    Button(action:{
                                        selectedIndex = 4
                                    }){
                                        VStack{
                                            if(selectedIndex == 4 ){
                                                Image(tabIconsPink[3])
                                            }else {
                                                Image(tabIcons[4])
                                            }
                                            Text(tabNames[4])
                                                .foregroundStyle(selectedIndex == 4 ? .mainPink : .bg) // 色切り替え
                                                .zenFont(.medium, size: 11)
                                                .padding(.top, -10)
                                        }
                                        .shadow(color: selectedIndex == 4 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                                        
                                    }   //Button 日記
                                    .buttonStyle(.plain)
                                    
                                    Spacer()
                                }   //HStack タブメニュー
                                .frame(width: 360)
                            }   //HStack カスタムタブバー
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 100
                        )
                    }
                    
            }   // VStack
            .edgesIgnoringSafeArea(.all)
        }   // ZStack
    }   //body
}   //View

#Preview {
    CustomTabBar()
}
