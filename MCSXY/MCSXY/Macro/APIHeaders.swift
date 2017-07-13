//
//  APIHeaders.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/13.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

// mark - 内网测试
// base url
//let MiaoCaiBaseUrl = "http://192.168.1.88:8080/MiaoCai/";
// image base url
//let BaseImageUrl   = "http://112.126.85.213:90";

// mark - 外网测试
// base url
//let MiaoCaiBaseUrl = "http://47.93.117.116:6080/MiaoCai/";
// image base url
//let BaseImageUrl   = "http://47.93.117.116:90";

// mark - 生产
// base url
let MiaoCaiBaseUrl = "http://app.miaocaiwang.com/MiaoCai/";
// image base url
let BaseImageUrl   = "http://app.miaocaiwang.com";




// 验证验证码
let API_getCheckPhoneCode       = "getCheckPhoneCode";
// 注册
let API_Register                = "Register";
// 获取未注册验证码
let API_GetRegisterCode         = "getNotRegYZCode";
// 获取已注册验证码
let API_GetVerifyCode           = "getYZCode";
// 登陆
let API_Login                   = "Login";
// 修改密码
let API_UpdatePassword          = "updatePassword";
// 重置密码
let API_getPassword             = "getPassword";
// 修改手机号
let API_UpdateMobile            = "updateMobile";
// 修改邮箱
let API_UpdateEmail             = "updateEmail";
// 修改头像
let API_UpdateAvatar            = "updateAvatar";
// 修改昵称
let API_updateUserNickName      = "updateUserNickName";
// 首页
let API_Home                    = "GetHomePage";
// 公告列表
let API_NoticeList              = "getArticleMore";
// 公告详情
let API_getArticleDetail        = "getArticleDetail";
// 讲师列表
let API_TeacherList             = "getTeacherMore";
// 讲师详情
let API_TeacherDetail           = "getTeacherDetail";
// 讲师详情的讲师课程
let API_getTeacherDetailMore    = "getTeacherDetailMore";
// 直播列表
let API_LiveList                = "getLiveMore";
// 直播详情
let API_getLiveDetail           = "getLiveDetail";
// 直播分成
let API_insertAppCourseRevenue  = "insertAppCourseRevenue";
// 课程推荐
let API_getLiveDetailMore       = "getLiveDetailMore";
// 录播列表筛选课程类型数据
let API_getSysSubjectList       = "getSysSubjectList";
// 录播课程推荐
let API_getCourseDetailMore     = "getCourseDetailMore";
// 获取录播课程目录
let API_getKpointList           = "getKpointList";
// 录播列表
let API_VideoList               = "getCourseMore";
// 录播详情
let API_getCourseDetail         = "getCourseDetail";
// 录播观看人数统计
let API_updateLookPerson        = "updateLookPerson";
// 已评论列表
let API_getAssessList           = "getAssessList";
// 学员评论
let API_insertAssessList        = "insertAssessList";
// 顶部课程搜索
let API_getTopSearchCourse      = "getTopSearchCourse";
// 顶部讲师搜索
let API_getTopSearchTeacher     = "getTopSearchTeacher";
// 热门搜索
let API_getTopSearchDefault     = "getTopSearchDefault";
// 系统消息中心
let API_getMsgSystemList        = "getMsgSystemList";
// 系统消息中心（编辑）
let API_delAppMsgReceive        = "delAppMsgReceive";
// 资产中心
let API_getAccountHistoryList   = "getAccountHistoryList";
// 直播课在线报名
let API_insertLiveReg           = "insertLiveReg";
// 直播课分院报名
let API_insertCourseReg         = "insertCourseReg";
// 直播课分院报名获取分院信息
let API_getCourtsList           = "getCourtsList";
// 获取省、直辖市
let API_getProvinceList         = "getProvinceList";
// 获取市区
let API_getCityList             = "getCityList";
// 获取县
let API_getTownList             = "getTownList";
// 观看记录（新增）
let API_insertStudyHistory      = "insertStudyHistory";
// 观看记录
let API_getCourseStudyHistoryList = "getCourseStudyHistoryList";

// 会员权益
let API_getEduVipShowList       = "getEduVipShowList";
// 会员特权说明
let API_getEduVipPrivilegeDetail  = "getEduVipPrivilegeDetail";
// 苹果内购
let API_getApplePay             = "getApplePay";
// 苹果内购完成验证
let API_getApplePayNotifyToApp  = "getApplePayNotifyToApp";
// 观看记录（编辑）
let API_delStudyHistory         = "delStudyHistory";
// 我的收藏(新增)
let API_insertAppCourseFavorites  = "insertAppCourseFavorites";
// 我的收藏
let API_getAppCourseFavoritesList = "getAppCourseFavoritesList";
// 我的收藏（编辑）
let API_delAppCourseFavorites   = "delAppCourseFavorites";
// 我的关注
let API_getAppUserAttentionList = "getAppUserAttentionList";
// 我的关注(新增)
let API_insertUserAttention     = "insertUserAttention";
// 我的关注(取消)
let API_delUserAttention        = "delUserAttention";
// 建议反馈
let API_insertAppUserFeedBack   = "insertAppUserFeedBack";
// 关于我们
let API_getAppAboutUsDetail     = "getAppAboutUsDetail";
// 我的直播课（已直播）
let API_getAppCourseLiveRegList = "getAppCourseLiveRegList";
// 我的直播课（未直播）
let API_getAppCourseLiveRegListNot = "getAppCourseLiveRegListNot";
// 报名成功详情分院信息
let API_getCourseRegSuccess     = "getCourseRegSuccess";
// 报名推荐分院
let API_getCourtsDetail         = "getCourtsDetail";
// 会员卡类型
let API_getMemberSaleList       = "getMemberSaleList";
// 发票内容
let API_getInvoiceApplySetList  = "getInvoiceApplySetList";
