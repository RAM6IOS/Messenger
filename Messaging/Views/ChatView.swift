//
//  ChatView.swift
//  Messaging
//
//  Created by MAC on 26/4/2021.
//

import SwiftUI

struct ChatView: View {
    @State var message : String = ""
    var body: some View {
        VStack{
        ScrollView(.vertical){
            ChatRow(type: .sent)
                .padding(3)
            
            ChatRow(type: .received)
                .padding()
            
        }
            HStack{
                TextField("Messaging...", text:$message )
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(7)
                
                SendButton(text: $message)
            }
            .padding()
        }
        .navigationTitle("sanmjn")
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .preferredColorScheme(.dark)
    }
}
