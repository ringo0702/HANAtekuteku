//
//  HANAtekutekuApp.swift
//  HANAtekuteku
//
//  Created by 請関花恋 on 2025/11/10.
//

import SwiftUI

class globalVariables: ObservableObject {         //用意するクラス
    @Published var selectedIndex: Int = 0           //画面遷移変数
    @Published var showImagePickerDialog = false    //ダイアログ
}

@main
struct HANAtekutekuApp: App {
    var body: some Scene {
        WindowGroup {
            CustomTabBar()
                .environmentObject(globalVariables())
        }
    }
}
