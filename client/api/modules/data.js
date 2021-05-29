/*
* data 我的数据
**/
import $axios from "@/service/httpServer";

// 获取我的数据列表
export const getMyData = p => $axios.get('/c317/data/myData', p)
// 通过id获取数据
export const getDataById = p => $axios.post('/c317/data/id', p)
// 添加、修改、删除数据
export const addData = p => $axios.post('/c317/data/add', p)
export const upData = p => $axios.post('/c317/data/update', p)
export const deleteData = p => $axios.post('/c317/data/delete', p)
