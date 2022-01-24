//
//  TransformAnimationView.swift
//  SwiftUIDemo
//
//  Created by WilliamYang on 2022/1/23.
//

import SwiftUI

// 转场动画
struct TransitionsAnimationView: View {
    
    @State private var start = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Button (action: {
                withAnimation {
                    self.start.toggle()
                }
            }) {
                Text("Start transitions Animation")
                    .font(Font.system(size: 26))
                    .rotationEffect(.degrees(self.start ? 360 : 0)) // 设置旋转角度
                    .scaleEffect(self.start ? 2 : 1) // 设置放大倍数
                    .animation(.easeInOut(duration: 3)) // 执行动画
            }
            if (self.start) {
                ZStack {
                    ForEach(0 ..< 10) { index in
                        ComposeDiamondView(angle: Angle(degrees: Double(36 * index))).opacity(0.6)
                    }
                }.animation(.custom())
                    .transition(.slide)
            }
        }
    }
}

extension Animation {
    static func custom() -> Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(2)
            .delay(0.05)
    }
}

struct TransformAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsAnimationView()
    }
}
