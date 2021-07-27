//
//  MyCard.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/07/27.
//

import SwiftUI

struct MyCard : View {
    
    let date = Date()
    
    var body: some View{
       
        VStack(alignment: .leading, spacing: 0){
            
            Rectangle().frame(height:0)
            
            Text("SwiftUI - apply to stack")
                .font(.system(size:23))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom,5)
           
            Text(date, style: .time)
                .foregroundColor(.secondary)
            
            Spacer().frame(height:20)
            
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height:50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                    Circle()
                        .stroke(lineWidth: 1)
                        .foregroundColor(Color.red))
                Image("2")
                    .resizable()
                    .frame(width: 50, height:50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("3")
                    .resizable()
                    .frame(width: 50, height:50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Text("확인")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
                    
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider{
    static var previews: some View{
        MyCard()
    }
}