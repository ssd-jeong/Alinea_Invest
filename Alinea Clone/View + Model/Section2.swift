//
//  Section2.swift
//  Alinea Clone
//
//  Created by Seong-Min Jeong on 4/6/22.
//

import SwiftUI

struct Section2: View {
    var body: some View {
        VStack(spacing: 1){
            //SPY
            HStack{
                VStack(alignment: .leading, spacing:-4){
                    Image("top").padding([.top, .bottom], 1)
                    Image("mid")
                    Image("bot")
                    Text("For beginners")
                        .fontWeight(.bold)
                        .padding([.top, .bottom], 9)
                        .font(Font.custom("Inter-SemiBold", size: 15))
                    Text("Best place to start your investment journey")
                        .padding([.top, .bottom], -1)
                        .padding([.trailing], 20)
                        .frame(width:120)
                        .font(Font.custom("Inter-Regular", size: 12))
                    HStack(spacing:6){
                        Text("8 Stacks")
                            .padding([.top, .bottom], 17)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color(red: 0.682, green: 0.259, blue: 0.788, opacity: 1.0))
                        Image("purple")
                    }
                }
                ZStack{
                    VStack(alignment: .leading){
                        Image("ribbon")
                            .padding([.bottom], 55)
                        Text("Top 500")
                            .font(Font.custom("Garnett-Regular", size: 20))
                            .fontWeight(.bold)
                        HStack(spacing: 5.41){
                            VStack(alignment: .leading, spacing:-4){
                                Image("top")
                                    .padding([.top, .bottom], 1)
                                Image("mid")
                                Image("bot")
                            }.scaleEffect(0.75)
                            Text("32 stocks")
                                .font(Font.custom("Inter-SemiBold", size: 15))
                                .fontWeight(.bold)
                        }.padding([.trailing], 65)
                        Text("Invest in the S&P 500 companies.")
                            .font(Font.custom("Inter-Regular", size:12))
                            .frame(width: 152)
                            .padding([.leading], -25)
                            .padding([.bottom], 10)
                        Image("red-line")
                        HStack(spacing: 2){
                            Image("red")
                            Text("32.33%")
                                .font(Font.custom("Inter-SemiBold", size: 15))
                                .foregroundColor(Color(red: 0.845, green: 0.413, blue: 0.413, opacity: 1))
                                .padding([.trailing], 2)
                            Text("last year")
                                .font(Font.custom("Inter-Regular", size: 13))
                                .foregroundColor(Color(red: 0.845, green: 0.413, blue: 0.413, opacity: 1))
                        }

                    }.frame(width: 184, height: 280)
                        .background(Color(red: 0.99, green: 0.95, blue: 0.95, opacity: 1))
                        .cornerRadius(12)
                }
            }.padding([.top, .bottom], 20)
                .padding([.top], 32)
            
            
//              China
            HStack{
                VStack(alignment: .leading, spacing:-4){
                    Image("top").padding([.top, .bottom], 1)
                    Image("mid")
                    Image("bot")
                    Text("Regional")
                        .fontWeight(.bold)
                        .padding([.top, .bottom], 9)
                        .font(Font.custom("Inter-SemiBold", size: 15))
                    Text("Invest based on a region outside of the United States")
                        .padding([.top, .bottom], -1)
                        .padding([.trailing], 20)
                        .frame(width:120)
                        .font(Font.custom("Inter-Regular", size: 12))
                    HStack(spacing:6){
                        Text("8 Stacks")
                            .padding([.top, .bottom], 17)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color(red: 0.682, green: 0.259, blue: 0.788, opacity: 1.0))
                        Image("purple")
                    }
                }
                ZStack{
                    VStack(alignment: .leading){
                        Image("globe")
                            .padding([.bottom], 55)
                        Text("China")
                            .font(Font.custom("Garnett-Regular", size: 20))
                            .fontWeight(.bold)
                        HStack(spacing: 5.41){
                            VStack(alignment: .leading, spacing:-4){
                                Image("top")
                                    .padding([.top, .bottom], 1)
                                Image("mid")
                                Image("bot")
                            }.scaleEffect(0.75)
                            Text("32 stocks")
                                .font(Font.custom("Inter-SemiBold", size: 15))
                                .fontWeight(.bold)
                        }.padding([.trailing], 65)
                        Text("Invest in companies based out of China.")
                            .font(Font.custom("Inter-Regular", size:12))
                            .frame(width: 152)
                            .padding([.bottom], 10)
                        Image("blue-line")
                        HStack(spacing: 2){
                            Image("blue")
                            Text("32.33%")
                                .font(Font.custom("Inter-SemiBold", size: 15))
                                .foregroundColor(Color(red: 0.308, green: 0.663, blue: 0.792, opacity: 1))
                                .padding([.trailing], 2)
                            Text("last year")
                                .font(Font.custom("Inter-Regular", size: 13))
                                .foregroundColor(Color(red: 0.308, green: 0.663, blue: 0.792, opacity: 1))
                        }

                    }.frame(width: 184, height: 280)
                        .background(Color(red: 0.914, green: 0.957, blue: 0.973, opacity: 1))
                        .cornerRadius(12)
                }
            }.padding([.top, .bottom], 20)
            
            
//                Real Estate
            HStack{
                VStack(alignment: .leading, spacing:-4){
                    Image("top").padding([.top, .bottom], 1)
                    Image("mid")
                    Image("bot")
                    Text("Low Risk")
                        .fontWeight(.bold)
                        .padding([.top, .bottom], 9)
                        .font(Font.custom("Inter-SemiBold", size: 15))
                    Text("For those who like to play it safe")
                        .padding([.top, .bottom], -1)
                        .padding([.trailing], 20)
                        .frame(width:120)
                        .font(Font.custom("Inter-Regular", size: 12))
                    HStack(spacing:6){
                        Text("8 Stacks")
                            .padding([.top, .bottom], 17)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color(red: 0.682, green: 0.259, blue: 0.788, opacity: 1.0))
                        Image("purple")
                    }
                }
                ZStack{
                    VStack(alignment: .leading){
                        Image("house")
                            .padding([.bottom], 55)
                        Text("Real Estate")
                            .font(Font.custom("Garnett-Regular", size: 20))
                            .fontWeight(.bold)
                        HStack(spacing: 5.41){
                            VStack(alignment: .leading, spacing:-4){
                                Image("top")
                                    .padding([.top, .bottom], 1)
                                Image("mid")
                                Image("bot")
                            }.scaleEffect(0.75)
                            Text("32 stocks")
                                .font(Font.custom("Inter-SemiBold", size: 15))
                                .fontWeight(.bold)
                        }.padding([.trailing], 65)
                        Text("Invest in companies from the real estate sector.")
                            .font(Font.custom("Inter-Regular", size:12))
                            .frame(width: 152)
                            .padding([.bottom], 10)
                        Image("violet-line")
                        HStack(spacing: 2){
                            Image("violet")
                            Text("32.33%")
                                .font(Font.custom("Inter-SemiBold", size: 15))
                                .foregroundColor(Color(red: 0.426, green: 0.504, blue: 0.699, opacity: 1))
                                .padding([.trailing], 2)
                            Text("last year")
                                .font(Font.custom("Inter-Regular", size: 13))
                                .foregroundColor(Color(red: 0.426, green: 0.504, blue: 0.699, opacity: 1))
                        }

                    }.frame(width: 184, height: 280)
                        .background(Color(red: 0.941, green: 0.949, blue: 0.969, opacity: 1))
                        .cornerRadius(12)
                }
            }.padding([.top, .bottom], 20)
        }
    }
}
