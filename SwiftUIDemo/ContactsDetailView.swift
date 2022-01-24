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
    
    @State var count = 0
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            Image("demo")
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 30)
            
            Text(name)
            
            Text(tel)
            
            ChildView1(count: $count)
            
            ChildView2().environmentObject(EnvironmentData())
            
            AnimationView()
            
            TransitionsAnimationView()
        }
    }
}

struct ContactsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDetailView(name: "William", tel: "199-9999-9999")
    }
}


struct ChildView1: View {
    // 使用绑定注解接收外部传值
    @Binding var count: Int
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            
            Button(action: {
                self.count += 1
            }) {
                Text("ChildView1-Increment:")
            }
            // 当绑定值有更新时会刷新
            Text("\(self.count)")
        }
    }
}

// 环境数据
class EnvironmentData: ObservableObject {
    @Published var count = 0
}

struct ChildView2: View {

    // 绑定环境数据
    @EnvironmentObject var data: EnvironmentData
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            
            Button(action: {
                self.data.count += 1
            }) {
                Text("ChildView2-Increment")
            }
            // 当环境数据值有更新时，会刷新
            Text("\(self.data.count)")
        }
    }
}
