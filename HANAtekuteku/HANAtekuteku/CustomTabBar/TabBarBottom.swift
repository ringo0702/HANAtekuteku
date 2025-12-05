//
//  TabBarBottom.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/05.
//
import SwiftUI

struct TabBarBottom: View {
    @EnvironmentObject var select : globalVariables
    @State private var showImagePickerDialog = false

    let tabIcons = ["House", "PottedPlant", "CameraPlus", "MapTrifold", "Notebook"]
    let tabIconsPink = ["House_p", "PottedPlant_p", "MapTrifold_p", "Notebook_p"]
    let tabNames = ["ホーム", "ガーデン","フォト", "マップ", "日記"]
    
    var body: some View {
        // カスタムタブバー
        HStack{
            //タブメニュー
            HStack {
                Spacer()
                //ホーム
                Button(action:{
                    select.selectedIndex = 0
                }){
                    VStack{
                        if(select.selectedIndex == 0 ){
                            Image(tabIconsPink[0])
                        }else {
                            Image(tabIcons[0])
                        }
                        Text(tabNames[0])
                            .foregroundStyle(select.selectedIndex == 0 ? .mainPink : .bg) // 色切り替え
                            .zenFont(.medium, size: 11)
                            .padding(.top, -10)
                    }
                    .shadow(color: select.selectedIndex == 0 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                    
                }    //Button ホーム
                .buttonStyle(.plain)
                .padding(.trailing, 24)
                
                //ガーデン
                Button(action:{
                    select.selectedIndex = 1
                }){
                    VStack{
                        if(select.selectedIndex == 1 ){
                            Image(tabIconsPink[1])
                        }else {
                            Image(tabIcons[1])
                        }
                        Text(tabNames[1])
                            .foregroundStyle(select.selectedIndex == 1 ? .mainPink : .bg) // 色切り替え
                            .zenFont(.medium, size: 11)
                            .padding(.top, -10)
                    }
                    .shadow(color: select.selectedIndex == 1 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                    
                }    //Button ガーデン
                .buttonStyle(.plain)
                
                //フォト
                Button(action:{
                    select.showImagePickerDialog = true
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
                    select.selectedIndex = 3
                }){
                    VStack{
                        if(select.selectedIndex == 3 ){
                            Image(tabIconsPink[2])
                        }else {
                            Image(tabIcons[3])
                        }
                        Text(tabNames[3])
                            .foregroundStyle(select.selectedIndex == 3 ? .mainPink : .bg) // 色切り替え
                            .zenFont(.medium, size: 11)
                            .padding(.top, -10)
                    }
                    .shadow(color: select.selectedIndex == 3 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                }    //Button マップ
                .buttonStyle(.plain)
                .padding(.trailing, 24)
                
                
                //日記
                Button(action:{
                    select.selectedIndex = 4
                }){
                    VStack{
                        if(select.selectedIndex == 4 ){
                            Image(tabIconsPink[3])
                        }else {
                            Image(tabIcons[4])
                        }
                        Text(tabNames[4])
                            .foregroundStyle(select.selectedIndex == 4 ? .mainPink : .bg) // 色切り替え
                            .zenFont(.medium, size: 11)
                            .padding(.top, -10)
                    }
                    .shadow(color: select.selectedIndex == 4 ? .mainPink : .bg, radius: 1, x: 0, y: 0)
                    
                }   //Button 日記
                .buttonStyle(.plain)
                
                Spacer()
            }   //HStack タブメニュー
            .frame(width: 360)
        }   //HStack カスタムタブバー
    }
}

#Preview {
    TabBarBottom()
        .environmentObject(globalVariables())
}
