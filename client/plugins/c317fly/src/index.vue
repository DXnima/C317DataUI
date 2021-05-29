<template>
  <div
      :id="elId"
      :style="{ width: resize.width + 'px', height: resize.height + 'px' }"
  ></div>
</template>

<script>
import echarts from "echarts";
//引入uuid文件
import uuidv1 from "uuid/v1";
export default {
  // 这个名字很重要 它就是未来的标签名
  name: "C317MapFlyer",
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
            起点名称: "起点",
            起点经度: 108.848876,
            起点纬度: 40.472078,
            起点值:100,
            终点名称: "终点",
            终点经度: 110.889071,
            终点纬度: 37.429832,
            终点值:200,
          },
        ],
      }),
    },
    bmapConfig:{
      type:Object,
      default:()=>({
        roam: true,
        x: 104.83531246,
        y: 36.0267395887,
        zoom: 5,
        styleId: "1c9508432f1bd060b4485d79045d5bdd"
      })
    },
    pointConfig:{
      type:Object,
      default:()=>({
        text1:'起点文本',
        text2:'终点文本',
        //涟漪特效相关配置
        rippleEffect: {
          color:'#fea523',//涟漪的颜色
          period: 4,//动画的周期，秒数
          scale: 2.5,//动画中波纹的最大缩放比例
          brushType: 'fill'//波纹的绘制方式，可选 'stroke' 和 'fill'
        },
        hoverAnimation: true,//是否开启鼠标 hover 的提示动画效果
        label: {
          color: "#fff" ,
          fontWeight: 100 ,
          fontSize: 12,
          position: 'right',
          show: true
        },
        symbol:'circle',
        itemStyle: {
          color: '#fe2368',
          shadowBlur: 10,
          shadowColor: '#31a5e3'
        }
      })
    },
    linesConfig:{
      type:Object,
      default:()=>({
        effect1: {
          show: true,
          period: 6,//箭头指向速度，值越小速度越快
          trailLength: 0,//特效尾迹长度[0,1]值越大，尾迹越长重
          symbol: 'path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z',//箭头图标
          symbolSize: 15//图标大小
        },
        lineStyle1: {
          normal: {
            color: "#fe2368",
            width: 1,
            opacity: 0.1,
            curveness: 0.2
          }
        },
        effect2: {
          show: true,
          period: 6,//箭头指向速度，值越小速度越快
          trailLength: 0.7,//特效尾迹长度[0,1]值越大，尾迹越长重
          color: '#fff',//特效尾迹颜色
          symbolSize: 3//图标大小
        },
        lineStyle2: {
          normal: {
            color: "#2347fe",
            width: 1, //尾迹线条宽度
            opacity: 0.5, //尾迹线条透明度
            curveness: 0.2, //尾迹线条曲直度
          }
        }
      })
    }
  },
  data() {
    return {
      elId: "",
      myChart: null,
      lineData: {
        lines: [],
        start: [],
        end: [],
      }
    };
  },
  created() {
    this.elId = uuidv1(); //获取随机id
    this.changeData(this.chartDataV);
    this.$nextTick(() => {
      this.drawLine();
    });
  },
  methods: {
    //绘制飞线、矿点位置，以及出发点的相关数据
    drawLine() {
      const myChart = echarts.init(document.getElementById(this.elId));
      let Series=[
        //轨迹图表
        {
          type: 'lines',
          coordinateSystem: 'bmap',
          zlevel: 2,
          effect: this.linesConfig.effect1,
          lineStyle: this.linesConfig.lineStyle1,
          data: this.lineData.lines
        },
        //轨迹特效
        {
          type: "lines",
          coordinateSystem: "bmap",
          effect: this.linesConfig.effect2,
          lines: {
            polyline: true,
          },
          zlevel: 2,
          lineStyle: this.linesConfig.lineStyle2,
          data: this.lineData.lines
        },
        //起点
        {
          name: this.pointConfig.text1,
          type: 'effectScatter',
          coordinateSystem: 'bmap',
          symbolSize: function (val) {
            return val[2] / 10;
          },
          zlevel: 10,
          encode: {
            value: 2
          },
          showEffectOn: 'render',
          rippleEffect: this.pointConfig.rippleEffect,
          hoverAnimation: this.pointConfig.hoverAnimation,
          label: {
            formatter: '{b}',
            ...this.pointConfig.label
          },
          symbol:this.pointConfig.symbol,
          itemStyle: this.pointConfig.itemStyle,
          data: this.lineData.start
        },
        //终点
        {
          name: this.pointConfig.text2,
          type: 'effectScatter',
          coordinateSystem: 'bmap',
          symbolSize: function (val) {
            return val[2] / 10;
          },
          zlevel: 10,
          encode: {
            value: 2
          },
          showEffectOn: 'render',
          rippleEffect: this.pointConfig.rippleEffect,
          hoverAnimation: this.pointConfig.hoverAnimation,
          label: {
            formatter: '{b}',
            ...this.pointConfig.label
          },
          symbol:this.pointConfig.symbol,
          itemStyle: this.pointConfig.itemStyle,
          data: this.lineData.end
        }
      ];
      let option = {
        bmap: {
          roam: this.bmapConfig.roam,
          center: [this.bmapConfig.x, this.bmapConfig.y],
          zoom: this.bmapConfig.zoom,
          mapStyleV2: {
            //设置地图自定义样式
            styleId: this.bmapConfig.styleId,
          }
        },
        tooltip: {
          trigger: 'item'
        },
        series: Series
      };
      myChart.setOption(option);
      this.myChart = myChart;
    },
    //数据转换
    changeData(data){
      this.lineData.lines = [];
      this.lineData.start = [];
      this.lineData.end = [];
      for (let i in data.rows) {
        let dataset = Object.values(data.rows[i]);
        let startname = dataset[0];
        let endname = dataset[4];
        let startpoint = dataset.slice(1, 4);
        let endpoint = dataset.slice(5, 8);
        this.lineData.lines.push({ coords: [startpoint, endpoint] });
        this.lineData.start.push({ name: startname, value: startpoint });
        this.lineData.end.push({ name: endname, value: endpoint });
      }
    }
  },
  // 3.数据监听 更新图表
  watch: {
    resize: function () {
      this.myChart.resize();
    },
    bmapConfig:{
      handler(){
        this.drawLine();
      },
      deep:true
    },
    pointConfig:{
      handler() {
        this.drawLine();
      },
      deep:true
    },
    linesConfig:{
      handler() {
        this.drawLine();
      },
      deep:true
    },
    chartDataV(data) {
      this.changeData(data);
      this.$nextTick(() => {
        this.drawLine();
      });
    },
  },
};
</script>

<style lang="less" scoped>
</style>
