//
//  SwipeControl.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/28.
//

import UIKit
import SwiftUI

struct SwipeControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int

    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages

        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}
