//
//  MainTabController.swift
//  instagramFirestore
//
//  Created by Tinashe Kudzanayi Mundangepfupfu on 26.04.23.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        configureViewControllers()
        
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        view.backgroundColor = .white
        
        let layout = UICollectionViewFlowLayout()
        let feed = templatedNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage:  #imageLiteral(resourceName: "home_selected"),
                                                 rootViewController: FeedController(collectionViewLayout: layout))
        
        let search = templatedNavigationController(unselectedImage: #imageLiteral(resourceName: "search_unselected"), selectedImage:  #imageLiteral(resourceName: "search_selected"),
                                                   rootViewController: SearchController())
        
        let imageSelector = templatedNavigationController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage:  #imageLiteral(resourceName: "plus_unselected"),
                                                          rootViewController: ImageSelectorController())
        
        let notifications = templatedNavigationController(unselectedImage: #imageLiteral(resourceName: "like_unselected"), selectedImage:  #imageLiteral(resourceName: "like_selected"),
                                                          rootViewController: NotificationController())
        
        let profile = templatedNavigationController(unselectedImage: #imageLiteral(resourceName: "profile_unselected"), selectedImage:  #imageLiteral(resourceName: "profile_selected"),
                                                    rootViewController: ProfileController())
        
        viewControllers =  [feed, search, imageSelector, notifications, profile]
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
    }
    
    func templatedNavigationController(unselectedImage: UIImage, selectedImage: UIImage,
                                       rootViewController:UIViewController) -> UINavigationController{
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
        
    }
    
}
