//
//  MyCardOne.swift
//  Swift#08_Pratice_Stack
//
//  Created by 비바 on 2023/01/10.
//

import SwiftUI

struct BasicCardOne : View{
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor: Color
    
    var body: some View{
         
        HStack (spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 40))
                //.frame(width: 100,height: 100)
                .clipShape(Circle())
                //.overlay(Circle()
                //    .stroke(lineWidth: 3)
                //    .foregroundColor(.red))
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                //Rectangle().frame(height: 10)
                Text(title)
                    .padding(.bottom, 5)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("\(start) -\(end)")
                
                
            }
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct Previews_BasicCardOne_Previews: PreviewProvider {
    static var previews: some View {
        BasicCardOne(icon: "book.fill",title: "read book",start: "1 PM",end: "2 PM",bgColor: Color.green)
    }
}
