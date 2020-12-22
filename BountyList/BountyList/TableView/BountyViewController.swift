////
////  BountyViewController.swift
////  BountyList
////
////  Created by 이문정 on 2020/12/20.
////
//
//import UIKit
//
//class BountyViewController: UIViewController {
//    
//    let viewModel = BountyViewModel()
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetail" {
//            let vc = segue.destination as? DetailViewController
//            if let index = sender as? Int {
//                let bountyInfo = viewModel.bountyInfo(at: index)
//                vc?.viewModel.update(model: bountyInfo)
//            }
//        }
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//}
//
//extension BountyViewController: UITableViewDataSource {
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
//    }
//}
//
//extension BountyViewController: UITableViewDelegate {
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return viewModel.numOfBountyInfoList
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ListCell else { return UITableViewCell() }
//        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
//        cell.update(info: bountyInfo)
//        return cell
//    }
//}
//
//class BountyViewModel {
//    
//    let bountyInfoList: [BountyInfo] = [
//        BountyInfo(name: "brook", bounty: 33000000),
//        BountyInfo(name: "chopper", bounty: 50),
//        BountyInfo(name: "franky", bounty: 44000000),
//        BountyInfo(name: "luffy", bounty: 300000000),
//        BountyInfo(name: "nami", bounty: 16000000),
//        BountyInfo(name: "robin", bounty: 80000000),
//        BountyInfo(name: "sanji", bounty: 77000000),
//        BountyInfo(name: "zoro", bounty: 120000000)
//    ]
//    
//    var sortedList: [BountyInfo] {
//        let sortedList = bountyInfoList.sorted { prev, next in
//            return prev.bounty > next.bounty
//        }
//        return sortedList
//    }
//    
//    var numOfBountyInfoList: Int {
//        return bountyInfoList.count
//    }
//    
//    func bountyInfo(at index: Int) -> BountyInfo {
//        return sortedList[index]
//    }
//}
