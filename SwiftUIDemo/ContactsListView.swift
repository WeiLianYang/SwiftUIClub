//
//  ContactsListView.swift
//  SwiftUIDemo
//
//  Created by WilliamYang on 2022/1/22.
//

import SwiftUI

struct ContactsListView: View {
    var body: some View {
        // 导航控制器
        NavigationView {
            List(getDataList(), id: \.name) { model in
                // 设置页面 item 点击跳转到详情界面
                NavigationLink(destination: ContactsDetailView(name: model.name, tel: model.tel)) {
                    ContactsItemView(data: model)
                }
            }.navigationTitle("Contacts List")
        }
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView()
    }
}
