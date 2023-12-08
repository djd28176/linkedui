//
//  PostCardView.swift
//  linkedui
//
//  Created by Jindong Du on 12/7/23.
//

import SwiftUI

struct SocialView{
    var ids: Int
    var image: String
    var title: String
}
var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send"),
]
let samplePostData = PostData(id: 1, Image: "02", title: "Jindong Du", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70,height: 70,alignment: .leading)
                VStack(alignment:.leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            
            Text("Looking for a new course on iOS with swiftUI, you are already at great place")
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
