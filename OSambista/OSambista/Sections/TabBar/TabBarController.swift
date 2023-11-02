//
//  TabBarController.swift
//  OSambista
//
//  Created by Luiz Claudio Mattos da Silva on 02/11/23.
//

//import Foundation
//import UIKit
//
//class TabBarController : UITabBarController {
//
//    /* ***********************************************************************
//     **
//     **  MARK: Variables Declaration
//     **
//     *************************************************************************/
//
//    var setIndex : Int = 0
//
//    /* ***********************************************************************
//     **
//     **  MARK: View
//     **
//     *************************************************************************/
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////
////        // Crie um gradiente da esquerda para a direita
////        let gradientLayer = CAGradientLayer()
////        gradientLayer.frame = CGRect(x: 0, y: 0, width: tabBar.bounds.width, height: tabBar.bounds.height + 40)
////        gradientLayer.colors = [UIColor.appColor(.gradient1)?.cgColor, UIColor.appColor(.gradient2)?.cgColor]
////        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
////        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
////
////        tabBar.clipsToBounds = true
////
////        // Adicione o gradiente como fundo da TabBar
////        tabBar.layer.insertSublayer(gradientLayer, at: 0)
//
//        // Define outras propriedades da TabBar
//        self.tabBar.isTranslucent = false
//        tabBar.tintColor = UIColor.appColor(.Color)
//
//        let tabBarAppearance = UITabBarAppearance()
//        tabBarAppearance.backgroundColor = UIColor.appColor(.gray)
//        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.appColor(.Color)]
//        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.clear]
//        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor.appColor(.Color)
//        tabBar.standardAppearance = tabBarAppearance
//
//        if #available(iOS 15, *) {
//            tabBar.scrollEdgeAppearance = tabBarAppearance
//        }
//
//
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        self.setupTabBar()
//
//        self.selectedIndex = self.setIndex
//
//    }
//
//    /* ***********************************************************************
//     **
//     **  MARK: Setup Tab Bar
//     **
//     *************************************************************************/
//
//    func setupTabBar() {
//
//        let homeController = UINavigationController(rootViewController: HomeVC())
//
//        if let tabIconHome = UIImage(named: "homeNoTitle") {
//            let resizedImage = tabIconHome.resize(targetSize: CGSize(width: 28, height: 28))
//
//            homeController.tabBarItem.image = resizedImage
//        }
//
//        homeController.tabBarItem.title = "Home"
//
//        let followUpController = UINavigationController(rootViewController: FollowUpVC())
//
//        if let tabIcon = UIImage(named: "oil") {
//            let resizedImage = tabIcon.resize(targetSize: CGSize(width: 28, height: 28))
//
//            followUpController.tabBarItem.image = resizedImage
//        }
//
//        followUpController.tabBarItem.title = "Óleos"
//
//        let questionsController = UINavigationController(rootViewController: QuestionsVC())
//
//        if let tabIcon = UIImage(named: "botao") {
//            let resizedImage = tabIcon.resize(targetSize: CGSize(width: 32, height: 32))
//
//            questionsController.tabBarItem.image = resizedImage
//        }
//
//        let wellBeingController = UINavigationController(rootViewController: NewWellBeingVC())
//
//        if let tabIcon = UIImage(named: "healthcare") {
//            let resizedImage = tabIcon.resize(targetSize: CGSize(width: 28, height: 28))
//
//            wellBeingController.tabBarItem.image = resizedImage
//        }
//
//        wellBeingController.tabBarItem.title = "Bem-estar"
//
//        let queriesController = UINavigationController(rootViewController: QueriesVC())
//
//        if let tabIcon = UIImage(named: "person") {
//            let resizedImage = tabIcon.resize(targetSize: CGSize(width: 28, height: 28))
//
//            queriesController.tabBarItem.image = resizedImage
//        }
//
//        queriesController.tabBarItem.title = "Especialista"
//
//        viewControllers = [homeController, followUpController, questionsController, wellBeingController, queriesController]
//
//        tabBar.barTintColor = UIColor.appColor(.gray)
//
//
//        self.delegate = self
//
//    }
//
//}
//
//extension UIImage {
//    func resize(targetSize: CGSize) -> UIImage {
//        let size = self.size
//        let widthRatio = targetSize.width / size.width
//        let heightRatio = targetSize.height / size.height
//
//        let newSize: CGSize
//        if widthRatio > heightRatio {
//            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
//        } else {
//            newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
//        }
//
//        let renderer = UIGraphicsImageRenderer(size: newSize)
//        let resizedImage = renderer.image { _ in
//            self.draw(in: CGRect(origin: .zero, size: newSize))
//        }
//
//        return resizedImage
//    }
//}
//
//extension TabBarController: UITabBarControllerDelegate {
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        // Quando um item é selecionado, redefina a posição da imagem para a posição original
//        if let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController) {
//            for (index, item) in tabBar.items!.enumerated() {
//                if index == selectedIndex {
//                    item.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//                } else {
//                    item.imageInsets = UIEdgeInsets(top: 10, left: 0, bottom: -10, right: 0)
//                }
//            }
//        }
//    }
//}
