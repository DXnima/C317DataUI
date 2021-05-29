
module.exports = app => {
	const { router, $controller, $middleware } = app;
	// 登录注册认证
	router.post('/c317/auth/login', $controller.auth.login);
	router.post('/c317/auth/register', $controller.auth.register);
	// 用户
	router.get('/c317/user/info', $middleware.auth, $controller.user.getUserInfo);
	router.post('/c317/user/update/name', $middleware.auth, $controller.user.updateUserName);
	router.post('/c317/user/update/pass', $middleware.auth, $controller.user.updateUserPass);
	router.post('/c317/user/update/avatar', $middleware.auth, $controller.user.updateUserAvatar);
	router.get('/c317/user/getUserList', $middleware.auth, $controller.user.getUserList);
	// 页面
	router.get('/c317/page/getMyPages', $middleware.auth, $controller.page.myPages);
	router.post('/c317/page/create', $middleware.auth, $controller.page.create);
	router.post('/c317/page/update', $middleware.auth, $controller.page.updatePage);
	router.post('/c317/page/delete', $middleware.auth, $controller.page.deletePage);
	router.post('/c317/page/copy', $middleware.auth, $controller.page.copyPage);
	router.post('/c317/page/setPublish', $middleware.auth, $controller.page.publish);
	router.post('/c317/page/setTemplate', $middleware.auth, $controller.page.setTemplate);
	router.get('/c317/page/detail', $middleware.auth, $controller.page.pageDetail);
	// 页面渲染
	router.get('/c317/view/:_id', $controller.page.view);


	// 页面协作
	router.get('/c317/page/getCooperationList', $middleware.auth, $controller.cooperation.getCooperationUserListByPageId);
	router.post('/c317/page/addCooperation', $middleware.auth, $controller.cooperation.addCooperationUser);
	router.post('/c317/page/delCooperation', $middleware.auth, $controller.cooperation.removeCooperationUser);
	// 我的模板
	router.get('/c317/page/getMyTemplates', $middleware.auth, $controller.page.getMyTemplates);
	// 模板市场
	router.get('/c317/page/getPublishTemplates', $middleware.auth, $controller.page.getPublishTemplates);

	// html2canvas 跨域接口配置
	router.get('/c317/html2canvas/corsproxy', $controller.htmlToCanvas.corsproxy);

	// psd上传相关
	router.post('/c317/psd/upload', $middleware.auth, $controller.psd.psdPpload);

	// 我的图片库
	router.get('/c317/imageLib/myImages', $middleware.auth, $controller.image.getMyImages);
	router.post('/c317/imageLib/upload', $middleware.auth, $controller.image.uploadImage);
	router.post('/c317/imageLib/delete', $middleware.auth, $controller.image.deleteImage);

	// 我的数据相关
	router.get('/c317/data/myData', $middleware.auth, $controller.datas.getMyData);
	router.post('/c317/data/id', $middleware.auth, $controller.datas.getDataById);
	router.post('/c317/data/add', $middleware.auth, $controller.datas.addData);
	router.post('/c317/data/update', $middleware.auth, $controller.datas.upData);
	router.post('/c317/data/delete', $middleware.auth, $controller.datas.deleteData);


	return router
};
