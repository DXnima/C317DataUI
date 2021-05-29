module.exports = app => {
    const { mongoose } = app;
    const Schema = mongoose.Schema
    // Schema
    const schema = new Schema({
        name:  { type: String, default: '我的数据' },
        author: {
            type: mongoose.Schema.Types.ObjectId,
            ref: 'user'
        },
        data: Schema.Types.Mixed, //用于原始数据存储
    }, {timestamps: {createdAt: 'created', updatedAt: 'updated'}})
    return  mongoose.model('data', schema);
};
