<template>
  <svg
      :id="elId"
      :viewBox="`${this.viewBox.x} ${this.viewBox.y} ${this.viewBox.width} ${this.viewBox.height}`"
  ></svg>
</template>

<script>
import * as d3 from "d3";
import * as viz from "wnm-d3-viz";
//引入uuid文件
import uuidv1 from "uuid/v1";
import Parser from "../excel-parser";
export default {
  // 这个名字很重要 它就是未来的标签名
  name: "C317SankeyD3",
  // 组件属性 需要传递的参数
  props: {
    chartDataV: {
      type: Object,
      default: () => ({
        columns: ["左边", "右边", "左边数据", "右边数据"],
        rows: [
          { 左边: "线下代理商", 右边: "深圳", 左边数据: 2473, 右边数据: 2973 },
          { 左边: "京东", 右边: "深圳", 左边数据: 16541, 右边数据: 11541 },
          { 左边: "苏宁易购", 右边: "杭州", 左边数据: 3541, 右边数据: 3599 },
          { 左边: "线下代理商", 右边: "杭州", 左边数据: 3541, 右边数据: 8741 },
          { 左边: "京东", 右边: "杭州", 左边数据: 3654, 右边数据: 9874 },
          { 左边: "天猫", 右边: "武汉", 左边数据: 1738, 右边数据: 110 },
          { 左边: "线下自营店", 右边: "武汉", 左边数据: 12925, 右边数据: 13 },
          { 左边: "苏宁易购", 右边: "武汉", 左边数据: 15413, 右边数据: 0 },
          { 左边: "线下自营店", 右边: "重庆", 左边数据: 2166, 右边数据: 654 },
          { 左边: "苏宁易购", 右边: "重庆", 左边数据: 2286, 右边数据: 3654 },
          { 左边: "网上自营店", 右边: "重庆", 左边数据: 348, 右边数据: 3654 },
          { 左边: "线下代理商", 右边: "重庆", 左边数据: 4244, 右边数据: 3654 },
          { 左边: "京东", 右边: "重庆", 左边数据: 1536, 右边数据: 1654 },
          { 左边: "线下自营店", 右边: "长沙", 左边数据: 351, 右边数据: 654 },
          { 左边: "线下代理商", 右边: "长沙", 左边数据: 405, 右边数据: 541 },
          { 左边: "线下自营店", 右边: "成都", 左边数据: 914, 右边数据: 654 },
          { 左边: "苏宁易购", 右边: "成都", 左边数据: 127, 右边数据: 354 },
          { 左边: "线下代理商", 右边: "成都", 左边数据: 1470, 右边数据: 654 },
          { 左边: "京东", 右边: "成都", 左边数据: 516, 右边数据: 354 },
          { 左边: "天猫", 右边: "东莞", 左边数据: 43, 右边数据: 0 },
          { 左边: "线下自营店", 右边: "东莞", 左边数据: 667, 右边数据: 654 },
          { 左边: "苏宁易购", 右边: "东莞", 左边数据: 172, 右边数据: 354 },
          { 左边: "网上自营店", 右边: "东莞", 左边数据: 149, 右边数据: 541 },
          { 左边: "线下代理商", 右边: "东莞", 左边数据: 1380, 右边数据: 3254 },
          { 左边: "京东", 右边: "东莞", 左边数据: 791, 右边数据: 754 },
          { 左边: "线下自营店", 右边: "苏州", 左边数据: 541, 右边数据: 687 },
          { 左边: "线下代理商", 右边: "苏州", 左边数据: 654, 右边数据: 541 },
          { 左边: "线下自营店", 右边: "南京", 左边数据: 1070, 右边数据: 654 },
          { 左边: "线下代理商", 右边: "南京", 左边数据: 1171, 右边数据: 1541 },
          { 左边: "京东", 右边: "南京", 左边数据: 33, 右边数据: 45 },
          { 左边: "线下自营店", 右边: "佛山", 左边数据: 407, 右边数据: 654 },
          { 左边: "苏宁易购", 右边: "佛山", 左边数据: 541, 右边数据: 874 },
          { 左边: "线下代理商", 右边: "佛山", 左边数据: 457, 右边数据: 674 },
          { 左边: "京东", 右边: "佛山", 左边数据: 541, 右边数据: 365 },
          { 左边: "线下自营店", 右边: "天津", 左边数据: 557, 右边数据: 654 },
          { 左边: "苏宁易购", 右边: "天津", 左边数据: 167, 右边数据: 541 },
          { 左边: "网上自营店", 右边: "天津", 左边数据: 95, 右边数据: 100 },
          { 左边: "线下代理商", 右边: "天津", 左边数据: 1090, 右边数据: 1321 },
          { 左边: "京东", 右边: "天津", 左边数据: 676, 右边数据: 541 },
          { 左边: "天猫", 右边: "合肥", 左边数据: 1195, 右边数据: 1654 },
          { 左边: "线下自营店", 右边: "合肥", 左边数据: 5412, 右边数据: 6541 },
          { 左边: "苏宁易购", 右边: "合肥", 左边数据: 212, 右边数据: 241 },
          { 左边: "线下代理商", 右边: "合肥", 左边数据: 1509, 右边数据: 1654 },
          { 左边: "天猫", 右边: "温州", 左边数据: 3899, 右边数据: 389 },
          { 左边: "线下自营店", 右边: "温州", 左边数据: 147, 右边数据: 321 },
          { 左边: "苏宁易购", 右边: "温州", 左边数据: 455, 右边数据: 541 },
          { 左边: "网上自营店", 右边: "温州", 左边数据: 321, 右边数据: 254 },
          { 左边: "线下代理商", 右边: "温州", 左边数据: 4100, 右边数据: 4512 },
          { 左边: "天猫", 右边: "南宁", 左边数据: 123, 右边数据: 133 },
          { 左边: "线下自营店", 右边: "南宁", 左边数据: 634, 右边数据: 654 },
          { 左边: "苏宁易购", 右边: "南宁", 左边数据: 749, 右边数据: 541 },
          { 左边: "网上自营店", 右边: "南宁", 左边数据: 119, 右边数据: 654 },
          { 左边: "线下代理商", 右边: "南宁", 左边数据: 3705, 右边数据: 4574 },
          { 左边: "京东", 右边: "南宁", 左边数据: 3456, 右边数据: 4000 },
          { 左边: "线下自营店", 右边: "厦门", 左边数据: 828, 右边数据: 1201 },
          { 左边: "苏宁易购", 右边: "厦门", 左边数据: 2808, 右边数据: 3541 },
          { 左边: "网上自营店", 右边: "厦门", 左边数据: 1452, 右边数据: 2000 },
          { 左边: "线下代理商", 右边: "厦门", 左边数据: 2625, 右边数据: 1541 },
          { 左边: "京东", 右边: "厦门", 左边数据: 1920, 右边数据: 1234 },
          { 左边: "线下自营店", 右边: "西安", 左边数据: 1146, 右边数据: 1541 },
          { 左边: "苏宁易购", 右边: "西安", 左边数据: 212, 右边数据: 321 },
          { 左边: "网上自营店", 右边: "西安", 左边数据: 223, 右边数据: 241 },
          { 左边: "线下代理商", 右边: "西安", 左边数据: 1803, 右边数据: 2000 },
          { 左边: "京东", 右边: "西安", 左边数据: 761, 右边数据: 465 }
        ],
      }),
    },
    viewBox:{
      type:Object,
      default:()=>({
        x:0,
        y:0,
        width:500,
        height:500
      })
    },
    d3Sankey:{
      type:Object,
      default:()=>({
        translateX: 50,
        translateY: 50,
        bpHeight: 400,
        bpWidth: 400,
        barSize: 35,
        title:{
          text:'中间标题',
          x:200,
          y:25,
          color:'#000000',
          size:14,
          weight:700,
        },
        textColor1:'#000000',
        textColor2:'#000000',
        textSize1:16,
        textSize2:14,
        leftTitle: "标题1",
        leftX: -70,
        leftY: -13,
        rightTitle: "标题2",
        rightX: 530,
        rightY: -13
      })
    }
  },
  data() {
    return {
      elId: "",
      data: [],
    };
  },
  created() {
    this.elId = uuidv1(); //获取随机id
    this.$nextTick(() => {
      this.svgUpdate();
      this.drawSg();
    });
  },
  mounted() {
    let dataset = this.converdata(
      this.chartDataV.rows,
      this.chartDataV.columns
    );
    this.data = dataset;
  },
  methods: {
    //数据类型转换
    converdata(rows, columns) {
      let newdata = Parser.vChartJson2Csv(rows, columns);
      let lastdata = Parser.csv2List(newdata.rows);
      lastdata.splice(0, 1);
      return lastdata;
    },
    svgUpdate() {
      let newChart = d3.select(document.getElementById(this.elId));
      newChart.selectAll("svg > *").remove();
    },
    //绘制桑基图 D3js
    drawSg() {
      let chart = d3
        .select(document.getElementById(this.elId))
        .attr("preserveAspectRatio", "xMidYMid meet");
      let data = this.data;
      let z = d3.scaleOrdinal().range(d3.schemeCategory20);
      let g = chart
        .append("g")
        .attr(
          "transform",
          `translate(${this.d3Sankey.translateX},${this.d3Sankey.translateY})`
        );
      chart.append('text')
          .attr('x', this.d3Sankey.title.x)
          .attr('y', this.d3Sankey.title.y)
          .attr('class', 'vbp-header')
          .style("fill", this.d3Sankey.title.color)
          .attr('font-size', this.d3Sankey.title.size)
          .attr('font-weight', this.d3Sankey.title.weight)
          .text(this.d3Sankey.title.text)
      let bp = viz
        .bP() // 定义两个BP图
        .data(data)
        .min(12)
        .pad(1)
        .height(this.d3Sankey.bpHeight)
        .width(this.d3Sankey.bpWidth)
        .barSize(this.d3Sankey.barSize)
        .fill((d) => z(d.primary));
      // 输出BP图数据
      g.call(bp); // 输出BP图
      g.append("text")
        .attr("x", this.d3Sankey.leftX)
        .attr("y", this.d3Sankey.leftY)
        .style("text-anchor", "middle")
        .style("fill", this.d3Sankey.textColor1)
        .attr("font-size", this.d3Sankey.textSize1)
        .text(this.d3Sankey.leftTitle);

      g.append("text")
        .attr("x", this.d3Sankey.rightX)
        .attr("y", this.d3Sankey.rightY)
        .style("text-anchor", "middle")
        .style("fill", this.d3Sankey.textColor1)
        .attr("font-size", this.d3Sankey.textSize1)
        .text(this.d3Sankey.rightTitle);

      g.selectAll(".mainBars")
        .on("mouseover", mouseover)
        .on("mouseout", mouseout);

      g.selectAll(".mainBars")
        .append("text")
        .attr("class", "label")
        .style("fill", this.d3Sankey.textColor2)
        .attr("font-size", this.d3Sankey.textSize2)
        .attr("x", (d) => (d.part === "primary" ? -70 : 70))
        .attr("y", (d) => +6)
        .text((d) => d.key)
        .attr("text-anchor", (d) => (d.part === "primary" ? "end" : "start"));

      g.selectAll(".mainBars")
        .append("text")
        .attr("class", "perc")
        .style("fill", this.d3Sankey.textColor2)
        .attr("font-size", this.d3Sankey.textSize2)
        .attr("x", (d) => (d.part === "primary" ? -180 : 200))
        .attr("y", (d) => +6)
        .text(function (d) {
          return d3.format("0.0%")(d.percent);
        })
        .attr("text-anchor", (d) => (d.part === "primary" ? "end" : "start"));

      g.selectAll(".mainBars") // hover
        .append("title")
        .text(function (d) {
          return d.key + "\n" + d.value;
        });

      function mouseover(d) {
        bp.mouseover(d);

        g.selectAll(".mainBars")
          .select(".perc")
          .text(function (d) {
            return d3.format("0.0%")(d.percent);
          });

        g.selectAll(".mainBars")
          .select("title")
          .text(function (d) {
            return d.key + "\n" + d.value;
          });
      }
      function mouseout(d) {
        bp.mouseout(d);
        g.selectAll(".mainBars")
          .select(".perc")
          .text(function (d) {
            return d3.format("0.0%")(d.percent);
          });

        g.selectAll(".mainBars")
          .select("title")
          .text(function (d) {
            return d.key + "\n" + d.value;
          });
      }
    },
  },
  watch: {
    data() {
      this.svgUpdate();
      this.drawSg();
    },
    chartDataV(data) {
      // TODO 对象监听
      this.data = this.converdata(data.rows, data.columns);
    },
    d3Sankey:{
      handler(){
        this.svgUpdate();
        this.drawSg();
      },
      deep:true
    }
  }
};
</script>

<style lang="less" scoped>
.drawerSVG {
  height: 100%;
  width: 100%;
}
</style>
