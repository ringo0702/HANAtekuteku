//
//  SignupView.swift
//  花てくてっく
//
//  Created by 請関花恋 on 2025/11/13.
//

import SwiftUI

struct SignupView: View {
    @State private var signup_email = ""
    @State private var password = ""
    @State private var password_conf = ""

    let placeholder = "sample@example.com"
    var body: some View {
        ZStack{
            Color.bg.ignoresSafeArea()
            VStack{
                Image(.appLogo) //アプリロゴ
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .padding(.top, 80)
                
                Spacer()
                
                //Googleボタン込み
                VStack(spacing: 40){
                    //入力フォーム
                    VStack(spacing: 24){
                        //メールアドレスフィールド
                        VStack(alignment: .leading, spacing: 8) {
                            Text("メールアドレス")
                                .zenFont(.medium, size: 16)
                                .foregroundStyle(.font)
                            
                            TextField(placeholder, text: $signup_email)
                                .frame(width: 290, height: 30)
                                .padding(5)
                                .background(.white)
                                .overlay(RoundedRectangle(cornerRadius: 5)
                                    .stroke(style: StrokeStyle(lineWidth: 1))
                                    .fill(.fieldBorder))
                                .autocapitalization(.none)
                        }   //VStack メールアドレスフィールド
                        
                        //VStack パスワードフィールド
                        VStack(alignment: .trailing){
                            VStack(alignment: .leading, spacing: 8) {
                                Text("パスワード")
                                    .foregroundStyle(.font)
                                    .zenFont(.medium, size: 16)
                                
                                TextField("", text: $password)
                                    .frame(width: 290, height: 30)
                                    .padding(5)
                                    .background(.white)
                                    .overlay(RoundedRectangle(cornerRadius:5).stroke(style: StrokeStyle(lineWidth: 1))
                                        .fill(.fieldBorder))
                                    .autocapitalization(.none)
                            }   //VStack
                        }   //VStack パスワードフィールド
                        
                        //VStack パスワード確認フィールド
                        VStack(alignment: .trailing){
                            VStack(alignment: .leading, spacing: 8) {
                                Text("パスワード確認")
                                    .foregroundStyle(.font)
                                    .zenFont(.medium, size: 16)
                                
                                TextField("", text: $password_conf)
                                    .frame(width: 290, height: 30)
                                    .padding(5)
                                    .background(.white)
                                    .overlay(RoundedRectangle(cornerRadius:5).stroke(style: StrokeStyle(lineWidth: 1))
                                        .fill(.fieldBorder))
                                    .autocapitalization(.none)
                            }   //VStack
                        }   //VStack パスワード確認フィールド
                    }   //VStack 入力フォーム
                    
                    //Googleでログインボタン
                    Button(action:{
                        
                    }){
                        Image(.googlelogin)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .buttonStyle(.plain)
                    }   //Button　Googleでログインボタン
                    
                } //VStack　Googleボタン込み
                
                Spacer()
                
                VStack(spacing: 40){
                    //ログインボタン
                    Button(action: {
                        //ボタンを押した時の処理
                    }){
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.mainGreen)
                                .frame(width: 100, height: 40)
                                .shadow(radius: 2, x: 0, y: 4)
                            Text("ログイン")
                                .zenFont(.bold, size: 16, color: .white)
                        }   //ZStack
                    }   //Button ログインボタン
                    .buttonStyle(.plain)
                    
                    Button("アカウントを持ちの方はログインへ",action: {})
                        .foregroundStyle(.fontcaption)
                        .zenFont(.medium, size: 10)
                        .buttonStyle(.plain)
                }   //VStack
                .padding(.bottom, 40)
                
            }   //VStack
        }   //ZStack
    }   //body
}   //View

#Preview {
    SignupView()
}
