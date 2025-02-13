//
//  VideoListView.swift
//  ListAndNavigation
//
//  Created by Pranay on 13/02/25.
//

import SwiftUI

struct VideoListView: View {
    
    var videos :[Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            List(videos ,id: \.id){ video in
                NavigationLink {
                    VideoDetailView(video: video)
                } label: {
                    HStack{
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                        
                        VStack(alignment: .leading,spacing: 5){
                            Text(video.title)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .navigationTitle("Top 10")
            }
        }
    }
}

#Preview {
    VideoListView()
}
