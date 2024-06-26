//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Radhita Keniten on 03/05/24.
//

import SwiftUI

@available(iOS 17.0, *)

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false


    var body: some View {
        NavigationSplitView {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .listRowInsets(EdgeInsets())


                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

@available(iOS 17.0, *)
#Preview {
    CategoryHome()
        .environment(ModelData())
}
