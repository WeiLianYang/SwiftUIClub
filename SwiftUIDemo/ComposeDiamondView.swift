//
//  ComposeDiamondView.swift
//  SwiftUIDemo
//
//  Created by WilliamYang on 2022/1/23.
//

import SwiftUI

struct ComposeDiamondView: View {
    
    let angle: Angle
    
    var body: some View {
        // 绘制闪电，设置渐变色
        Path { path in
            let x = 200
            let y = 200
            
            path.move(to: CGPoint(x: x, y: y))
            path.addLine(to: CGPoint(x: 150, y: 250))
            path.addLine(to: CGPoint(x: 150, y: 100))
            path.addLine(to: CGPoint(x: 200, y: 300))
            
        }.fill(LinearGradient(gradient: Gradient(colors: [.red, .red]), startPoint: .leading, endPoint: .trailing)).rotationEffect(angle, anchor: .center)
    }
}

struct ComposeDiamondView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ForEach(0 ..< 10) { index in
                ComposeDiamondView(angle: Angle(degrees: Double(36 * index))).opacity(0.5)
            }
        }
    }
}
