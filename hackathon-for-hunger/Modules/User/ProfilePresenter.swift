//
//  ProfilePresenter.swift
//  hackathon-for-hunger
//
//  Created by David Fierstein on 5/14/16.
//  Copyright © 2016 Hacksmiths. All rights reserved.
//

import Foundation

protocol ProfileView: NSObjectProtocol {
    func startLoading()
    func finishLoading()
    func login(didSucceed user: User)
    func login(didFail error: NSError)
}

class ProfilePresenter {
    private let userService: UserService
    private var profileView: ProfileView?
    
    init(userService: UserService){
        self.userService = userService
    }
    
    func attachView(view: ProfileView){
        profileView = view
    }
    
    func detachView() {
        profileView = nil
    }
    
//    func authenticate(credentials: UserLogin){
//        userService.authenticateUser(credentials).then() {
//            user -> () in
//            self.profileView?.login(didSucceed: user!)
//            
//            }.error { error in
//                self.profileView?.login(didFail: error as NSError)
//        }
//    }
}