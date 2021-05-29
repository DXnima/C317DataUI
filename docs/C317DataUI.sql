/*
 Navicat Premium Data Transfer

 Source Server         : c317MongoDB
 Source Server Type    : MongoDB
 Source Server Version : 40404
 Source Host           : 49.235.104.166:27017
 Source Schema         : C317DataUI

 Target Server Type    : MongoDB
 Target Server Version : 40404
 File Encoding         : 65001

 Date: 09/03/2021 15:01:00
*/


// ----------------------------
// Collection structure for images
// ----------------------------
db.getCollection("images").drop();
db.createCollection("images");

// ----------------------------
// Documents of images
// ----------------------------
db.getCollection("images").insert([ {
    _id: ObjectId("60471b89f648f4201febd61f"),
    url: "/resource/image_lib/admin/1615272841179/blob",
    author: ObjectId("603c42aad79c89450d3f4dec"),
    created: ISODate("2021-03-09T06:54:01.181Z"),
    updated: ISODate("2021-03-09T06:54:01.181Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("images").insert([ {
    _id: ObjectId("60471bebf648f4201febd620"),
    url: "/resource/image_lib/admin/1615272939701/blob",
    author: ObjectId("603c42aad79c89450d3f4dec"),
    created: ISODate("2021-03-09T06:55:39.703Z"),
    updated: ISODate("2021-03-09T06:55:39.703Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("images").insert([ {
    _id: ObjectId("60471c5ff648f4201febd621"),
    url: "/resource/image_lib/admin/1615273055404/blob",
    author: ObjectId("603c42aad79c89450d3f4dec"),
    created: ISODate("2021-03-09T06:57:35.405Z"),
    updated: ISODate("2021-03-09T06:57:35.405Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("images").insert([ {
    _id: ObjectId("60471cabf648f4201febd622"),
    url: "/resource/image_lib/admin/1615273131374/blob",
    author: ObjectId("603c42aad79c89450d3f4dec"),
    created: ISODate("2021-03-09T06:58:51.375Z"),
    updated: ISODate("2021-03-09T06:58:51.375Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for pages
// ----------------------------
db.getCollection("pages").drop();
db.createCollection("pages");

// ----------------------------
// Documents of pages
// ----------------------------
db.getCollection("pages").insert([ {
    _id: ObjectId("603c5e40d79c89450d3f4dfe"),
    shareConfig: {
        coverImage: "/resource/image_lib/1/1614568710199/1614568710150.png",
        title: "这是#分享者#的大力推荐",
        description: "这是#分享者#大力推荐的可视化编辑器"
    },
    title: "货车运输交易中心",
    coverImage: "/resource/image_lib/admin/1615272841179/blob",
    description: "我用C317-DataUI可视化编辑器做了一个超酷炫的可视化页面，快来看看吧。",
    script: "",
    width: NumberInt("1920"),
    height: NumberInt("1080"),
    pageMode: "h5",
    flipType: NumberInt("0"),
    slideNumber: false,
    status: NumberInt("1"),
    isPublish: true,
    isTemplate: true,
    members: [ ],
    version: NumberInt("1"),
    pages: [
        {
            uuid: "aef67d4b-8a6c-4341-8320-62661b666091",
            name: "",
            elements: [
                {
                    uuid: "c7e081b6-fd5d-4624-a96a-6c3ed0d96a43",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("509"),
                        height: NumberInt("154"),
                        top: NumberInt("1"),
                        left: NumberInt("1"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("12")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "4199ef97-00d5-41dd-b595-1371b7ddd326",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("509"),
                        height: NumberInt("446"),
                        top: NumberInt("165"),
                        left: NumberInt("1"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("13")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "c28a16f6-c9b6-42d0-baa7-7154fff31df3",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("511"),
                        height: NumberInt("456"),
                        top: NumberInt("622"),
                        left: NumberInt("2"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("14")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "2d2baa72-11cf-4db1-88e2-3ab359e6673f",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("883"),
                        height: NumberInt("154"),
                        top: NumberInt("0"),
                        left: NumberInt("520"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("15")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "f3a80e3e-1073-4236-b5a7-575fb66af929",
                    elName: "C317MapFlyer",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("871"),
                        height: NumberInt("856"),
                        top: NumberInt("217"),
                        left: NumberInt("521"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("15")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("871"),
                            height: NumberInt("856")
                        },
                        chartDataV: {
                            columns: [
                                "起点名称",
                                "起点经度",
                                "起点纬度",
                                "起点值",
                                "终点名称",
                                "终点经度",
                                "终点纬度",
                                "终点值"
                            ],
                            rows: [
                                {
                                    "起点名称": "起点",
                                    "起点经度": 108.848876,
                                    "起点纬度": 40.472078,
                                    "起点值": NumberInt("100"),
                                    "终点名称": "终点",
                                    "终点经度": 110.889071,
                                    "终点纬度": 37.429832,
                                    "终点值": NumberInt("200")
                                }
                            ]
                        },
                        bmapConfig: {
                            roam: true,
                            x: 104.83531246,
                            y: 36.0267395887,
                            zoom: NumberInt("5"),
                            styleId: "1c9508432f1bd060b4485d79045d5bdd"
                        },
                        pointConfig: {
                            text1: "起点文本",
                            text2: "终点文本",
                            rippleEffect: {
                                color: "#fea523",
                                period: NumberInt("4"),
                                scale: 2.5,
                                brushType: "fill"
                            },
                            hoverAnimation: true,
                            label: {
                                color: "#fff",
                                fontWeight: NumberInt("100"),
                                fontSize: NumberInt("12"),
                                position: "right",
                                show: true
                            },
                            symbol: "circle",
                            itemStyle: {
                                color: "#fe2368",
                                shadowBlur: NumberInt("10"),
                                shadowColor: "#31a5e3"
                            }
                        },
                        linesConfig: {
                            effect1: {
                                show: true,
                                period: NumberInt("6"),
                                trailLength: NumberInt("0"),
                                symbol: "path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z",
                                symbolSize: NumberInt("15")
                            },
                            lineStyle1: {
                                normal: {
                                    color: "#fe2368",
                                    width: NumberInt("1"),
                                    opacity: 0.1,
                                    curveness: 0.2
                                }
                            },
                            effect2: {
                                show: true,
                                period: NumberInt("6"),
                                trailLength: 0.7,
                                color: "#fff",
                                symbolSize: NumberInt("3")
                            },
                            lineStyle2: {
                                normal: {
                                    color: "#2347fe",
                                    width: NumberInt("1"),
                                    opacity: 0.5,
                                    curveness: 0.2
                                }
                            }
                        }
                    },
                    valueType: "String"
                },
                {
                    uuid: "a05bab39-df49-4051-a8e2-681c9b275fad",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("509"),
                        height: NumberInt("562"),
                        top: NumberInt("2"),
                        left: NumberInt("1407"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("3")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "48348354-7810-40fa-91c2-91a6f45f5444",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("509"),
                        height: NumberInt("495"),
                        top: NumberInt("578"),
                        left: NumberInt("1408"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "17c0253f-3c0c-459a-837e-a53cad230552",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("137"),
                        height: NumberInt("54"),
                        top: NumberInt("166"),
                        left: NumberInt("3"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("17")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "62dbc543-853f-42bf-96f7-ea6ae7307c3b",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("136"),
                        height: NumberInt("11"),
                        top: NumberInt("208"),
                        left: NumberInt("4"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("17")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "53648306-c69d-4036-85b6-0fa944bc67c1",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("176"),
                        left: NumberInt("19"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("18")
                    },
                    events: [ ],
                    propsValue: {
                        text: "货运指数"
                    },
                    valueType: "String"
                },
                {
                    uuid: "351abd8a-1354-4e55-8b31-007926a6ffdc",
                    elName: "c317-histogram-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("480"),
                        height: NumberInt("350"),
                        top: NumberInt("240"),
                        left: NumberInt("15"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("19")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("480"),
                            height: NumberInt("350")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393"),
                                    "下单用户": NumberInt("1093"),
                                    "下单率": 0.32
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530"),
                                    "下单用户": NumberInt("3230"),
                                    "下单率": 0.26
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923"),
                                    "下单用户": NumberInt("2623"),
                                    "下单率": 0.76
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723"),
                                    "下单用户": NumberInt("1423"),
                                    "下单率": 0.49
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792"),
                                    "下单用户": NumberInt("3492"),
                                    "下单率": 0.323
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593"),
                                    "下单用户": NumberInt("4293"),
                                    "下单率": 0.78
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        xyConfigV: {
                            xAxisType: "category",
                            xAxisName: [
                                "x标题"
                            ],
                            yAxisType: [
                                "KMB",
                                "percent"
                            ],
                            yAxisName: [
                                "y标题1",
                                "y标题2"
                            ],
                            min: [
                                NumberInt("0"),
                                NumberInt("0")
                            ],
                            max: [
                                NumberInt("0"),
                                NumberInt("0")
                            ]
                        },
                        "line_column_barV": {
                            axisSite: {
                                left: [
                                    "访问用户"
                                ],
                                right: [
                                    "下单率"
                                ]
                            },
                            area: false,
                            scale: [
                                false,
                                false
                            ],
                            opacity: NumberInt("1")
                        },
                        colorD: [
                            "rgba(6, 119, 160, 1)",
                            "#2f4554",
                            "#61a0a8",
                            "#d48265",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "6d0010ab-85e7-41e2-896c-3d762ed09bc5",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("137"),
                        height: NumberInt("54"),
                        top: NumberInt("623"),
                        left: NumberInt("-1"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("20")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "60098c95-ff78-4d2a-809f-e25f798ffc63",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("631"),
                        left: NumberInt("16"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("21")
                    },
                    events: [ ],
                    propsValue: {
                        text: "货物类型"
                    },
                    valueType: "String"
                },
                {
                    uuid: "a49aa945-d036-4664-bf41-f48ce1b8ec56",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("136"),
                        height: NumberInt("11"),
                        top: NumberInt("665"),
                        left: NumberInt("-1"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("22")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "dcf267d7-9c28-478a-9213-42684e4c8a26",
                    elName: "c317-ring-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("468"),
                        height: NumberInt("340"),
                        top: NumberInt("698"),
                        left: NumberInt("26"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("23")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("468"),
                            height: NumberInt("340")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393")
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530")
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923")
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723")
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792")
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593")
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        labelV: {
                            label: {
                                show: true,
                                position: "outside",
                                color: "rgba(255, 255, 255, 1)",
                                fontStyle: "normal",
                                fontWeight: "normal",
                                fontSize: NumberInt("12")
                            }
                        },
                        labelLineV: {
                            labelLine: {
                                show: true,
                                length: NumberInt("10"),
                                length2: NumberInt("10"),
                                lineStyle: {
                                    color: "rgba(255, 255, 255, 1)",
                                    width: NumberInt("1"),
                                    type: "solid"
                                }
                            }
                        },
                        colorD: [
                            "rgba(19, 244, 229, 1)",
                            "rgba(255, 255, 255, 1)",
                            "rgba(12, 153, 171, 1)",
                            "rgba(101, 129, 212, 1)",
                            "#91c7ae",
                            "rgba(12, 50, 147, 1)",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "5ea420fa-9612-4c04-91d2-45256c7550fb",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("590"),
                        left: NumberInt("1423"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("26")
                    },
                    events: [ ],
                    propsValue: {
                        text: "车长类目"
                    },
                    valueType: "String"
                },
                {
                    uuid: "dc25d29f-195a-41f3-bdd5-541db9d37adb",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("137"),
                        height: NumberInt("54"),
                        top: NumberInt("579"),
                        left: NumberInt("1409"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("24")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "981c6c12-c66c-471f-9f1a-86cfc41b98c6",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("136"),
                        height: NumberInt("11"),
                        top: NumberInt("621"),
                        left: NumberInt("1411"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("25")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "582942ee-1e52-4a32-82fc-f36dd84ff370",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("15"),
                        left: NumberInt("1421"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("9")
                    },
                    events: [ ],
                    propsValue: {
                        text: "运力指数"
                    },
                    valueType: "String"
                },
                {
                    uuid: "13c09e9b-ed2b-4088-af7d-07113db27dd8",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("137"),
                        height: NumberInt("54"),
                        top: NumberInt("3"),
                        left: NumberInt("1407"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("8")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "0be0762e-e907-41fa-8994-b3b8df05c699",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("136"),
                        height: NumberInt("11"),
                        top: NumberInt("47"),
                        left: NumberInt("1409"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("27")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "cd562409-e3f4-4244-a292-856584ff9b71",
                    elName: "c317-pie-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("477"),
                        height: NumberInt("346"),
                        top: NumberInt("685"),
                        left: NumberInt("1419"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("27")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("477"),
                            height: NumberInt("346")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393")
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530")
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923")
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723")
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792")
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593")
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户"
                            ],
                            digit: NumberInt("2"),
                            dataType: "percent"
                        },
                        "pie_ringV": {
                            legendLimit: NumberInt("500"),
                            selectedMode: false,
                            hoverAnimation: true,
                            radius: NumberInt("122"),
                            offsetY: NumberInt("154"),
                            roseType: "radius",
                            limitShowNum: NumberInt("6")
                        },
                        labelV: {
                            label: {
                                show: true,
                                position: "outside",
                                color: "rgba(255, 255, 255, 1)",
                                fontSize: NumberInt("12"),
                                fontStyle: "normal",
                                fontWeight: "normal"
                            }
                        },
                        labelLineV: {
                            labelLine: {
                                show: true,
                                length: NumberInt("10"),
                                length2: NumberInt("10"),
                                lineStyle: {
                                    color: "rgba(255, 255, 255, 1)",
                                    width: NumberInt("1"),
                                    type: "solid"
                                }
                            }
                        },
                        colorD: [
                            "rgba(255, 255, 255, 1)",
                            "rgba(7, 139, 228, 1)",
                            "rgba(19, 196, 166, 1)",
                            "rgba(21, 66, 180, 1)",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "b2e3fee1-087a-47bd-be05-40da747d4e9b",
                    elName: "c317-histogram-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("492"),
                        height: NumberInt("453"),
                        top: NumberInt("100"),
                        left: NumberInt("1413"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("27")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("492"),
                            height: NumberInt("453")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393"),
                                    "下单用户": NumberInt("1093"),
                                    "下单率": 0.32
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530"),
                                    "下单用户": NumberInt("3230"),
                                    "下单率": 0.26
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923"),
                                    "下单用户": NumberInt("2623"),
                                    "下单率": 0.76
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723"),
                                    "下单用户": NumberInt("1423"),
                                    "下单率": 0.49
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792"),
                                    "下单用户": NumberInt("3492"),
                                    "下单率": 0.323
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593"),
                                    "下单用户": NumberInt("4293"),
                                    "下单率": 0.78
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        xyConfigV: {
                            xAxisType: "category",
                            xAxisName: [
                                "x标题"
                            ],
                            yAxisType: [
                                "KMB",
                                "percent"
                            ],
                            yAxisName: [
                                "y标题1",
                                "y标题2"
                            ],
                            min: [
                                NumberInt("0"),
                                NumberInt("0")
                            ],
                            max: [
                                NumberInt("0"),
                                NumberInt("0")
                            ]
                        },
                        "line_column_barV": {
                            axisSite: {
                                left: [
                                    "访问用户"
                                ],
                                right: [
                                    "下单率"
                                ]
                            },
                            area: false,
                            scale: [
                                false,
                                false
                            ],
                            opacity: NumberInt("1")
                        },
                        colorD: [
                            "rgba(6, 119, 160, 1)",
                            "#2f4554",
                            "#61a0a8",
                            "#d48265",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "5011fca6-da26-4fde-b47f-c64893e9ad7e",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("433"),
                        height: NumberInt("68"),
                        top: NumberInt("47"),
                        left: NumberInt("14"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("50"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("26")
                    },
                    events: [ ],
                    propsValue: {
                        text: "货车运输交易中心"
                    },
                    valueType: "String"
                },
                {
                    uuid: "0fad6fb0-ae96-43b8-91ef-37aaa7e94fde",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("275"),
                        height: NumberInt("54"),
                        top: NumberInt("2"),
                        left: NumberInt("520"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("27")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "3765cf98-3158-47d1-9d10-d8f59521eda6",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("271"),
                        height: NumberInt("11"),
                        top: NumberInt("44"),
                        left: NumberInt("523"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("28")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "6d4be023-43f1-44cf-97ce-f446f2d47d91",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("275"),
                        height: NumberInt("54"),
                        top: NumberInt("-1"),
                        left: NumberInt("1126"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("29")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "c9c4aaba-c5af-49a3-afad-b1847e5de76d",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("275"),
                        height: NumberInt("54"),
                        top: NumberInt("-1"),
                        left: NumberInt("826"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("30")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "e71243a6-30db-41d0-b750-72f1d2de2b5a",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("271"),
                        height: NumberInt("11"),
                        top: NumberInt("43"),
                        left: NumberInt("829"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("30")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "af6e1588-8336-4a82-9bda-7ae1558836bf",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("271"),
                        height: NumberInt("11"),
                        top: NumberInt("41"),
                        left: NumberInt("1128"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("31")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "6442f41e-984e-4275-9da6-ec3b5fe105c3",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("278"),
                        height: NumberInt("68"),
                        top: NumberInt("86"),
                        left: NumberInt("521"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("32")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "5b7ed695-77fa-4cef-a536-cff0bf4c8dee",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("278"),
                        height: NumberInt("68"),
                        top: NumberInt("85"),
                        left: NumberInt("825"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("33")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "b7adffd6-c0eb-46e9-87b5-abe58adfa05f",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("278"),
                        height: NumberInt("68"),
                        top: NumberInt("84"),
                        left: NumberInt("1125"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("34")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "662bf27b-5cb5-4050-80a7-d3711380e4a6",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("211"),
                        height: NumberInt("40"),
                        top: NumberInt("7"),
                        left: NumberInt("569"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("35")
                    },
                    events: [ ],
                    propsValue: {
                        text: "今日货运量（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "b7eca6ea-1a61-4f16-a474-8487da4e05d8",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("211"),
                        height: NumberInt("40"),
                        top: NumberInt("8"),
                        left: NumberInt("869"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("36")
                    },
                    events: [ ],
                    propsValue: {
                        text: "日承运能力（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "8942c423-b1ce-452f-8b06-a3a51a8df2cd",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("211"),
                        height: NumberInt("40"),
                        top: NumberInt("6"),
                        left: NumberInt("1172"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("37")
                    },
                    events: [ ],
                    propsValue: {
                        text: "日交易额（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "7661e46e-b85e-4497-987e-120dbffbd990",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("140"),
                        height: NumberInt("55"),
                        top: NumberInt("92"),
                        left: NumberInt("592"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("38")
                    },
                    events: [ ],
                    propsValue: {
                        text: "24567"
                    },
                    valueType: "String"
                },
                {
                    uuid: "96dc88e5-d941-42a1-b836-3a074c601036",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("140"),
                        height: NumberInt("57"),
                        top: NumberInt("93"),
                        left: NumberInt("890"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("39")
                    },
                    events: [ ],
                    propsValue: {
                        text: "24567"
                    },
                    valueType: "String"
                },
                {
                    uuid: "62004da6-d87f-4f19-baeb-dd6ea4b7dc55",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("140"),
                        height: NumberInt("57"),
                        top: NumberInt("89"),
                        left: NumberInt("1180"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("40")
                    },
                    events: [ ],
                    propsValue: {
                        text: "24567"
                    },
                    valueType: "String"
                },
                {
                    uuid: "3cfc6558-3347-42b6-a644-6c9482df190a",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("876"),
                        height: NumberInt("914"),
                        top: NumberInt("162"),
                        left: NumberInt("519"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("1")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "3c2334d3-4917-4a29-b2a9-a9b7f25a5533",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("137"),
                        height: NumberInt("54"),
                        top: NumberInt("161"),
                        left: NumberInt("520"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 75, 116, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("41")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "ea0a487b-610b-4158-99ad-2349dbcc93dd",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("136"),
                        height: NumberInt("11"),
                        top: NumberInt("204"),
                        left: NumberInt("520"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 255, 255, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("42")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "d1e5dc59-51a4-4f4a-bf04-04a2353dc5f8",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("169"),
                        left: NumberInt("537"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("22"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("43")
                    },
                    events: [ ],
                    propsValue: {
                        text: "运输轨迹"
                    },
                    valueType: "String"
                }
            ],
            commonStyle: {
                backgroundColor: "rgba(34, 35, 37, 1)",
                backgroundImage: "",
                backgroundSize: "cover"
            }
        }
    ],
    author: "603c42aad79c89450d3f4dec",
    created: ISODate("2021-03-01T02:30:47.937Z"),
    updated: ISODate("2021-03-09T06:54:05.013Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("pages").insert([ {
    _id: ObjectId("6047169cf648f4201febd612"),
    shareConfig: {
        coverImage: "/resource/image_lib/1/1614568960895/1614568960838.png",
        title: "这是#分享者#的大力推荐",
        description: "这是#分享者#大力推荐的可视化编辑器"
    },
    title: "疫情分布模板",
    coverImage: "/resource/image_lib/admin/1615272939701/blob",
    description: "我用C317-DataUI可视化编辑器做了一个超酷炫的可视化页面，快来看看吧。",
    script: "",
    width: NumberInt("1920"),
    height: NumberInt("1080"),
    pageMode: "h5",
    flipType: NumberInt("0"),
    slideNumber: false,
    status: NumberInt("1"),
    isPublish: true,
    isTemplate: true,
    members: [ ],
    version: NumberInt("1"),
    pages: [
        {
            uuid: "9e83a99e-a84f-49ed-a65c-aa4a5e0f346e",
            name: "",
            elements: [
                {
                    uuid: "e7da7189-0613-418a-9df3-69d4e5768320",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("1920"),
                        height: NumberInt("150"),
                        top: NumberInt("-1"),
                        left: NumberInt("-1"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "fb4fa615-5be0-4e5b-8b2d-d3334a1c446c",
                    elName: "c317-map-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("1283"),
                        height: NumberInt("774"),
                        top: NumberInt("276"),
                        left: NumberInt("24"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("1283"),
                            height: NumberInt("774")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "位置",
                                "税收",
                                "人口",
                                "面积"
                            ],
                            rows: [
                                {
                                    "位置": "吉林",
                                    "税收": NumberInt("123"),
                                    "人口": NumberInt("123"),
                                    "面积": NumberInt("92134")
                                },
                                {
                                    "位置": "北京",
                                    "税收": NumberInt("1223"),
                                    "人口": NumberInt("2123"),
                                    "面积": NumberInt("29234")
                                },
                                {
                                    "位置": "上海",
                                    "税收": NumberInt("2123"),
                                    "人口": NumberInt("1243"),
                                    "面积": NumberInt("94234")
                                },
                                {
                                    "位置": "浙江",
                                    "税收": NumberInt("4123"),
                                    "人口": NumberInt("5123"),
                                    "面积": NumberInt("29234")
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "位置"
                            ],
                            metrics: [
                                "税收",
                                "人口",
                                "面积"
                            ],
                            digit: NumberInt("2"),
                            dataType: {
                                "面积": "KMB"
                            }
                        },
                        mapV: {
                            selectData: false,
                            zoom: NumberInt("1"),
                            center: [
                                104.97,
                                37.71
                            ],
                            roam: false,
                            scaleLimit: {
                                min: NumberInt("1"),
                                max: NumberInt("1")
                            },
                            label: {
                                show: false,
                                position: "top",
                                distance: NumberInt("5"),
                                color: "#111010",
                                fontSize: NumberInt("12"),
                                align: "left"
                            }
                        },
                        colorD: [
                            "#c23531",
                            "#2f4554",
                            "#61a0a8",
                            "#d48265",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "be66b7c6-549e-4a64-8156-fb3edb561028",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("260"),
                        height: NumberInt("110"),
                        top: NumberInt("156"),
                        left: NumberInt("19"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "f0111f50-7cf2-45a4-90c4-c14f7c746bc8",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("890"),
                        height: NumberInt("75"),
                        top: NumberInt("20"),
                        left: NumberInt("58"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("50"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    propsValue: {
                        text: "全国新型冠状病毒感染的肺炎疫情分布"
                    },
                    valueType: "String"
                },
                {
                    uuid: "fe99463a-e3df-40a6-84b8-552dbf9499d8",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("493"),
                        height: NumberInt("40"),
                        top: NumberInt("92"),
                        left: NumberInt("52"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#827E7E",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    propsValue: {
                        text: "此数据为实时真实数据，数据来源于各地卫健委"
                    },
                    valueType: "String"
                },
                {
                    uuid: "fa81317f-2c70-44c2-9480-e68a50e922d9",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("260"),
                        height: NumberInt("110"),
                        top: NumberInt("154"),
                        left: NumberInt("309"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "d8b3e782-b355-4270-a296-1d6f0a624f28",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("260"),
                        height: NumberInt("110"),
                        top: NumberInt("155"),
                        left: NumberInt("601"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "bf783157-0fea-407d-a26b-ac4a4fe165a3",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("260"),
                        height: NumberInt("110"),
                        top: NumberInt("154"),
                        left: NumberInt("897"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "ebc738e4-aeee-4393-90b0-b8ccf33f21a9",
                    elName: "c317-border4-d",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("1317"),
                        height: NumberInt("1095"),
                        top: NumberInt("-3"),
                        left: NumberInt("3"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("7")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("1317"),
                            height: NumberInt("1095")
                        },
                        reverseD: false,
                        colorD: [
                            "rgba(255, 115, 0, 1)",
                            "rgba(245, 225, 0, 1)"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "671fe9ff-c75f-48f8-abbd-03dd31a51a6c",
                    elName: "c317-border4-d",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("1290"),
                        height: NumberInt("1078"),
                        top: NumberInt("11"),
                        left: NumberInt("53"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("8")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("1290"),
                            height: NumberInt("1078")
                        },
                        reverseD: true,
                        colorD: [
                            "rgba(255, 115, 0, 1)",
                            "rgba(245, 225, 0, 1)"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "bbf524fe-0e73-4160-afbe-b08f25b64f8f",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("258"),
                        height: NumberInt("12"),
                        top: NumberInt("154"),
                        left: NumberInt("20"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(255, 77, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("17")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "5b289e93-5fa2-4724-9dfc-b3ce3474d004",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("176"),
                        left: NumberInt("80"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("18")
                    },
                    events: [ ],
                    propsValue: {
                        text: "确诊人数"
                    },
                    valueType: "String"
                },
                {
                    uuid: "f3909a65-3b8e-4a09-b531-b5640f2d2921",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("156"),
                        height: NumberInt("49"),
                        top: NumberInt("206"),
                        left: NumberInt("57"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("45"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FF4D00",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("18")
                    },
                    events: [ ],
                    propsValue: {
                        text: "81054"
                    },
                    valueType: "String"
                },
                {
                    uuid: "174a884f-1fa1-49b6-a839-d426efa7990a",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("173"),
                        left: NumberInt("394"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("19")
                    },
                    events: [ ],
                    propsValue: {
                        text: "疑似人数"
                    },
                    valueType: "String"
                },
                {
                    uuid: "01320ccb-76b5-41dd-b7f6-3c307facbab0",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("258"),
                        height: NumberInt("12"),
                        top: NumberInt("156"),
                        left: NumberInt("311"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(231, 136, 19, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("20")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "86bea8a3-86bb-41b7-9b56-aa32716770bd",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("156"),
                        height: NumberInt("49"),
                        top: NumberInt("201"),
                        left: NumberInt("364"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("45"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#E78813",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("21")
                    },
                    events: [ ],
                    propsValue: {
                        text: "111"
                    },
                    valueType: "String"
                },
                {
                    uuid: "b51dbc2f-7010-4d9c-a17c-3d991ae2329f",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("172"),
                        left: NumberInt("686"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("22")
                    },
                    events: [ ],
                    propsValue: {
                        text: "治愈人数"
                    },
                    valueType: "String"
                },
                {
                    uuid: "4686c08a-509f-4214-912a-4c43abf9aa72",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("258"),
                        height: NumberInt("12"),
                        top: NumberInt("155"),
                        left: NumberInt("603"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(9, 169, 102, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("23")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "4932fa9f-1e20-47ed-9f3a-97392f4384af",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("156"),
                        height: NumberInt("49"),
                        top: NumberInt("200"),
                        left: NumberInt("659"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("45"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#09A966",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("24")
                    },
                    events: [ ],
                    propsValue: {
                        text: "67024\n"
                    },
                    valueType: "String"
                },
                {
                    uuid: "6d67eca4-b5a5-487a-aff8-0d15b524bfc5",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("171"),
                        left: NumberInt("978"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("25")
                    },
                    events: [ ],
                    propsValue: {
                        text: "死亡人数"
                    },
                    valueType: "String"
                },
                {
                    uuid: "28b493ae-69e4-4d23-b871-10e955b05c1a",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("258"),
                        height: NumberInt("12"),
                        top: NumberInt("156"),
                        left: NumberInt("899"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(173, 177, 175, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("26")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "4d3d44ce-25e6-4721-8e4a-b669674018d1",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("156"),
                        height: NumberInt("49"),
                        top: NumberInt("198"),
                        left: NumberInt("953"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("45"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#C5C1C1",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("27")
                    },
                    events: [ ],
                    propsValue: {
                        text: "3204\n"
                    },
                    valueType: "String"
                },
                {
                    uuid: "547797eb-c936-4d1d-a73d-4a32ed84fa77",
                    elName: "c317-border4-d",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("557"),
                        height: NumberInt("564"),
                        top: NumberInt("6"),
                        left: NumberInt("1371"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("28")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("557"),
                            height: NumberInt("564")
                        },
                        reverseD: true,
                        colorD: [
                            "rgba(255, 115, 0, 1)",
                            "rgba(245, 225, 0, 1)"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "65cfca9b-5fe6-4b06-bb05-9450e369e21f",
                    elName: "c317-border4-d",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("557"),
                        height: NumberInt("557"),
                        top: NumberInt("-5"),
                        left: NumberInt("1336"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("29")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("557"),
                            height: NumberInt("557")
                        },
                        reverseD: false,
                        colorD: [
                            "rgba(255, 115, 0, 1)",
                            "rgba(245, 225, 0, 1)"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "06db6300-45ac-440c-9054-5e18d86aa973",
                    elName: "c317-border4-d",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("557"),
                        height: NumberInt("512"),
                        top: NumberInt("563"),
                        left: NumberInt("1328"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("30")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("557"),
                            height: NumberInt("512")
                        },
                        reverseD: false,
                        colorD: [
                            "rgba(255, 115, 0, 1)",
                            "rgba(245, 225, 0, 1)"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "9b1f517c-c927-4164-9ff7-7085a2e0247c",
                    elName: "c317-border4-d",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("581"),
                        height: NumberInt("512"),
                        top: NumberInt("576"),
                        left: NumberInt("1344"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("31")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("581"),
                            height: NumberInt("512")
                        },
                        reverseD: true,
                        colorD: [
                            "rgba(255, 115, 0, 1)",
                            "rgba(245, 225, 0, 1)"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "7452bb99-0264-4b16-a682-160a1dbdd30c",
                    elName: "c317-line-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("531"),
                        height: NumberInt("288"),
                        top: NumberInt("756"),
                        left: NumberInt("1362"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("32")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("531"),
                            height: NumberInt("288")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "rgba(255, 255, 255, 1)",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393"),
                                    "下单用户": NumberInt("1093"),
                                    "下单率": 0.32
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530"),
                                    "下单用户": NumberInt("3230"),
                                    "下单率": 0.26
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923"),
                                    "下单用户": NumberInt("2623"),
                                    "下单率": 0.76
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723"),
                                    "下单用户": NumberInt("1423"),
                                    "下单率": 0.49
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792"),
                                    "下单用户": NumberInt("3492"),
                                    "下单率": 0.323
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593"),
                                    "下单用户": NumberInt("4293"),
                                    "下单率": 0.78
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        xyConfigV: {
                            xAxisType: "category",
                            xAxisName: [
                                "x标题"
                            ],
                            yAxisType: [ ],
                            yAxisName: [
                                "y标题1",
                                "y标题2"
                            ],
                            min: [
                                NumberInt("0"),
                                NumberInt("0")
                            ],
                            max: [
                                NumberInt("0"),
                                NumberInt("0")
                            ]
                        },
                        "line_column_barV": {
                            axisSite: {
                                left: [
                                    "访问用户"
                                ],
                                right: [
                                    "下单率"
                                ]
                            },
                            area: false,
                            scale: [
                                false,
                                false
                            ],
                            opacity: NumberInt("1")
                        },
                        colorD: [
                            "rgba(248, 184, 23, 1)",
                            "rgba(24, 224, 151, 1)",
                            "#61a0a8",
                            "#d48265",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "308d2e40-d2d4-4101-9faa-c3db774fca63",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("148"),
                        height: NumberInt("65"),
                        top: NumberInt("673"),
                        left: NumberInt("1363"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("33")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "4de8ddfd-0cbf-4d88-a1d7-23ca94eed059",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("148"),
                        height: NumberInt("65"),
                        top: NumberInt("672"),
                        left: NumberInt("1554"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("34")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "31523e6f-669c-4732-b240-4a524ac576e1",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("148"),
                        height: NumberInt("65"),
                        top: NumberInt("670"),
                        left: NumberInt("1740"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("35")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "e3a48583-1401-41f2-b201-46a78a8e95b5",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("223"),
                        height: NumberInt("40"),
                        top: NumberInt("613"),
                        left: NumberInt("1348"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("35")
                    },
                    events: [ ],
                    propsValue: {
                        text: "市区区域疫情监控"
                    },
                    valueType: "String"
                },
                {
                    uuid: "0b67f55f-82de-4153-a387-725b8d095910",
                    elName: "c317-histogram-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("502"),
                        height: NumberInt("333"),
                        top: NumberInt("200"),
                        left: NumberInt("1379"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("35")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("502"),
                            height: NumberInt("333")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393"),
                                    "下单用户": NumberInt("1093"),
                                    "下单率": 0.32
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530"),
                                    "下单用户": NumberInt("3230"),
                                    "下单率": 0.26
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923"),
                                    "下单用户": NumberInt("2623"),
                                    "下单率": 0.76
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723"),
                                    "下单用户": NumberInt("1423"),
                                    "下单率": 0.49
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792"),
                                    "下单用户": NumberInt("3492"),
                                    "下单率": 0.323
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593"),
                                    "下单用户": NumberInt("4293"),
                                    "下单率": 0.78
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        xyConfigV: {
                            xAxisType: "category",
                            xAxisName: [
                                "x标题"
                            ],
                            yAxisType: [
                                "KMB",
                                "percent"
                            ],
                            yAxisName: [
                                "y标题1",
                                "y标题2"
                            ],
                            min: [
                                NumberInt("0"),
                                NumberInt("0")
                            ],
                            max: [
                                NumberInt("0"),
                                NumberInt("0")
                            ]
                        },
                        "line_column_barV": {
                            axisSite: {
                                left: [
                                    "访问用户"
                                ],
                                right: [
                                    "下单率"
                                ]
                            },
                            area: false,
                            scale: [
                                false,
                                false
                            ],
                            opacity: NumberInt("1")
                        },
                        colorD: [
                            "rgba(177, 116, 2, 1)",
                            "rgba(5, 128, 3, 1)",
                            "#61a0a8",
                            "#d48265",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "e9f7908c-a17e-425b-a801-5d8893f4f4f7",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("223"),
                        height: NumberInt("40"),
                        top: NumberInt("36"),
                        left: NumberInt("1351"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("36")
                    },
                    events: [ ],
                    propsValue: {
                        text: "省份疫情监控"
                    },
                    valueType: "String"
                },
                {
                    uuid: "4c883c42-98cb-4ecf-aa30-cda0a3b2852c",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("677"),
                        left: NumberInt("1385"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("37")
                    },
                    events: [ ],
                    propsValue: {
                        text: "确诊"
                    },
                    valueType: "String"
                },
                {
                    uuid: "b557f82b-71ab-4727-ae38-a8e771224568",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("678"),
                        left: NumberInt("1580"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("38")
                    },
                    events: [ ],
                    propsValue: {
                        text: "疑似"
                    },
                    valueType: "String"
                },
                {
                    uuid: "e35e281d-ab47-47c7-b70c-e11dbf610f51",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("675"),
                        left: NumberInt("1761"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("39")
                    },
                    events: [ ],
                    propsValue: {
                        text: "隔离"
                    },
                    valueType: "String"
                },
                {
                    uuid: "4e657477-502e-4b51-b376-e96f49f4f4b2",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("699"),
                        left: NumberInt("1388"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#F41717",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("40")
                    },
                    events: [ ],
                    propsValue: {
                        text: "20000"
                    },
                    valueType: "String"
                },
                {
                    uuid: "d34c6a56-1b6a-47a2-ac7d-a9b9aa4e78dc",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("698"),
                        left: NumberInt("1582"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#F4C417",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("41")
                    },
                    events: [ ],
                    propsValue: {
                        text: "20000"
                    },
                    valueType: "String"
                },
                {
                    uuid: "6490d307-961a-497d-82e0-ae4f542b0cef",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("698"),
                        left: NumberInt("1765"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#39B106",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("42")
                    },
                    events: [ ],
                    propsValue: {
                        text: "20000"
                    },
                    valueType: "String"
                },
                {
                    uuid: "f18b5a6a-29c7-4ebc-9f7a-ce7f0b0a71cd",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("148"),
                        height: NumberInt("65"),
                        top: NumberInt("103"),
                        left: NumberInt("1387"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("43")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "a12717c0-49a0-4ab9-8006-55b6924abcbd",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("148"),
                        height: NumberInt("65"),
                        top: NumberInt("104"),
                        left: NumberInt("1559"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("44")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "92991a78-d907-42cf-96f7-dd89f1844bc9",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("148"),
                        height: NumberInt("65"),
                        top: NumberInt("104"),
                        left: NumberInt("1733"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(28, 30, 36, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("45")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "38eadb9d-bc11-4633-bb9a-909da151e133",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("35"),
                        top: NumberInt("108"),
                        left: NumberInt("1406"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("46")
                    },
                    events: [ ],
                    propsValue: {
                        text: "确诊"
                    },
                    valueType: "String"
                },
                {
                    uuid: "6fe46056-41cd-4a90-aaa2-8debf4fa7cae",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("108"),
                        left: NumberInt("1589"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("47")
                    },
                    events: [ ],
                    propsValue: {
                        text: "疑似"
                    },
                    valueType: "String"
                },
                {
                    uuid: "331f3942-47a2-4964-b582-52cb6e93c1ba",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("109"),
                        left: NumberInt("1760"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("48")
                    },
                    events: [ ],
                    propsValue: {
                        text: "隔离"
                    },
                    valueType: "String"
                },
                {
                    uuid: "bd52fd68-9fc7-4416-ad04-14875ac332ab",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("129"),
                        left: NumberInt("1410"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#F41717",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("49")
                    },
                    events: [ ],
                    propsValue: {
                        text: "20000"
                    },
                    valueType: "String"
                },
                {
                    uuid: "d4c59666-cf0c-4bc8-a051-0ff58a31a746",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("129"),
                        left: NumberInt("1590"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#F4C417",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("49")
                    },
                    events: [ ],
                    propsValue: {
                        text: "20000"
                    },
                    valueType: "String"
                },
                {
                    uuid: "229f99ae-0792-42f5-ac28-6e1b4deca09d",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("130"),
                        left: NumberInt("1761"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#39B106",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("49")
                    },
                    events: [ ],
                    propsValue: {
                        text: "20000"
                    },
                    valueType: "String"
                }
            ],
            commonStyle: {
                backgroundColor: "rgba(0, 0, 0, 1)",
                backgroundImage: "",
                backgroundSize: "cover"
            }
        }
    ],
    author: "603c42aad79c89450d3f4dec",
    created: ISODate("2021-03-01T01:26:41.842Z"),
    updated: ISODate("2021-03-09T06:55:43.000Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("pages").insert([ {
    _id: ObjectId("6047183cf648f4201febd61a"),
    shareConfig: {
        coverImage: "",
        title: "这是#分享者#的大力推荐",
        description: "这是#分享者#大力推荐的可视化编辑器"
    },
    title: "煤炭交易历史看板",
    coverImage: "/resource/image_lib/admin/1615273055404/blob",
    description: "我用C317-DataUI可视化编辑器做了一个超酷炫的可视化页面，快来看看吧。",
    script: "",
    width: NumberInt("1920"),
    height: NumberInt("1080"),
    pageMode: "h5",
    flipType: NumberInt("0"),
    slideNumber: false,
    status: NumberInt("1"),
    isPublish: true,
    isTemplate: true,
    members: [ ],
    version: NumberInt("1"),
    author: "603c42aad79c89450d3f4dec",
    created: ISODate("2021-03-09T06:33:30.394Z"),
    updated: ISODate("2021-03-09T06:57:37.994Z"),
    __v: NumberInt("0"),
    pages: [
        {
            uuid: "64ab95a8-4c13-4fff-885c-aaf384c03f22",
            name: "",
            elements: [
                {
                    uuid: "a22f2ee4-d7d2-4d44-9441-294b51ce4cd4",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("1901"),
                        height: NumberInt("194"),
                        top: NumberInt("11"),
                        left: NumberInt("8"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("5")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "fc762320-81a1-4f97-aacf-343635d3ef50",
                    elName: "C317Map3dbar",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("1328"),
                        height: NumberInt("832"),
                        top: NumberInt("235"),
                        left: NumberInt("8"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("6")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("1328"),
                            height: NumberInt("832")
                        },
                        chartDataV: {
                            columns: [
                                "名字",
                                "经度",
                                "纬度",
                                "值"
                            ],
                            rows: [
                                {
                                    "名字": "数据1",
                                    "经度": 104.400438,
                                    "纬度": 29.47325,
                                    "值": NumberInt("2399")
                                },
                                {
                                    "名字": "数据2",
                                    "经度": 105.1,
                                    "纬度": 36.581425,
                                    "值": NumberInt("1000")
                                }
                            ]
                        },
                        map3D: {
                            roam: true,
                            itemStyle: {
                                color: "#475368",
                                borderWidth: 0.4,
                                borderColor: "#212429"
                            },
                            label: {
                                show: true,
                                textStyle: {
                                    color: "#fff",
                                    fontSize: NumberInt("10"),
                                    fontWeight: NumberInt("200"),
                                    backgroundColor: "rgba(255,255,255,0)"
                                }
                            },
                            light: {
                                main: {
                                    color: "#ffffff",
                                    intensity: 1.2,
                                    shadow: true,
                                    alpha: NumberInt("55"),
                                    beta: NumberInt("10")
                                }
                            }
                        },
                        bar3D: {
                            barSize: 0.4,
                            bevelSize: 0.3,
                            minHeight: NumberInt("1"),
                            label: {
                                show: false,
                                text1: "内容：",
                                text2: "单位",
                                textStyle: {
                                    color: "#ffffff",
                                    fontSize: NumberInt("12"),
                                    fontWeight: NumberInt("200"),
                                    backgroundColor: "rgba(255,255,255,0)"
                                }
                            }
                        },
                        colorD: [
                            "#3678fc",
                            "#fea523",
                            "#f42e59",
                            "#36fca2",
                            "#930093",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "99eaad36-f051-44d4-957e-f7430d2eb60d",
                    elName: "c317-histogram-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("568"),
                        height: NumberInt("443"),
                        top: NumberInt("233"),
                        left: NumberInt("1344"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("7")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("568"),
                            height: NumberInt("443")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "rgba(113, 113, 113, 1)",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393"),
                                    "下单用户": NumberInt("1093"),
                                    "下单率": 0.32
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530"),
                                    "下单用户": NumberInt("3230"),
                                    "下单率": 0.26
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923"),
                                    "下单用户": NumberInt("2623"),
                                    "下单率": 0.76
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723"),
                                    "下单用户": NumberInt("1423"),
                                    "下单率": 0.49
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792"),
                                    "下单用户": NumberInt("3492"),
                                    "下单率": 0.323
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593"),
                                    "下单用户": NumberInt("4293"),
                                    "下单率": 0.78
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        xyConfigV: {
                            xAxisType: "category",
                            xAxisName: [
                                "x标题"
                            ],
                            yAxisType: [
                                "KMB",
                                "percent"
                            ],
                            yAxisName: [
                                "y标题1",
                                "y标题2"
                            ],
                            min: [
                                NumberInt("0"),
                                NumberInt("0")
                            ],
                            max: [
                                NumberInt("0"),
                                NumberInt("0")
                            ]
                        },
                        "line_column_barV": {
                            axisSite: {
                                left: [
                                    "访问用户"
                                ],
                                right: [
                                    "下单率"
                                ]
                            },
                            area: false,
                            scale: [
                                false,
                                false
                            ],
                            opacity: NumberInt("1")
                        },
                        colorD: [
                            "rgba(13, 105, 145, 1)",
                            "rgba(13, 83, 130, 1)",
                            "#61a0a8",
                            "#d48265",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "738c3b46-ba8f-41e4-b4d8-5afc738287f6",
                    elName: "c317-ring-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("568"),
                        height: NumberInt("364"),
                        top: NumberInt("703"),
                        left: NumberInt("1345"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("8")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("568"),
                            height: NumberInt("364")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393")
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530")
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923")
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723")
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792")
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593")
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        labelV: {
                            label: {
                                show: true,
                                position: "outside",
                                color: "#000000",
                                fontStyle: "normal",
                                fontWeight: "normal",
                                fontSize: NumberInt("12")
                            }
                        },
                        labelLineV: {
                            labelLine: {
                                show: true,
                                length: NumberInt("10"),
                                length2: NumberInt("10"),
                                lineStyle: {
                                    color: "#000000",
                                    width: NumberInt("1"),
                                    type: "solid"
                                }
                            }
                        },
                        colorD: [
                            "rgba(241, 9, 3, 1)",
                            "rgba(154, 97, 4, 1)",
                            "rgba(208, 239, 4, 1)",
                            "rgba(101, 212, 182, 1)",
                            "rgba(10, 200, 181, 1)",
                            "rgba(7, 175, 237, 1)",
                            "rgba(146, 34, 202, 1)",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "4984caa1-3a1e-464c-9302-9e76911f79fb",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("411"),
                        height: NumberInt("66"),
                        top: NumberInt("21"),
                        left: NumberInt("18"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("48"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("9")
                    },
                    events: [ ],
                    propsValue: {
                        text: "煤炭交易历史看板"
                    },
                    valueType: "String"
                },
                {
                    uuid: "6f06178b-fe67-44ff-8405-25e32668f2bd",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("280"),
                        height: NumberInt("52"),
                        top: NumberInt("94"),
                        left: NumberInt("38"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(54, 120, 252, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("9")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "b5dfb83b-336a-4458-8497-715ef5e52675",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("166"),
                        height: NumberInt("45"),
                        top: NumberInt("150"),
                        left: NumberInt("79"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#11A732",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("10")
                    },
                    events: [ ],
                    propsValue: {
                        text: "268861"
                    },
                    valueType: "String"
                },
                {
                    uuid: "16cc324a-df8d-4987-badf-b88f68549c31",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("308"),
                        height: NumberInt("40"),
                        top: NumberInt("100"),
                        left: NumberInt("38"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("11")
                    },
                    events: [ ],
                    propsValue: {
                        text: "上一周交易总额（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "b3a0d184-de27-429b-b2b9-55682f431b03",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("280"),
                        height: NumberInt("52"),
                        top: NumberInt("93"),
                        left: NumberInt("352"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(54, 120, 252, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("9")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "765c79e4-673c-420f-bd3f-db05ed1607ff",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("280"),
                        height: NumberInt("52"),
                        top: NumberInt("91"),
                        left: NumberInt("671"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(54, 120, 252, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("10")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "ef3af40b-6de4-4d6e-b1f1-70c85786f289",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("280"),
                        height: NumberInt("52"),
                        top: NumberInt("92"),
                        left: NumberInt("992"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(54, 120, 252, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("11")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "58ecbacc-40c2-499f-b6ee-0a5c49560e17",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("308"),
                        height: NumberInt("40"),
                        top: NumberInt("101"),
                        left: NumberInt("335"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("12")
                    },
                    events: [ ],
                    propsValue: {
                        text: "上个月交易总额（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "b3dd7e1e-cd62-4976-b4f2-79c5b0c90783",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("308"),
                        height: NumberInt("40"),
                        top: NumberInt("100"),
                        left: NumberInt("658"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("13")
                    },
                    events: [ ],
                    propsValue: {
                        text: "上季度交易总额（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "5578f28e-9d03-48d1-a2e3-bc67a6d07a84",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("308"),
                        height: NumberInt("40"),
                        top: NumberInt("100"),
                        left: NumberInt("980"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("25"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("14")
                    },
                    events: [ ],
                    propsValue: {
                        text: "上一年交易总额（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "9432893c-52f2-4f11-858f-311488da80bb",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("166"),
                        height: NumberInt("45"),
                        top: NumberInt("150"),
                        left: NumberInt("397"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#11A732",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("15")
                    },
                    events: [ ],
                    propsValue: {
                        text: "268861"
                    },
                    valueType: "String"
                },
                {
                    uuid: "5efcfc53-1adf-4aff-b2f5-ff75b54a9594",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("166"),
                        height: NumberInt("45"),
                        top: NumberInt("149"),
                        left: NumberInt("731"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#11A732",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    propsValue: {
                        text: "268861"
                    },
                    valueType: "String"
                },
                {
                    uuid: "aa1e155b-006d-42ff-b9c6-38f15de33393",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("166"),
                        height: NumberInt("45"),
                        top: NumberInt("150"),
                        left: NumberInt("1046"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#11A732",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("17")
                    },
                    events: [ ],
                    propsValue: {
                        text: "268861"
                    },
                    valueType: "String"
                },
                {
                    uuid: "3388b2bb-76b8-4809-b1c5-c7c29f575ad5",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("253"),
                        height: NumberInt("40"),
                        top: NumberInt("207"),
                        left: NumberInt("13"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("19"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FBFBFB",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("18")
                    },
                    events: [ ],
                    propsValue: {
                        text: "本年内各个公司/煤炭交易总量"
                    },
                    valueType: "String"
                },
                {
                    uuid: "5036fba9-6968-4e37-810e-e8c03bc3afd5",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("253"),
                        height: NumberInt("40"),
                        top: NumberInt("206"),
                        left: NumberInt("1337"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("19"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FBFBFB",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("19")
                    },
                    events: [ ],
                    propsValue: {
                        text: "一年内每个月煤炭交易总量"
                    },
                    valueType: "String"
                },
                {
                    uuid: "35692d39-ae79-415f-a9be-46085603e567",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("253"),
                        height: NumberInt("40"),
                        top: NumberInt("678"),
                        left: NumberInt("1345"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("19"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FBFBFB",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("20")
                    },
                    events: [ ],
                    propsValue: {
                        text: "本年内购煤量前五名的企业"
                    },
                    valueType: "String"
                }
            ],
            commonStyle: {
                backgroundColor: "rgba(28, 30, 36, 1)",
                backgroundImage: "",
                backgroundSize: "cover"
            }
        }
    ]
} ]);
db.getCollection("pages").insert([ {
    _id: ObjectId("6047183ef648f4201febd61b"),
    shareConfig: {
        coverImage: "",
        title: "这是#分享者#的大力推荐",
        description: "这是#分享者#大力推荐的可视化编辑器"
    },
    title: "煤炭交易实时页面",
    coverImage: "/resource/image_lib/admin/1615273131374/blob",
    description: "我用C317-DataUI可视化编辑器做了一个超酷炫的可视化页面，快来看看吧。",
    script: "",
    width: NumberInt("1920"),
    height: NumberInt("1080"),
    pageMode: "h5",
    flipType: NumberInt("0"),
    slideNumber: false,
    status: NumberInt("1"),
    isPublish: true,
    isTemplate: true,
    members: [ ],
    version: NumberInt("1"),
    author: "603c42aad79c89450d3f4dec",
    created: ISODate("2021-03-09T06:36:14.503Z"),
    updated: ISODate("2021-03-09T06:58:53.516Z"),
    __v: NumberInt("0"),
    pages: [
        {
            uuid: "acc560e6-78fe-4550-9377-429072672e68",
            name: "",
            elements: [
                {
                    uuid: "f09b24f2-23b2-4132-89c6-49313b4bb642",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("1903"),
                        height: NumberInt("150"),
                        top: NumberInt("9"),
                        left: NumberInt("9"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("1")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "e9ef818e-5ef8-48b3-90b5-3b17dce30031",
                    elName: "c317-scroll-d",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("450"),
                        height: NumberInt("878"),
                        top: NumberInt("190"),
                        left: NumberInt("7"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("2")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("450"),
                            height: NumberInt("878")
                        },
                        chartDataV: {
                            columns: [
                                "列1",
                                "列2",
                                "列3"
                            ],
                            rows: [
                                {
                                    "列1": "行1列1",
                                    "列2": "行1列2",
                                    "列3": "行1列3"
                                },
                                {
                                    "列1": "行2列1",
                                    "列2": "行2列2",
                                    "列3": "行2列3"
                                },
                                {
                                    "列1": "行3列1",
                                    "列2": "行3列2",
                                    "列3": "行3列3"
                                },
                                {
                                    "列1": "行4列1",
                                    "列2": "行4列2",
                                    "列3": "行4列3"
                                },
                                {
                                    "列1": "行5列1",
                                    "列2": "行5列2",
                                    "列3": "行5列3"
                                },
                                {
                                    "列1": "行6列1",
                                    "列2": "行6列2",
                                    "列3": "行6列3"
                                }
                            ]
                        },
                        "scroll_boardD": {
                            rowNum: NumberInt("18"),
                            headerBGC: "rgba(0, 0, 0, 1)",
                            oddRowBGC: "rgba(28, 30, 36, 1)",
                            evenRowBGC: "rgba(0, 0, 0, 1)",
                            waitTime: NumberInt("2000"),
                            headerHeight: NumberInt("35"),
                            columnWidth: NumberInt("50"),
                            align: "left",
                            index: false,
                            indexHeader: "#",
                            carousel: "single",
                            hoverPause: true
                        }
                    },
                    valueType: "String"
                },
                {
                    uuid: "0bd19fb6-fae9-4db5-baa8-1ad4e2107ec2",
                    elName: "c317-histogram-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("496"),
                        height: NumberInt("457"),
                        top: NumberInt("190"),
                        left: NumberInt("1416"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("3")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("496"),
                            height: NumberInt("457")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393"),
                                    "下单用户": NumberInt("1093"),
                                    "下单率": 0.32
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530"),
                                    "下单用户": NumberInt("3230"),
                                    "下单率": 0.26
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923"),
                                    "下单用户": NumberInt("2623"),
                                    "下单率": 0.76
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723"),
                                    "下单用户": NumberInt("1423"),
                                    "下单率": 0.49
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792"),
                                    "下单用户": NumberInt("3492"),
                                    "下单率": 0.323
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593"),
                                    "下单用户": NumberInt("4293"),
                                    "下单率": 0.78
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户",
                                "下单用户",
                                "下单率"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        xyConfigV: {
                            xAxisType: "category",
                            xAxisName: [
                                "x标题"
                            ],
                            yAxisType: [
                                "KMB",
                                "percent"
                            ],
                            yAxisName: [
                                "y标题1",
                                "y标题2"
                            ],
                            min: [
                                NumberInt("0"),
                                NumberInt("0")
                            ],
                            max: [
                                NumberInt("0"),
                                NumberInt("0")
                            ]
                        },
                        "line_column_barV": {
                            axisSite: {
                                left: [
                                    "访问用户"
                                ],
                                right: [
                                    "下单率"
                                ]
                            },
                            area: false,
                            scale: [
                                false,
                                false
                            ],
                            opacity: NumberInt("1")
                        },
                        colorD: [
                            "rgba(49, 134, 194, 1)",
                            "rgba(20, 114, 179, 1)",
                            "#61a0a8",
                            "#d48265",
                            "#91c7ae",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "fec0937f-ce55-49f6-979f-0093b033b79c",
                    elName: "c317-ring-v",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("495"),
                        height: NumberInt("392"),
                        top: NumberInt("677"),
                        left: NumberInt("1415"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("4")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("495"),
                            height: NumberInt("392")
                        },
                        titleV: {
                            text: "标题",
                            x: "middle",
                            y: "bottom",
                            textAlign: "center",
                            textStyle: {
                                color: "#333",
                                fontSize: NumberInt("12"),
                                fontWeight: "normal"
                            }
                        },
                        chartDataV: {
                            columns: [
                                "日期",
                                "访问用户"
                            ],
                            rows: [
                                {
                                    "日期": "1/1",
                                    "访问用户": NumberInt("1393")
                                },
                                {
                                    "日期": "1/2",
                                    "访问用户": NumberInt("3530")
                                },
                                {
                                    "日期": "1/3",
                                    "访问用户": NumberInt("2923")
                                },
                                {
                                    "日期": "1/4",
                                    "访问用户": NumberInt("1723")
                                },
                                {
                                    "日期": "1/5",
                                    "访问用户": NumberInt("3792")
                                },
                                {
                                    "日期": "1/6",
                                    "访问用户": NumberInt("4593")
                                }
                            ]
                        },
                        commonV: {
                            dimension: [
                                "日期"
                            ],
                            metrics: [
                                "访问用户"
                            ],
                            digit: NumberInt("2"),
                            dataType: "normal"
                        },
                        labelV: {
                            label: {
                                show: true,
                                position: "outside",
                                color: "#000000",
                                fontStyle: "normal",
                                fontWeight: "normal",
                                fontSize: NumberInt("12")
                            }
                        },
                        labelLineV: {
                            labelLine: {
                                show: true,
                                length: NumberInt("10"),
                                length2: NumberInt("10"),
                                lineStyle: {
                                    color: "#000000",
                                    width: NumberInt("1"),
                                    type: "solid"
                                }
                            }
                        },
                        colorD: [
                            "rgba(49, 134, 194, 1)",
                            "rgba(74, 8, 118, 1)",
                            "rgba(167, 6, 54, 1)",
                            "rgba(101, 212, 162, 1)",
                            "rgba(177, 168, 5, 1)",
                            "#749f83",
                            "#ca8622",
                            "#bda29a",
                            "#6e7074",
                            "#546570",
                            "#c4ccd3"
                        ]
                    },
                    valueType: "String"
                },
                {
                    uuid: "c629ade9-7a6b-407f-9ec1-0fd8fa9f1796",
                    elName: "C317MapFlyer",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("945"),
                        height: NumberInt("634"),
                        top: NumberInt("435"),
                        left: NumberInt("464"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("5")
                    },
                    events: [ ],
                    propsValue: {
                        resize: {
                            width: NumberInt("945"),
                            height: NumberInt("634")
                        },
                        chartDataV: {
                            columns: [
                                "起点名称",
                                "起点经度",
                                "起点纬度",
                                "起点值",
                                "终点名称",
                                "终点经度",
                                "终点纬度",
                                "终点值"
                            ],
                            rows: [
                                {
                                    "起点名称": "起点",
                                    "起点经度": 108.848876,
                                    "起点纬度": 40.472078,
                                    "起点值": NumberInt("100"),
                                    "终点名称": "终点",
                                    "终点经度": 110.889071,
                                    "终点纬度": 37.429832,
                                    "终点值": NumberInt("200")
                                }
                            ]
                        },
                        bmapConfig: {
                            roam: true,
                            x: 104.83531246,
                            y: 36.0267395887,
                            zoom: NumberInt("5"),
                            styleId: "1c9508432f1bd060b4485d79045d5bdd"
                        },
                        pointConfig: {
                            text1: "起点文本",
                            text2: "终点文本",
                            rippleEffect: {
                                color: "#fea523",
                                period: NumberInt("4"),
                                scale: 2.5,
                                brushType: "fill"
                            },
                            hoverAnimation: true,
                            label: {
                                color: "#fff",
                                fontWeight: NumberInt("100"),
                                fontSize: NumberInt("12"),
                                position: "right",
                                show: true
                            },
                            symbol: "circle",
                            itemStyle: {
                                color: "#fe2368",
                                shadowBlur: NumberInt("10"),
                                shadowColor: "#31a5e3"
                            }
                        },
                        linesConfig: {
                            effect1: {
                                show: true,
                                period: NumberInt("6"),
                                trailLength: NumberInt("0"),
                                symbol: "path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z",
                                symbolSize: NumberInt("15")
                            },
                            lineStyle1: {
                                normal: {
                                    color: "#fe2368",
                                    width: NumberInt("1"),
                                    opacity: 0.1,
                                    curveness: 0.2
                                }
                            },
                            effect2: {
                                show: true,
                                period: NumberInt("6"),
                                trailLength: 0.7,
                                color: "#fff",
                                symbolSize: NumberInt("3")
                            },
                            lineStyle2: {
                                normal: {
                                    color: "#2347fe",
                                    width: NumberInt("1"),
                                    opacity: 0.5,
                                    curveness: 0.2
                                }
                            }
                        }
                    },
                    valueType: "String"
                },
                {
                    uuid: "376e04ab-00c9-4843-8534-a6e90c48fc1a",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("306"),
                        height: NumberInt("100"),
                        top: NumberInt("193"),
                        left: NumberInt("469"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(54, 120, 252, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("6")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "c460158e-6b03-48d4-9a54-c7c8f3a1c3b4",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("306"),
                        height: NumberInt("100"),
                        top: NumberInt("193"),
                        left: NumberInt("786"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(254, 165, 35, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("7")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "8c50d02a-eea5-4107-80c7-31b7c12036d0",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("306"),
                        height: NumberInt("100"),
                        top: NumberInt("193"),
                        left: NumberInt("1102"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(244, 33, 89, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("8")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "65a40a50-1989-4f98-aa52-682e2c7e0245",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("306"),
                        height: NumberInt("100"),
                        top: NumberInt("317"),
                        left: NumberInt("469"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("9")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "82477b3d-e8cf-4404-8d8b-e4ee03dbb323",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("306"),
                        height: NumberInt("100"),
                        top: NumberInt("317"),
                        left: NumberInt("786"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("10")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "6b486423-1cf6-4173-a8e1-5f0d811dd9af",
                    elName: "qk-rectangle-border",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("306"),
                        height: NumberInt("100"),
                        top: NumberInt("314"),
                        left: NumberInt("1103"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("2"),
                        borderColor: "#999999",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "rgba(0, 0, 0, 1)",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("11")
                    },
                    events: [ ],
                    valueType: "String"
                },
                {
                    uuid: "6589d0a0-2a86-4057-9a73-84144cd79343",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("331"),
                        left: NumberInt("842"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FEA523",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("12")
                    },
                    events: [ ],
                    propsValue: {
                        text: "上月交易总额（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "ddb0bbf6-e196-49e0-a23b-62c03855e786",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("365"),
                        left: NumberInt("833"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("35"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FEA523",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("13")
                    },
                    events: [ ],
                    propsValue: {
                        text: "134653.74"
                    },
                    valueType: "String"
                },
                {
                    uuid: "abb6b1c0-14a5-45bb-a2fa-9ac5d3d330ae",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("100"),
                        height: NumberInt("40"),
                        top: NumberInt("200"),
                        left: NumberInt("0"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("16"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#000000",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("14")
                    },
                    events: [ ],
                    propsValue: {
                        text: "这是一段文字"
                    },
                    valueType: "String"
                },
                {
                    uuid: "1de54c07-1b1d-45ca-8ff3-866f14ddc7ee",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("329"),
                        left: NumberInt("522"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#3678FC",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("15")
                    },
                    events: [ ],
                    propsValue: {
                        text: "昨天总交易（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "e3125251-527e-4b74-a615-0f7836c9b51f",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("366"),
                        left: NumberInt("518"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("35"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#3678FC",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("16")
                    },
                    events: [ ],
                    propsValue: {
                        text: "292862.61"
                    },
                    valueType: "String"
                },
                {
                    uuid: "099f4556-a35d-4bf7-8a94-c74ce41242e0",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("167"),
                        height: NumberInt("40"),
                        top: NumberInt("329"),
                        left: NumberInt("1189"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#F42159",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("17")
                    },
                    events: [ ],
                    propsValue: {
                        text: "去年总交易（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "72a5ca2a-6cc8-434e-b9fd-7e63bce00b24",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("167"),
                        height: NumberInt("40"),
                        top: NumberInt("364"),
                        left: NumberInt("1175"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("35"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#F42159",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("18")
                    },
                    events: [ ],
                    propsValue: {
                        text: "202355.13"
                    },
                    valueType: "String"
                },
                {
                    uuid: "c8a5d177-8b10-4736-aa04-dab4e865d491",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("208"),
                        left: NumberInt("521"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("19")
                    },
                    events: [ ],
                    propsValue: {
                        text: "今天总交易（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "21e2d306-95cf-422a-bea3-e31a9dcbf718",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("241"),
                        left: NumberInt("515"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("35"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("20")
                    },
                    events: [ ],
                    propsValue: {
                        text: "292888.61"
                    },
                    valueType: "String"
                },
                {
                    uuid: "f26affab-ccd2-4531-b9d7-5e0501e814d3",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("207"),
                        left: NumberInt("837"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("21")
                    },
                    events: [ ],
                    propsValue: {
                        text: "今天总交易（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "31d24f60-1b7a-4ac5-8e0b-bc75cae9089a",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("236"),
                        left: NumberInt("830"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("35"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("22")
                    },
                    events: [ ],
                    propsValue: {
                        text: "292888.61"
                    },
                    valueType: "String"
                },
                {
                    uuid: "7b930357-4561-4e43-a4b4-ce7aa5e179d0",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("204"),
                        left: NumberInt("1169"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("20"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("23")
                    },
                    events: [ ],
                    propsValue: {
                        text: "今天总交易（吨）"
                    },
                    valueType: "String"
                },
                {
                    uuid: "59667483-2c0a-4fdc-9e59-c328d0ac4f34",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("212"),
                        height: NumberInt("40"),
                        top: NumberInt("239"),
                        left: NumberInt("1156"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("35"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("24")
                    },
                    events: [ ],
                    propsValue: {
                        text: "292888.61"
                    },
                    valueType: "String"
                },
                {
                    uuid: "daa3978f-ff85-46a5-ac02-6a898495bfb7",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("133"),
                        height: NumberInt("40"),
                        top: NumberInt("166"),
                        left: NumberInt("462"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#CFD779",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("25")
                    },
                    events: [ ],
                    propsValue: {
                        text: "煤炭交易总览"
                    },
                    valueType: "String"
                },
                {
                    uuid: "93996e52-9aef-433a-bf9b-bf0ac5a9b0eb",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("235"),
                        height: NumberInt("40"),
                        top: NumberInt("162"),
                        left: NumberInt("1403"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#CFD779",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("26")
                    },
                    events: [ ],
                    propsValue: {
                        text: "当日煤炭交易前五名的省份"
                    },
                    valueType: "String"
                },
                {
                    uuid: "bb597ade-4bb0-46ef-8462-4e7d826b434c",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("207"),
                        height: NumberInt("40"),
                        top: NumberInt("651"),
                        left: NumberInt("1396"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("17"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#CFD779",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("27")
                    },
                    events: [ ],
                    propsValue: {
                        text: "当日企业购煤量占比"
                    },
                    valueType: "String"
                },
                {
                    uuid: "4cc69065-eac9-47c9-ad64-03450c33110b",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("567"),
                        height: NumberInt("71"),
                        top: NumberInt("30"),
                        left: NumberInt("46"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("50"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("28")
                    },
                    events: [ ],
                    propsValue: {
                        text: "煤炭交易大数据分析平台"
                    },
                    valueType: "String"
                },
                {
                    uuid: "566bb90d-8b53-4320-83a5-fff5bb56d7fc",
                    elName: "qk-text",
                    animations: [ ],
                    commonStyle: {
                        position: "absolute",
                        width: NumberInt("724"),
                        height: NumberInt("54"),
                        top: NumberInt("95"),
                        left: NumberInt("47"),
                        rotate: NumberInt("0"),
                        paddingTop: NumberInt("0"),
                        paddingLeft: NumberInt("0"),
                        paddingRight: NumberInt("0"),
                        paddingBottom: NumberInt("0"),
                        marginTop: NumberInt("0"),
                        marginLeft: NumberInt("0"),
                        marginRight: NumberInt("0"),
                        marginBottom: NumberInt("0"),
                        borderWidth: NumberInt("0"),
                        borderColor: "",
                        borderStyle: "solid",
                        borderRadius: NumberInt("0"),
                        boxShadow: "",
                        fontSize: NumberInt("40"),
                        fontWeight: NumberInt("500"),
                        lineHeight: 1.4,
                        letterSpacing: NumberInt("0"),
                        textAlign: "center",
                        color: "#FFFFFF",
                        backgroundColor: "",
                        backgroundImage: "",
                        backgroundSize: "cover",
                        opacity: NumberInt("1"),
                        zIndex: NumberInt("29")
                    },
                    events: [ ],
                    propsValue: {
                        text: "Big data anlysis platform for coal trading"
                    },
                    valueType: "String"
                }
            ],
            commonStyle: {
                backgroundColor: "rgba(28, 30, 36, 1)",
                backgroundImage: "",
                backgroundSize: "cover"
            }
        }
    ]
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("60360532d79c89450d3f4de1"),
    name: "caiyx",
    email: "535400738@qq.com",
    avatar: "",
    username: "caiyx",
    password: "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92",
    created: ISODate("2021-02-24T07:50:10.473Z"),
    updated: ISODate("2021-02-24T07:50:10.473Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("603c3d36d79c89450d3f4de9"),
    name: "wnm",
    email: "1370131288@qq.com",
    avatar: "",
    username: "wnm",
    password: "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92",
    created: ISODate("2021-03-01T01:02:46.468Z"),
    updated: ISODate("2021-03-01T01:02:46.468Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("603c42aad79c89450d3f4dec"),
    name: "admin",
    email: "2538871556@qq.com",
    avatar: "",
    username: "admin",
    password: "ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f",
    created: ISODate("2021-03-01T01:26:02.306Z"),
    updated: ISODate("2021-03-09T06:39:30.189Z"),
    __v: NumberInt("0")
} ]);
