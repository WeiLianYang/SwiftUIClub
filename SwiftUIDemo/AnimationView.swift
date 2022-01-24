//
//  AnimationView.swift
//  SwiftUIDemo
//
//  Created by WilliamYang on 2022/1/23.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var start = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Button (action: {
                self.start.toggle()
            }) {
                Text("Start Animation")
                    .font(Font.system(size: 26))
                    .rotationEffect(.degrees(self.start ? 360 : 0)) // 设置旋转角度
                    .scaleEffect(self.start ? 2 : 1) // 设置放大倍数
                    .animation(.easeInOut) // 执行动画
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
