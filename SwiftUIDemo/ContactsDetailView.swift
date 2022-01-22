//
//  ContactsDetailView.swift
//  SwiftUIDemo
//
//  Created by WilliamYang on 2022/1/22.
//

import SwiftUI

struct ContactsDetailView: View {
    var name: String
    var tel: String
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            Image("demo")
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 30)
            
            Text(name)
            
            Text(tel)
            
        }
    }
}

struct ContactsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDetailView(name: "William", tel: "199-9999-9999")
    }
}
