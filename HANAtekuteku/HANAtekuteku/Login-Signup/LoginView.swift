//
//  LoginView.swift
//  HANAtekuteku
//
//  Created by 請関花恋 on 2025/11/10.
//
import SwiftUI

struct LoginView: View {
    @State private var login_email = ""
    @State private var login_password = ""
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
                
                    //VStack 入力フォーム
                    VStack(spacing: 40){
                        VStack(spacing: 24){
                        //メールアドレスフィールド
                        VStack(alignment: .leading, spacing: 8) {
                            Text("メールアドレス")
                                .zenFont(.medium, size: 16)
                                .foregroundStyle(.font)
                            
                            TextField(placeholder, text: $login_email)
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
                                
                                TextField("", text: $login_password)
                                    .frame(width: 290, height: 30)
                                    .padding(5)
                                    .background(.white)
                                    .overlay(RoundedRectangle(cornerRadius:5).stroke(style: StrokeStyle(lineWidth: 1))
                                        .fill(.fieldBorder))
                                    .autocapitalization(.none)
                            }   //VStack
                            Button("パスワードを忘れた方はこちら",action: {})
                                .foregroundStyle(.fontcaption)
                                .zenFont(.medium, size: 10)
                                .buttonStyle(.plain)
                        }
                        }   //VStack パスワードフィールド
                        
                        //Googleでログインボタン
                        Button(action:{
                            
                        }){
                            Image(.googlelogin)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                                .buttonStyle(.plain)
                        }
                        
                    } //VStack 入力フォーム
                
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
                    
                    Button("アカウントを持ちでない方は新規登録へ",action: {})
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
    LoginView()
}
