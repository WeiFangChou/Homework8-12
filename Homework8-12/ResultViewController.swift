//
//  ResultViewController.swift
//  Homework8-12
//
//  Created by WeiFangChou on 2022/8/1.
//

import UIKit

class ResultViewController: UIViewController {
    
    var birthday : Date?
    var lifePathNumber: [LifePathNumber] = [LifePathNumber(lifenumber: 0,main:"",advantage: "",disadvantage: ""),
                                            LifePathNumber(lifenumber: 1, main:"自主",advantage: "優點：獨立、積極、創造、領導、能量,富創意與理解力，為人聰明，喜歡領導",  disadvantage: "優點：獨立、積極、創造、領導、能量,富創意與理解力，為人聰明，喜歡領導"),
                                            LifePathNumber(lifenumber: 2, main: "成全", advantage: "優點：敏感、體貼、柔順、和諧、依賴,個性內斂，善於分工合作，重視群體關係，喜歡受到別人肯定", disadvantage: "缺點：情緒不定、優柔寡斷、難以捉摸、膚淺不安,容易因他人的意見而受到影響，不能忍耐孤獨"),
                                            LifePathNumber(lifenumber: 3, main: "創意", advantage: "優點：行動、樂觀、自信、表現、社交,聰明機警，有創意，多具有藝術天份，表達能力強", disadvantage: "缺點：欺瞞、虛榮浮華、憤世嫉俗、渙散不集中,任性，多只依自己的喜好行事，容易好高騭遠"),
                                            LifePathNumber(lifenumber: 4, main: "務實", advantage: "優點：忠誠、次序、效率、助人、自律,組織能力強，做事條理分明，目光敏銳，能迅速掌握重點", disadvantage: "缺點：獨斷獨行、心胸狹窄、容易緊張、不易妥協,固執，缺乏安全感，不敢承擔風險，因此容易讓機會溜走"),
                                            LifePathNumber(lifenumber: 5, main: "自由", advantage: "優點：聰穎、冒險、適應強、多變化、學習快,能答善辯，口才極佳，熱情豪爽，講義氣，崇尚自由", disadvantage: "缺點：博而不精、持續力差、毫不在乎、索求無度,不喜歡受到束縛，容易放縱，容易得罪別人"),
                                            LifePathNumber(lifenumber: 6, main: "責任", advantage: "優點：穩定、信賴、熱情、正義、奉獻,情感細膩，擅長人際間的交際，喜歡幫助他人，重承諾與責任", disadvantage: "缺點：缺乏自信、不切實際、好強爭辯、強行干涉,不理智時，常會做出錯誤的決定，付出不求回報時容易讓自己受傷"),
                                            LifePathNumber(lifenumber: 7, main: "探究", advantage: "優點：內省、沉默、直覺、真理、理想,擅長鑽研事物，喜歡追求真理，精於算計，遇事理智", disadvantage: "缺點：冷漠、自大傲慢、自我放縱、鬼鬼祟祟,處事不夠圓滑，不容易被討好，容易到手的東西不會珍惜"),
                                            LifePathNumber(lifenumber: 8, main: "權威", advantage: "優點：忠貞、持續、堅定、誠懇、照料,喜歡冒險刺激，有商業頭腦，喜歡追求權力，能即知即行", disadvantage: "缺點：唯物主義、無道德感、心高氣傲、排除他議,驕傲，對喜歡的東西有異常的執著，面對衝突時會勉強自己"),
                                            LifePathNumber(lifenumber: 9, main: "可親", advantage: "優點：人性、啟發、活力、關懷、靈性,充滿生命力，能從創意之中獲得滿足感，處事隨機應變，見招拆招", disadvantage: "缺點：卑躬屈膝、毫無原則、善於批評、沒有耐性,行事不務實，意志不夠堅定，想像太過於力豐富則會變成天馬行空")]
    let starSign:[StarSign] = [StarSign(imageName: "Aquarius", StarSignName: "水瓶座 Aquarius",StarSignDetail: "今天脾氣有點衝動，愛情上不宜太過纏綿，保持距離可避免紛爭。記憶力不錯，待在家裡分析資料比去市場上瞎撞要有用。工作頗有成效，不過還應多與同事溝通，團結一致，多聽取有經驗者的意見。"),
                               StarSign(imageName: "Pisces", StarSignName: "雙魚座 Pisces",StarSignDetail: "人際運下降，與他人相處時，不耐煩的表情以及尖銳的言詞都會引起雙方不愉快，少到人多的地方湊熱鬧，方可避免矛盾。財運欠佳，藉口心情不好，放縱自己衝動購物來發洩心中的不滿是很不好的習慣，修身養性是必修課哦！"),
                               StarSign(imageName: "Aries", StarSignName: "牡羊座 Aries",StarSignDetail: "今天戀愛中的人事務繁忙，與戀人聚少離多。財運較弱，沒有心情仔細研究市場動態，理財心不在焉，易出錯。心情不好不妨約上幾個朋友聚一聚，聊聊感受，朋友的關心會讓你覺得很貼心。"),
                               StarSign(imageName: "Taurus", StarSignName: "金牛座 Taurus",StarSignDetail: "工作量雖然較多，但你善於運用合理的方法，能出色地做好分內事。一份小禮物，一句暖心的話，就能讓情人感動，適當地表達內心的愛很有必要。對證券方面的大盤趨勢要密切留意，才不致受影響能做出正確判斷。"),
                               StarSign(imageName: "Gemini", StarSignName: "雙子座 Gemini",StarSignDetail: "愛情運較弱，送一個小禮物給對方能使感情有所升溫。證券投資者，到證券交易所瞭解情況，不僅能結識志同道合的人，還能獲取不錯的投資建議。之前對創業有滿腔熱情者，能更理性的分析市場環境。"),
                               StarSign(imageName: "Cancer", StarSignName: "巨蟹座 Cancer",StarSignDetail: "今天的精神不太好，與其到超市買一大堆的營養品，不如睡個美容覺，這樣更健康又有效；財務狀況不如預期，易有不必要的支出，逛街時可不要瘋狂血拼哦！工作熱情高漲，想將自己與他人的差距拉得更小。"),
                               StarSign(imageName: "Leo", StarSignName: "獅子座 Leo",StarSignDetail: "感情出現問題時，別把自己悲觀的情緒帶給伴侶，沉默更會激化矛盾，在等不到你的結論時他會陷入痛苦迷茫之中；由於可以得到準確的內幕數據資料，今天投資方面的收益不錯；辦公桌上放一盆綠色小植物，有利於增加工作運。"),
                               StarSign(imageName: "Virgo", StarSignName: "處女座 Virgo",StarSignDetail: "笑容燦爛，親和力強，單身者在熱鬧的場合易遇到有緣人，有機會展開一段特別的戀情。工作雖然忙碌，但很多疑難雜症都能獲得圓滿解決，很有成就感。財運佳，投資者資金周轉有困難，不妨向親友求援，易得到援助。"),
                               StarSign(imageName: "Libra", StarSignName: "天秤座 Libra",StarSignDetail: "鼓起勇氣把自己想要表達的意思說明白。把舊衣服拿去回收救濟，會有清除障礙、招來好運的功效。給人送禮的事情還需多揣摩對方的心思後再做決定，若對方心情不太好，你貿然送上的心意，對方會敏感地認為你別有用心哦。"),
                               StarSign(imageName: "Scorpio", StarSignName: "天蠍座 Scorpio",StarSignDetail: "今天向心儀對象表白的成功機率很高哦，要好好把握；過去用的那套理財方法，今天看來已經過時，不如嘗試新的方法，效果會更佳；工作熱情高漲，說到的事想急於做好，辦事效率頗高。"),
                               StarSign(imageName: "Sagittarius", StarSignName: "射手座 Sagittarius",StarSignDetail: "在感情上懂得製造情趣，能給另一半許多新鮮感，讓感情生活變得甜蜜而溫馨。投資方面多留意地產類股票，會有不錯的發現。工作上比較被動，高強度的工作壓力讓你很容易喪失信心，需多自我鼓勵。"),
                               StarSign(imageName: "Capricorn", StarSignName: "摩羯座 Capricorn",StarSignDetail: "愛情運勢達到最高點，你喜歡的對象其實也在關注你。記住：放下不快樂，才能在生活中重新找到快樂！失去學習興趣的學生，在老師及同學的幫助下，有了重新認識自己的機會，繼而再次燃起希望。"),]
    
    
    @IBOutlet weak var starSignImgView: UIImageView!
    @IBOutlet weak var starSignLabel: UILabel!
    @IBOutlet weak var starSignDetailLabel: UILabel!
    @IBOutlet weak var starSignView: UIView!
    
    
    @IBOutlet weak var lifePathView: UIView!
    @IBOutlet weak var lifepathLabel: UILabel!
    @IBOutlet weak var advantageLabel: UILabel!
    @IBOutlet weak var disadvantageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    func updateUI() {
        
        starSignImgView.backgroundColor = .orange
        starSignImgView.layer.cornerRadius = 50
        starSignImgView.layer.masksToBounds = true
        
        starSignView.layer.cornerRadius = 15
        starSignView.layer.masksToBounds =  true
        
        lifePathView.layer.cornerRadius = 15
        lifePathView.layer.masksToBounds = true
        
        if let birthday = birthday {
            let lifeNumber = calculate(date: birthday)
            let lifepath = calculateLifePathString(lifeNumber: lifeNumber)
            
            lifepathLabel.text = lifepath.main
            advantageLabel.text = lifepath.advantage
            disadvantageLabel.text = lifepath.disadvantage
            
            let dateComp = Calendar.current.dateComponents(in: TimeZone.current, from: birthday)
                let month = dateComp.month
                let day = dateComp.day
            if let month = month , let day = day {
                let starSign = calculateStarSign(month: month, day: day)
                starSignImgView.image = UIImage(named: starSign.imageName)
                starSignLabel.text = starSign.StarSignName
                starSignDetailLabel.text = starSign.StarSignDetail
            }

            
            
        }
        
    }
    
    
    
