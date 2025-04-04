//
//  ContentView.swift
//  kadai_8
//
//  Created by 飯田正志 on 2025/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State var currentValue: Double = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Orange(currentValue: $currentValue)
                .tabItem {
                    Label("Item", systemImage: "")
                }
                .tag(0)
            
            Cyan(currentValue: $currentValue)
                .tabItem {
                    Label("Item", systemImage: "")
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView()
}

struct Orange: View {
    
    @Binding var currentValue: Double
    
    var body: some View {
        sliderView(color: .orange, currentValue: currentValue, currentValueBinding: $currentValue)
    }
}

struct Cyan: View {
    
    @Binding var currentValue: Double
    
    var body: some View {
        sliderView(color: .cyan, currentValue: currentValue, currentValueBinding: $currentValue)
    }
}

func sliderView(color: Color, currentValue: Double ,currentValueBinding: Binding<Double>) -> some View {
    ZStack {
        color
        VStack {
            Text("\(currentValue)")
                .font(.title)
            
            Slider(value: currentValueBinding, in: 0...1)
        }
        .padding()
    }
}


