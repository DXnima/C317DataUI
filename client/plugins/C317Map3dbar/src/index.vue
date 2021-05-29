<template>
  <div
    :id="elId"
    :style="{ width: resize.width + 'px', height: resize.height + 'px' }"
  ></div>
</template>

<script>
import echarts from "echarts";
import "echarts-gl";
require("echarts/extension/bmap/bmap");
require("echarts/map/js/china");
//引入uuid文件
import uuidv1 from "uuid/v1";
export default {
  // 这个名字很重要 它就是未来的标签名
  name: "C317Map3dbar",
  // 组件属性 需要传递的参数
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 350,
        width: 480,
      }),
    },
    chartDataV: {
      type: Object,
      default: () => ({
        columns: ["名字", "经度", "纬度", "值"],
        rows: [
          { 名字: "数据1", 经度: 104.400438, 纬度: 29.47325, 值: 2399 },
          { 名字: "数据2", 经度: 105.1, 纬度: 36.581425, 值: 1000 },
        ]
      }),
    },
    map3D:{
      type:Object,
      default:()=>({
        roam: true,
        itemStyle: {
          color: "#475368",
          borderWidth: 0.4,
          borderColor: "#212429",
        },
        label: {
          show: true,
          textStyle: {
            color: "#fff",
            fontSize: 10,
            fontWeight:200,
            backgroundColor: "rgba(255,255,255,0)",
          }
        },
        light: {
          main: {
            color: "#ffffff",
            intensity: 1.2,
            shadow: true,
            alpha: 55,
            beta: 10,
          }
        }
      })
    },
    bar3D:{
      type:Object,
      default:()=>({
        barSize: 0.4,
        bevelSize: 0.3,
        minHeight: 1,
        label: {
          show: false,
          text1:'内容：',
          text2:'单位',
          textStyle:{
            color:'#ffffff',
            fontSize:12,
            fontWeight:200,
            backgroundColor: "rgba(255,255,255,0)",
          }
        },
      })
    },
    colorD:{
      type:Array,
      default:()=>(["#3678fc", "#fea523", "#f42e59",
        "#36fca2", "#930093",'#749f83',
        '#ca8622', '#bda29a','#6e7074',
        '#546570', '#c4ccd3'])
    },
  },
  data() {
    return {
      elId: "",
      myChart: null,
      data: []
    };
  },
  mounted() {
    for (let i in this.chartDataV.rows) {
      let dataset = Object.values(this.chartDataV.rows[i]);
      let val = dataset.splice(1, 3);
      this.data.push([{ name: dataset[0], value: val.map(Number) }]);
    }
  },
  created() {
    this.elId = uuidv1(); //获取随机id
    this.$nextTick(() => {
      this.draw(this.bar3D,this.map3D);
    });
  },
  methods: {
    // 绘制柱状图函数 geo底图
    draw(bar3D,map3D) {
      // 初始化
      this.myChart = echarts.init(document.getElementById(this.elId));
      let Series = [];
      this.data.forEach((item, index) => {
        Series.push({
          data: item,
          type: "bar3D",
          coordinateSystem: "geo3D",
          barSize: bar3D.barSize, //柱子粗细
          shading: "lambert",
          bevelSize: bar3D.bevelSize,
          minHeight: bar3D.minHeight,
          itemStyle: {
            color: this.colorD[index],
            opacity: 1,
          },
          label: {
            show: bar3D.label.show,
            formatter: (record) => {
              return `${record.name}\n${bar3D.label.text1}${record.value[2].toFixed(2)}${bar3D.label.text2}`;
            },
            textStyle:bar3D.label.textStyle
          },
        });
      });
      let option = {
        geo3D: {
          map: "china",
          shading: "lambert",
          ...map3D
        },
        series: Series,
      };
      this.myChart.setOption(option);
    },
  },
  // 3.数据监听 更新图表
  watch: {
    resize: function () {
      this.myChart.resize();
    },
    chartDataV(data) {
      // TODO 对象监听
      this.data = [];
      for (let i in data.rows) {
        let dataset = Object.values(data.rows[i]);
        let val = dataset.splice(1, 3);
        this.data.push([{ name: dataset[0], value: val.map(Number) }]);
        this.draw(this.bar3D,this.map3D);
      }
    },
    colorD(){
      this.draw(this.bar3D,this.map3D);
    },
    map3D:{
      handler(){
        this.draw(this.bar3D,this.map3D);
      },
      deep:true
    },
    bar3D:{
      handler(){
        this.draw(this.bar3D,this.map3D);
      },
      deep:true
    }
  },
};
</script>

<style lang="less" scoped>
</style>
