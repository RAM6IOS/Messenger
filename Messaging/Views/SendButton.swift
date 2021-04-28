//
//  SendButton.swift
//  Messaging
//
//  Created by MAC on 26/4/2021.
//

import SwiftUI

struct SendButton: View {
    @Binding var text : String
    
    var body: some View {
        Button(action: {
            self.sendMessage()
        }, label: {
            Image(systemName: "paperplane")
        })
        .font(.system(size: 35))
        
       
    }
    func sendMessage(){
        guard !text.isEmpty else {
           return
        }
    }
    }


struct SendButton_Previews: PreviewProvider {
    static var previews: some View {
        SendButton(text:sendMessage)
    }
}
