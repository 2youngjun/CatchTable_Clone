//
//  SwipeViewController.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/27.
//

import SwiftUI
import UIKit

struct SwipeViewController<Swipe: View>: UIViewControllerRepresentable{
//    var controllers: [UIViewController]
    var swipes: [Swipe]
//    @Binding var currentPage: Int

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let swipeViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        swipeViewController.dataSource = context.coordinator
//        swipeViewController.delegate = context.coordinator
        return swipeViewController
    }
    
    func updateUIViewController(_ swipeViewController: UIPageViewController, context: Context) {
        swipeViewController.setViewControllers([context.coordinator.controllers[0]], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource {
        var parent: SwipeViewController
        var controllers = [UIViewController]()
        
        init(_ swipeViewController: SwipeViewController) {
            self.parent = swipeViewController
            controllers = parent.swipes.map { UIHostingController(rootView: $0) }
        }
        
        func pageViewController(_ swipeViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController) else {
                        return nil
                    }
                    if index == 0 {
                        return controllers.last
                    }
                    return controllers[index - 1]
        }
        
        func pageViewController(
                _ swipeViewController: UIPageViewController,
                viewControllerAfter viewController: UIViewController) -> UIViewController?
            {
                guard let index = controllers.firstIndex(of: viewController) else {
                    return nil
                }
                if index + 1 == controllers.count {
                    return controllers.first
                }
                return controllers[index + 1]
            }
    }
}
