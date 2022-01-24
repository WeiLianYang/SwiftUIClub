//
//  DiamondView.swift
//  SwiftUIDemo
//
//  Created by WilliamYang on 2022/1/23.
//

import SwiftUI

struct DiamondView: View {
    var body: some View {
        
        VStack {
            // 1. 绘制菱形，填充颜色
            Path { path in
                let x = 100
                let y = 100
                
                path.move(to: CGPoint(x: x, y: y))
                path.addLine(to: CGPoint(x: 200, y: 50))
                path.addLine(to: CGPoint(x: 300, y: 100))
                path.addLine(to: CGPoint(x: 200, y: 150))
                
            }.fill(.green)
            
            // 绘制菱形，不填充颜色
            Path { path in
                let x = 100
                let y = 100
                
                path.move(to: CGPoint(x: x, y: y))
                path.addLine(to: CGPoint(x: 200, y: 50))
                path.addLine(to: CGPoint(x: 300, y: 100))
                path.addLine(to: CGPoint(x: 200, y: 150))
                path.addLine(to: CGPoint(x: 100, y: 100))
                
            }.stroke(.blue, lineWidth: 8)
            
            // 绘制菱形，设置虚线边框
            Path { path in
                let x = 100
                let y = 100
                
                path.move(to: CGPoint(x: x, y: y))
                path.addLine(to: CGPoint(x: 200, y: 50))
                path.addLine(to: CGPoint(x: 300, y: 100))
                path.addLine(to: CGPoint(x: 200, y: 150))
                path.addLine(to: CGPoint(x: 100, y: 100))
                
            }.stroke(style: StrokeStyle(lineWidth: 4, lineCap: .butt, lineJoin: .bevel, miterLimit: 3, dash: [10, 5], dashPhase: 3))
                .foregroundColor(.red)
            
            // 绘制菱形，设置渐变色
            Path { path in
                let x = 100
                let y = 100
                
                path.move(to: CGPoint(x: x, y: y))
                path.addLine(to: CGPoint(x: 200, y: 50))
                path.addLine(to: CGPoint(x: 300, y: 100))
                path.addLine(to: CGPoint(x: 200, y: 150))
                path.addLine(to: CGPoint(x: 100, y: 100))
                
            }.fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct DiamondView_Previews: PreviewProvider {
    static var previews: some View {
        DiamondView()
    }
}
