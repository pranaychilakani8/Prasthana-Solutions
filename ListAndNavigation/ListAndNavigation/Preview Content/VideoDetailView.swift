//
//  VideoDetailView.swift
//  ListAndNavigation
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct VideoDetailView: View {
    var video : Video
    
    var body: some View {
        VStack{
            Image("wish-i-knew")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text("SwiftUI Basic Tutorial")
                .fontWeight(.semibold)
            HStack(spacing: 10){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .foregroundColor(.secondary)
                    .padding()
                Text(video.uploadDate)
                    .foregroundColor(.secondary)
                    .padding()
            }
            Text(video.description)
                .padding()
            
            Link("Watch Now", destination: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA&t=193s")!)
        
        }
    }
}

#Preview {
    VideoDetailView(video: VideoList.topTen.first!)
}
