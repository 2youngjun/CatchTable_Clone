//
//  SelectView.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/29.
//

import SwiftUI

struct SelectView: View {
    var body: some View {
        HStack(spacing: 30){
            Text("방문예정")
                .font(.system(size: 14))
                .padding(.horizontal, 14)
                .padding(.vertical, 6)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black))
            Text("방문완료")
                .font(.system(size: 14))
            Text("취소/노쇼")
                .font(.system(size: 14))
            Spacer()
        }.padding(.leading, 20)
    }
}
