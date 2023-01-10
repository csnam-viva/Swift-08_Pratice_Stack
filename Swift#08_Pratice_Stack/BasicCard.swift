//
//  BasicCard.swift
//  Swift#08_Pratice_Stack
//
//  Created by 비바 on 2023/01/10.
//

import SwiftUI

struct BasicCard: View{
    var body: some View{
        HStack (spacing: 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                //.frame(width: 100,height: 100)
                .clipShape(Circle())
                //.overlay(Circle()
                //    .stroke(lineWidth: 3)
                //    .foregroundColor(.red))
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                //Rectangle().frame(height: 10)
                Text("aaaa")
                    .padding(.bottom, 5)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("bbbb")
                
                
            }
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}


struct Previews_BasicCard_Previews: PreviewProvider {
    static var previews: some View {
        BasicCard()
    }
}
