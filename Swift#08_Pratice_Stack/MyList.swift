//
//  MyList.swift
//  Swift#08_Pratice_Stack
//
//  Created by 비바 on 2023/01/10.
//

import SwiftUI

struct MyList: View{
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        
        if #available(iOS 14.0, *){
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        _isNavigationBarHidden = isNavigationBarHidden
    }
    var body: some View {
        List{
//            ForEach(1...10,id: \.self) {
//                Text("my list \($0)")
//            }
            
            Section(
                header: Text("오늘 할일")
                    .font(.headline)
                    .foregroundColor(Color.black)
                ,footer: Text("footer")
            ){
                ForEach(1...2,id: \.self) { itemIndex in
                    BasicCardOne(icon: "book.fill",title: "read book(\(itemIndex))",start: "1 PM",end: "2 PM",bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top:10,leading: 10,bottom: 10,trailing: 10))
            Section(
                header: Text("내일 할일")
                    .font(.headline)
                    .foregroundColor(Color.black)
                ,footer: Text("footer")
            ){
                ForEach(1...2,id: \.self) { itemIndex in
                    BasicCardOne(icon: "book.fill",title: "read book(\(itemIndex))",start: "1 PM",end: "2 PM",bgColor: Color.blue)
                }
            }
            .listRowBackground(Color.yellow)
            
        }
        //.listStyle(GroupedListStyle())
        .listStyle(PlainListStyle())
        .navigationTitle("내목록")
        .onAppear{
            self.isNavigationBarHidden = false
        }
        
    }
}

struct Previews_MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
