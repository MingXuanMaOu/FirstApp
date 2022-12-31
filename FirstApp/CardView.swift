//
//  CardView.swift
//  FirstApp
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct CardView: View {
    // MARK: -Properties
    var gradient: [Color] = [Color("Color01"),Color("Color02")]
    // MARK: -Body
    var body: some View {
        ZStack{
            Image("developer-no1")
            
            VStack{
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("如此美妙 不同反响")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: -218)
            
            Button(action: {
                print("按钮被用户单击")
            }, label: {
                HStack{
                    Text("技术总监")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }
                .padding(.vertical)
                .padding(.horizontal,24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
                
            })
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: -Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
