//
//  horizantalAndVertical.swift
//  ScrollViews
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct horizantalAndVertical: View {
    var body: some View {
        ScrollView(.vertical){
            VStack{
                ForEach(1..<10){_ in
                    ScrollView(.horizontal)
                    {
                        HStack{
                            ForEach(1..<10){_ in
                                Rectangle()
                                    .frame(width: 200,height: 200)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    horizantalAndVertical()
}
