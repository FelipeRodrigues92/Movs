//
//  AppDelegate.swift
//  Movs
//
//  Created by Felipe Rodrigues Silva on 05/12/18.
//  Copyright © 2018 Felipe Rodrigues Silva. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        ///It will set the all genres store when aplication starts
        GenreMoyaGateway().fecthGenres { (result: Result<[Genre]>) in
            if case let .success(genres) = result {
                GenreHelper.genreList = genres
            } else {/*do nothing*/}

        }
        ///Instantiating a UIWindow
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        ///Instantiating a custom tabarController for the app
        let tabBarController = CustomTabBarController()
        
        ///Instantiating the pricipal viewController of app
        let upComingMovieListController = UpcomingMovieListViewController()
        
        ///Instantiating a custom navigation controller for the app
        let moviesNavigationController = CustomNavigationController(rootViewController: upComingMovieListController)
        
        ///Set navigationController to tabBar
        tabBarController.viewControllers = [moviesNavigationController]
        
        ///Indicating this tabarController to rootViewController of app
        window.rootViewController = tabBarController
        
        ///To assign this custom window to the app window
        self.window = window
        
        window.makeKeyAndVisible()
        return true
    }
}

