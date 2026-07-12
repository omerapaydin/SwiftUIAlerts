//
//  ContentView.swift
//  SwiftUIAlerts
//
//  Created by Ömer Apaydın on 12.07.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var alert = false
    @State private var actionSheet = false
    var body: some View {
        VStack {
            Button("Alert"){
                alert = true
            }.alert("Başlık",isPresented: $alert,actions: {
                Button("İptal",role: .cancel,action: {
                    print("İptal Seçildi")
                })
                Button("Tamam",role: .destructive,action: {
                    print("Tamam Seçildi")
                })
            },message: {
                Text("İçerik")
            })
            .padding()
            
            
            Button("Action Sheet"){
                actionSheet = true
            }.actionSheet(isPresented: $actionSheet){
                ActionSheet(title: Text("Başlık"),message: Text("İçerik"),
                     buttons: [
                        .default(Text("İptal"),action: {
                            print("iptaş")
                        }),
                        .destructive(Text("Tamam"),action: {
                            print("tamam seçildi")
                        })
                        
                     ]
                )
            }.padding()
            
            Button("Context Menu"){
                
            }.padding()
            
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
