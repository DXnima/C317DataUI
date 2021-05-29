/**
 * data 相关
 * @param app
 * @returns {{corsproxy(): Promise<void>}}
 */
module.exports = app => ({
    /**
     * 获取我的数据列表
     * @returns {Promise<void>}
     */
    async getMyData(){
        const { $service, $helper } = app;
        const dataList = await $service.datas.getMyData();
        $helper.returnBody(true, dataList)
    },
    /**
     * 获取指定id我的数据列表
     * @returns {Promise<void>}
     */
    async getDataById(){
        const { ctx,$service, $helper } = app;
        let {_id} = ctx.request.body;
        const data = await $service.datas.getDataById(_id);
        $helper.returnBody(true, data)
    },
    /**
     * 添加数据
     * @returns {Promise<void>}
     */
    async addData(){
        const { ctx, $service, $helper } = app;
        let data = ctx.request.body;
        const imageData = await $service.datas.addData(data);
        $helper.returnBody(true, imageData)
    },
    /**
     * 修改更新页面
     * @returns {Promise<void>}
     */
    async upData(){
        const { ctx, $service, $helper } = app;
        let data = ctx.request.body;
        const upData = await $service.datas.upData(data);
        $helper.returnBody(true, upData)
    },
    /**
     * 删除我的图片
     */
    async deleteData() {
        const { ctx, $service, $helper } = app;
        let {_id} = ctx.request.body;
        await $service.datas.deleteData(_id);
        $helper.returnBody(true)
    }
})
