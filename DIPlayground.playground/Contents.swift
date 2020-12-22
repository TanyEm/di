import Foundation
import UIKit

protocol DataManager {
    func setTask()
    func getTask()
    func removeTask()
    func getTasks()
}

class PrivateTaskManager: DataManager {
    //    var items = [PrivateTaskManager]
    
    func setTask() {
        print("setting data of task as owner")
    }
    
    func getTask() {
        print("getting data of task for owner")
    }
    
    func removeTask() {
        print("removing data of task as a owner")
    }
    
    func getTasks() {
        print("getting data of tasks for owner")
    }
}

class GuestTaskManager: PrivateTaskManager {
//    var items = [GuestTaskListItem]
        
    override func getTasks() {
        print("getting data of tasks for guest")
    }
}

class ViewController:UIViewController {
    var dataManager: DataManager

    init(dataManager: DataManager){
        self.dataManager = dataManager
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class GuestViewController:UIViewController {
    var dataManager: DataManager

    init(dataManager: DataManager){
        self.dataManager = dataManager
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

let vc1DataManager = PrivateTaskManager()
let vc1 = ViewController(dataManager: vc1DataManager)
vc1.dataManager.getTasks()

let vc2DataManager = GuestTaskManager()
let vc2 = ViewController(dataManager: vc2DataManager)
vc2.dataManager.getTasks()
