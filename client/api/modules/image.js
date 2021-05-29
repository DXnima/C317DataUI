/*
* image 图片库
**/
import $axios from "@/service/httpServer";

// 获取我的图片列表
export const getMyImages = p => $axios.get('/c317/imageLib/myImages', p);
// 上传图片
export const uploadImage = p => $axios.post('/c317/imageLib/upload', p)
export const uploadCommonImage = p => $axios.post('/c317/imageLib/upload', p)
export const deleteImage = p => $axios.post('/c317/imageLib/delete', p)
