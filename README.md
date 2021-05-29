## 前言
想快速实现可视化页面制作，在进行大量搜索后[鲁班H5](https://github.com/ly525/luban-h5) 和 [夸克H5](https://github.com/huangwei9527/quark-h5) 两个项目非常适合我的需求，可用在此项目基础上继续扩展；通过对比了两个项目技术栈，发现quarkH5更符合我的需求，因此在此基础上对项目进行二开。

## 主要技术和环境
| node v14.16.0
| npm 6.14.11
| vue @vue/cli 4.5.11
| koa 2.0
| echarts ^4.9.0
| elementUI ^2.4.5
| mongodb

## 请先查阅原项目
quarkH5演示地址：[传送门](http://47.104.247.183:4000/)

quarkH5掘金文章：[Vue + Koa从零打造一个H5页面可视化编辑器——Quark-h5](https://juejin.im/post/6844903992426758152)

## 主要修改部分：
1. 页面
    - [x] 修改Logo和项目名
    - [x] 修改页面主题颜色
    - [x] 仅支持PC页面
    - [x] 编辑页组件库修改为折叠菜单
    - [x] 我的数据添加图片和数据上传部分
    - [x] 实现不同组件数据实时修改、更换
    - [x] 删除PSD部分 
2. 可视化组件
    - [x] 封装 [Echarts](https://echarts.apache.org/examples/zh/index.html) 大部分图表
    - [x] 封装 [DataV](http://datav.jiaminghi.com/) 大部分图表
    - [x] 不同组件的配置
3. 后端接口
    - [x] 完善图片上传和删除接口
    - [x] 完善模板发布
    - [x] 实现数据源连接
      - [x] Excel文件上传数据
      - [x] 数据库连接上传数据(仅支持可远程访问MySQL、Oracle、Sql Server)
4. 存在问题
    - [ ] 改为PC页面只是修改了页面的 width:1920px ，height:1080px，没有做适配；所以发布的页面可能跟编辑的页面有所不同
    - [ ] Excel实时编辑操作不友好

注：数据库连接部分是Java JDBC实现的，[项目地址](https://github.com/DXwangnima/C317DataSource) ，该项目不启动，数据库连接部分会报404；启动后修改 client/api/modules/jdbc.js 文件下的service

## 项目预览：

![首页](https://images.gitee.com/uploads/images/2021/0419/192837_db21d104_4939108.png "图片1.png")
![编辑页面](https://images.gitee.com/uploads/images/2021/0419/192847_f84d2020_4939108.png "图片2.png")
![数据页面](https://images.gitee.com/uploads/images/2021/0419/192854_3ad5488b_4939108.png "图片3.png")
![模板库](https://images.gitee.com/uploads/images/2021/0419/192902_7655e3b7_4939108.png "图片4.png")
