/*
* psd
**/
import $axios from "@/service/httpServer";

// 上传psd解析
export const psdPpload = p => $axios.post('/c317/psd/upload', p)
