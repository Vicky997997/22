//
//  BrowseView.swift
//  DogGram
//
//  Created by Nick Sarno on 10/8/20.
//

import SwiftUI

struct BrowseView: View {
    
    var posts: PostArrayObject
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            CarouselView()
            ImageGridView(posts: posts)
        })
        .navigationBarTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView(posts: PostArrayObject(shuffled: true))
        }
    }
}
