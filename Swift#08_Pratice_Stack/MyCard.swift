//
//  MyCard.swift
//  Swift#08_Pratice_Stack
//
//  Created by 비바 on 2023/01/10.
//

import SwiftUI

struct MyCard: View {
    @State var shouldShowAlert: Bool = false
    var body: some View{
        
        VStack (alignment: .leading, spacing: 0 ){
            Rectangle().frame(height: 0)
            Text("유튜브 프로젝트")
                .padding(.bottom,5)
                .font(.system(size: 25))
            
            Text("10 AM- 11 AM")
                .foregroundColor(.secondary)
            //.padding(.bottom,5)
            Spacer().frame(height:20)
            
            HStack{
                Image("user01")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(lineWidth: 3)
                        .foregroundColor(.red))
                Image("user02")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                Image("user03")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                Spacer()
                Button(action: {
                    print("확인 버튼이 클릭")
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding(10)
                        .frame(width: 80)  // 약간 길게
                        .background(Color.blue)
                        .cornerRadius(10)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다"))
                }
            } //hstack
           
        }//vstack
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
    } // body view
    
} // view

struct Previews_MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
    }
}
