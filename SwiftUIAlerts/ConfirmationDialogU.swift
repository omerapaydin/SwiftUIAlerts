//
//  ConfirmationDialogU.swift
//  SwiftUIAlerts
//
//  Created by Ömer Apaydın on 12.07.2026.
//

import SwiftUI

struct ConfirmationDialogU: View {
    
    @State private var dialog = false
    
    var body: some View {
        VStack{
            Button("Tıkla"){
                dialog = true
            }.confirmationDialog("", isPresented: $dialog){
                Button("Tamam"){
                    print("Tamam seçildi")
                }
                Button("İptal",role: .cancel){
                    print("İptal seçildi")
                }
            } message: {
                Text("Başlık")
            }
        }
    }
}

#Preview {
    ConfirmationDialogU()
}