    func calculateStarSign(month: Int, day: Int) -> StarSign {
        if month == 1 && day >= 19 || month == 2 && day <= 19 {
            return starSign[0]
        }else if month == 2 && day >= 20 || month == 3 && day <= 20 {
            return starSign[1]
        }else if month == 3 && day >= 21 || month == 4 && day <= 20 {
            return starSign[2]
        }else if month == 4 && day >= 21 || month == 5 && day <= 20 {
            return starSign[3]
        }else if month == 5 && day >= 21 || month == 6 && day <= 20 {
            return starSign[4]
        }else if month == 6 && day >= 21 || month == 7 && day <= 22 {
            return starSign[5]
        }else if month == 7 && day >= 23 || month == 8 && day <= 22 {
            return starSign[6]
        }else if month == 8 && day >= 23 || month == 9 && day <= 22 {
            return starSign[7]
        }else if month == 9 && day >= 23 || month == 10 && day <= 22 {
            return starSign[8]
        }else if month == 10 && day >= 23 || month == 11 && day <= 22 {
            return starSign[9]
        }else if month == 11 && day >= 23 || month == 12 && day <= 22 {
            return starSign[10]
        }else{
            return starSign[11]
        }
    }
    
    func calculateLifePathString(lifeNumber: Int) -> LifePathNumber{
        return lifePathNumber[lifeNumber]
    }
    
    
    func calculate(date: Date) -> Int {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yMd"
        var numberString = dateFormatter.string(from: date)
        var sum = 0
        repeat{
            sum = 0
            for char in numberString{
                let number = Int(String(char))!
                sum += number
            }
            numberString = "\(sum)"
        }while sum > 9
        return sum
    }
    
    
}
