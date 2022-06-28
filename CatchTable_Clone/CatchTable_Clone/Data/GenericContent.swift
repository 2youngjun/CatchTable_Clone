//
//  GenericContent.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/27.
//

import Foundation

struct GenericContent : Identifiable{
    var id = UUID()
    var status: String
    var subTitle: String
    var mainTitle: String
    var imageName: String
    
    static let swipeData: [GenericContent] = [
        GenericContent(status: "UPDATE", subTitle: "스시부터 고기, 술까지-혼자서도 잘 먹는", mainTitle: "슬기로운 혼밥 생활", imageName: "swipeImage0"),
        GenericContent(status: "HOT", subTitle: "요즘 핫 한 전통주, 제대로 즐기게 해 줄", mainTitle: "떠오르는 전통주 다이닝", imageName: "swipeImage1"),
        GenericContent(status: "REVIEW", subTitle: "생일, 프로포즈, 축하 등 모든 성공적인", mainTitle: "기념일을 위하여-", imageName: "swipeImage2"),
        GenericContent(status: "UPDATE", subTitle: "이대로 헤어지긴 아쉽잖아요", mainTitle: "2차로 가기 좋은 곳", imageName: "swipeImage3"),
        GenericContent(status: "NOW", subTitle: "스시 먹기 좋은 날? 매일이죠", mainTitle: "지금 예약 가능한 스시야", imageName: "swipeImage4"),
        GenericContent(status: "SEASON", subTitle: "미식도, 계절도 놓칠 수 없는 당신을 위한", mainTitle: "테라스가 있는 곳", imageName: "swipeImage5"),
        GenericContent(status: "Ranking", subTitle: "6월, 모두가 눈여겨보고 있는", mainTitle: "관심 레스토랑 TOP 30", imageName: "swipeImage6"),
        GenericContent(status: "PICK", subTitle: "오마카세, 어디까지 먹어봤어요?", mainTitle: "다양한 종류의 오마카세", imageName: "swipeImage7"),
        GenericContent(status: "PROMOTION", subTitle: "콜키지 프리부터 최대 30% 할인까지!", mainTitle: "이 달의 혜택", imageName: "swipeImage8"),
        GenericContent(status: "NOW", subTitle: "오늘 먹으면 더 맛있을 거에요", mainTitle: "비 오는 날 추천 매뉴", imageName: "swipeImage9")
    ]
}
