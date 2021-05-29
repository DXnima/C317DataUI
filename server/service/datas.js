
module.exports = app => ({
    /**
     * 获取我的数据列表
     * @returns {Promise<*>}
     */
    async getMyData(){
        const {ctx, $model} = app;
        let userData = ctx.userData
        let query = { author: userData._id};
        return await $model.datas.find(query).select('_id name data').exec();
    },
    /**
     * 添加数据
     * @returns {Promise<*>}
     * @param data
     */
    async addData(data){
        const {ctx, $model} = app;
        let userData = ctx.userData;
        return await $model.datas.create({
            name: data.name,
            author: userData._id,
            data: data.data
        });
    },
    /**
     * 根据id获取数据
     * @param {*} name
     */
    async getDataById(id){
        const { ctx,$model} = app;
        let userData = ctx.userData;
        let query={_id: id,author:userData._id};
        return await $model.datas.findOne(query).select('_id name data').exec();
    },
    /**
     * 更新修改数据
     * @param {*} name
     */
    async upData(data){
        const { ctx,$model} = app;
        let userData = ctx.userData;
        await $model.datas.findByIdAndUpdate(data._id, {$set: {data: data.data,name: data.name}});
        return $model.datas.findOne({ _id: data._id,author:userData._id }).exec();
    },
    /**
     * 删除数据
     * @param id
     * @returns {Promise<boolean>}
     */
    async deleteData(id) {
        const { $model } = app;
        return await $model.datas.remove({_id: id});
    }
})
