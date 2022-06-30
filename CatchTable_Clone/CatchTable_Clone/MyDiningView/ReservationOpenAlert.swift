//
//  ReservationOpenAlert.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/29.
//

import SwiftUI

struct ReservationOpenAlert: View {
    var body: some View {
        ZStack{
            Rectangle().fill(Color("customBlack")).frame(width: .infinity, height: 90)
            
            HStack{
                VStack(alignment: .leading, spacing: 2){
                    Text("인기레스토랑 예약, 놓치지 않도록")
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                    
                    Text("예약 오픈 알림 신청")
                        .foregroundColor(.yellow)
                        .bold()
                        .font(.system(size: 27))
                }
                Spacer()
                Image("bell")
                    .resizable()
                    .frame(width: 90, height: 90)
            }
            .padding(.horizontal, 20)
        }.padding(.bottom, 20)
    }
}

