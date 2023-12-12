//
//  LazyView.swift
//  DogGram
//
//  Created by Nick Sarno on 10/21/20.
//

import Foundation
import SwiftUI

struct LazyView<Content: View>: View {
    
    var content: () -> Content
    
    var body: some View {
        self.content()
    }
    
}
