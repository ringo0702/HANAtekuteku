//
//  LoginView.swift
//  HANAtekuteku
//
//  Created by 請関花恋 on 2025/11/10.
//
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    let placeholder = "sample@example.com"
    var body: some View {
        ZStack{
            Color.bg.ignoresSafeArea()
            VStack{
                Image(.appLogo) //アプリロゴ
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                
                //LoginForm
                VStack{
                    VStack(alignment: .leading) {
                        Text("メールアドレス")
                            .zenFont(.medium, size: 16)
                            .foregroundStyle(.font)
                            
                        TextField(placeholder, text: $email)
                            .frame(width: 290, height: 30)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(style: StrokeStyle(lineWidth: 1))
                                .fill(.fieldBorder))
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                    }
                        
                    
                    VStack(alignment: .leading) {
                        Text("パスワード")
                            .foregroundStyle(.font)
                            .zenFont(.medium, size: 16)
                        TextField("", text: .constant(""))
                            .frame(width: 290, height: 30)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(style: StrokeStyle(lineWidth: 1))
                                .fill(.fieldBorder))
                    }
                    
                }
                
                
                
                
            }   //VStack
        }   //ZStack
    }   //body
}   //View

#Preview {
    LoginView()
}
