//
//  ContentView.swift
//  Swift#08_Pratice_Stack
//
//  Created by 비바 on 2023/01/10.
//

import SwiftUI

struct ContentView: View {
    @State var isNaviagionBarHidden : Bool = false
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing) {
                
                VStack(alignment: .leading ,spacing: 0){
                    HStack{
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNaviagionBarHidden)) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                    }.padding(10)
                    Text("할일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(10)
                    ScrollView {
                        VStack {
                            MyCard()
                            BasicCardOne(icon: "tray.fill", title: "정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            BasicCardOne(icon: "tv.fill", title: "정리하기", start: "10 AM", end: "11 AM", bgColor: Color.red)
                            BasicCardOne(icon: "cart.fill", title: "정리하기", start: "10 AM", end: "11 AM", bgColor: Color.green)
                            BasicCardOne(icon: "tray.fill", title: "정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            BasicCardOne(icon: "gamecontroller.fill", title: "정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            BasicCardOne(icon: "tray.fill", title: "정리하기", start: "10 AM", end: "11 AM", bgColor: Color.yellow)
                        }
                    }.padding()
                }
                
                Circle()
                    .foregroundColor(Color.blue)
                    .frame(width: 60,height: 60)
                    .overlay(Image(systemName: "plus")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    )
                    .padding(20)
                    .shadow(radius: 20)
            }
            .navigationBarTitle("뒤로가기")
            .navigationBarHidden(self.isNaviagionBarHidden)
            .onAppear{
                self.isNaviagionBarHidden = true
            }
            
        } // navigatioView
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
