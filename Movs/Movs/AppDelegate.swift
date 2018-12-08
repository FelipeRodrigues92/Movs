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
        
        GenreMoyaGateway().fecthGenres { (result: Result<[Genre]>) in
            if case let .success(genres) = result {
                GenreHelper.genreList = genres
            } else {/*do nothing*/}

        }
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
//        window.rootViewController = UpComingMovieViewController()
         window.rootViewController = MovieDetailViewController()
        self.window = window
        
        window.makeKeyAndVisible()
        return true
    }
}

