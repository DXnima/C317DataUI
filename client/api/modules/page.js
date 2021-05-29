/*
	页面相关api
**/
import $axios from "@/service/httpServer";
// 获取我的页面列表
export const getMyPages = p => $axios.get('/c317/page/getMyPages', p);
// 获取我的页面详情
export const getPageDetail = p => $axios.get('/c317/page/detail', p);
// 新增页面
export const createPage = p => $axios.post('/c317/page/create', p);
// 更新页面
export const updatePage = p => $axios.post('/c317/page/update', p);
// 删除页面
export const deletePage = p => $axios.post('/c317/page/delete', p);
// 复制页面
export const copyPage = p => $axios.post('/c317/page/copy', p);
// 设置为模板
export const setTemplatePage = p => $axios.post('/c317/page/setTemplate', p);
// 发布页面
export const publishPage = p => $axios.post('/c317/page/setPublish', p);

/**
 * ========================================================================
 * */
// 获取我的模板
export const getMyTemplates = p => $axios.get('/c317/page/getMyTemplates', p);


/**
 * ========================================================================
 * */
// 获取模板市场模板
export const getPublishTemplates = p => $axios.get('/c317/page/getPublishTemplates', p);

/**
 * ========================================================================
 * */
// 获取协作人列表
export const getCooperationUserListByPageId = p => $axios.get('/c317/page/getCooperationList', p)
// 按userIds添加协作人
export const addCooperation = p => $axios.post('/c317/page/addCooperation', p)
// 删除协作人
export const delCooperation = p => $axios.post('/c317/page/delCooperation', p)
