//
//  TopSwipeView.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/27.
//

import SwiftUI

struct SwipeView: View {
    let swipes = GenericContent.swipeData
    var body: some View {
        TabView{
            ForEach(swipes){ swipe in
                TopContent(status: swipe.status, subTitle: swipe.subTitle, mainTitle: swipe.mainTitle, imageName: swipe.imageName)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page)
    }
}
