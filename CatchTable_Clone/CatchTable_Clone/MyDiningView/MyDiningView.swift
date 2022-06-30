//
//  MyDiningView.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/28.
//

import SwiftUI

struct MyDiningView: View {
    @State private var isReservation = true
    @State private var isAlert = false
    
    var body: some View {
        VStack{
            HStack{
                Text("마이다이닝")
                    .font(.system(size: 22))
                    .bold()
                    .foregroundColor(.black)
                    .padding(.leading, 20)
                Spacer()
            }.padding(.bottom, 20)
            
            GeometryReader { geometry in
                HStack{
                    Button(action: {
                        isReservation = true
                        isAlert = false
                    }){
                        VStack(spacing: 10){
                            HStack{
                                Spacer()
                                Text("나의 예약")
                                    .foregroundColor(self.isReservation ? Color.black : Color.gray)
                                    .font(.system(size: 16))
                                    .fontWeight(self.isReservation ? .bold : .regular)
                                Spacer()
                            }.padding(.bottom, self.isReservation ? 0 : 12)
                            
                            self.isReservation ? Rectangle().frame(width: geometry.size.width * 0.5, height: 2) : nil
                        }
                    }
                    
                    Button(action: {
                        isAlert = true
                        isReservation = false
                    }){
                        VStack(spacing: 10){
                            HStack{
                                Spacer()
                                Text("나의 알림")
                                    .foregroundColor(self.isAlert ? Color.black : Color.gray)
                                    .font(.system(size: 16))
                                    .fontWeight(self.isAlert ? .bold : .regular)
                                Spacer()
                            }.padding(.bottom, self.isAlert ? 0 : 12)
                            
                            
                            self.isAlert ? Rectangle().frame(width: geometry.size.width * 0.5, height: 2) : nil
                        }
                    }
                }
            }
            
            
            ReservationOpenAlert()
            
            SelectView()
            
            Spacer()
        }
        .padding(.vertical, 20)
    }
}

struct MyDiningView_Previews: PreviewProvider {
    static var previews: some View {
        MyDiningView()
    }
}
