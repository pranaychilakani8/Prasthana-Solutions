//
//  HorizantalScrolling.swift
//  ScrollViews
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct HorizantalScrolling: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            HStack{
                ForEach(1..<8){_ in
                    Circle()
                        .frame(width: 50,height: 50)
                        .padding()
                        .overlay{
                            Circle().stroke(.white,lineWidth: 3)
                                .frame(width: 50,height: 50)
                                .shadow(radius: 3)
                         
                        }
                    
                }
            }
            Divider()
        })
        ScrollView{
            VStack{
                ForEach(1..<8){_ in
                    Rectangle()
                        .frame(width: 300,height: 100)
                        .background(ignoresSafeAreaEdges: .all)
                }
            }
        }
    }
}

#Preview {
    HorizantalScrolling()
}
