//
//  NewsWeather.swift
//  花てくてっく
//
//  Created by 2230220 on 2025/12/01.
//
import SwiftUI

struct NewsWeather: View {
    @State var nowDate = Date()
    @State var dateText = ""
    private let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat = "MM/dd（E）"
        dateFormatter.locale = Locale(identifier: "ja_jp")
        }
    
    var body: some View {
        HStack{
            Text(dateText.isEmpty ? "\(dateFormatter.string(from: nowDate))" : dateText)
                .zenFont(.bold, size: 20)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.nowDate = Date()
                        dateText = "\(dateFormatter.string(from: nowDate))"
                    }
                    
                }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 130)
        
    }
}

#Preview {
    NewsWeather()
}
