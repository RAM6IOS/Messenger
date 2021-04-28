//
//  ChatRow.swift
//  Messaging
//
//  Created by MAC on 26/4/2021.
//

import SwiftUI

struct ChatRow: View {
    let type : MessageType
    
    var  isSender : Bool{
        self.type == .sent
    }
    
    init(type:MessageType){
       self.type = type
    }
    var body: some View {
        
        HStack{
            if isSender{
                Spacer()
            }
            
            if !isSender{
                VStack{
                    Spacer()
                    Circle()
                        .frame(width: 45, height: 45 )
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
            }
           
            HStack{
                Text("Holle Word ,Holle word,Holle Word ,Holle word Holle Word ,Holle word Holle Word ,Holle word   ")
                    .foregroundColor(isSender ? Color.white : Color(.label))
                    .padding()
                
                
            }
            .background(isSender ? Color.blue :Color(.systemGray4))
            .padding(isSender ? .leading : .trailing,isSender ? UIScreen.main.bounds.width/3:UIScreen.main.bounds.width/5)
            .cornerRadius(10)
            
            if !isSender{
                Spacer()
            }
        }
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(type: .sent)
            .preferredColorScheme(.dark)
            
    }
}
