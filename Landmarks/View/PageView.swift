//
//  PageView.swift
//  Landmarks
//
//  Created by Radhita Keniten on 03/05/24.
//

import SwiftUI

@available(iOS 17.0, *)
struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0


    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

@available(iOS 17.0, *)
#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
