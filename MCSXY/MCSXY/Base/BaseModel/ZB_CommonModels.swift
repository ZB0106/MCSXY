//
//  ZB_CommonModels.swift
//  SWiftCoreDemo
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation
import UIKit

class ZB_CommonBaseModel: NSObject {
    var cellHeight :CGFloat = 44.0
}

class ZB_SectionBaseModel:NSObject {
    var sectionHeight :CGFloat = 0.1
    var sectionFooterHeight :CGFloat = 0.1
    var cellsDataArray :Array<Any>?
}

class SysSubject: NSObject {
    var sort :String?
    var parentId :String?
    var createTime :String?
    var subjectName :String?
    var subjectId :String?
    var image :String?
    var functionType :String?
    var updateTime :String?
    var level :String?
    var status :String?
}

class VideoKpointModel: ZB_CommonBaseModel {
    
}

class TeacherModel: ZB_CommonBaseModel {
    
}

class EduCourseVideo: ZB_CommonBaseModel {
    
}
class MCVideoModel:ZB_CommonBaseModel {
    
    var reason :String?
    var sort :String?
    var title :String?
    var addTime :String?
    var updateTime :String?
    var timeType :String?
    var eduCourseKpoint :VideoKpointModel?
    var eduTeacher :TeacherModel?
    var sysSubject :SysSubject?
    var isavaliable :String?

    var sourcePrice :String?
    var currentPrice :String?
    var currentTime :String?
    var lessionnum :String?
    var lookCount :String?
    var coursetag :String?
    var logo :VideoKpointModel?
    var losetype :TeacherModel?
    var loseAbsTime :SysSubject?
    var loseTime :String?
    
    var updateuser :String?
    var pageBuycount :String?
    var pageViewcount :String?
    var pagePlaycount :String?
    var freeurl :String?
    var sellType :String?
    var liveEndTime :String?
    var liveBeginTime :String?
    var isPay :String?
    var mobileLogo :String?

    
    var packageLogo :String?
    var couponId :String?
    var examLink :String?
    var courseYear :String?
    var disProperty :String?
    var audit :String?
    var classification :String?
    var signnumber :String?
    var teacherLiveAddress :String?
    var watchLiveAddress :String?

    var level :String?
    var name :String?
    var context :String?
    var pageIndex :String?
    var pageSize :String?
    var videoId :String?
    var liveRegType :String?
    var isEnd :String?
    var isEnroll :String?
    var eduCourseVideo :EduCourseVideo?
    var isRegMethod :Bool = false

}
