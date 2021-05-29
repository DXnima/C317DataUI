<template>
  <dv-scroll-board
    :config="{ ...config, ...scroll_boardD }"
    :style="{ width: resize.width + 'px', height: resize.height + 'px' }"
  />
</template>

<script>
import Parser from "./excel-parser";
export default {
  name: "C317ScrollD", // 这个名字很重要，它就是未来的标签名
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 250,
        width: 400,
      }),
    },
    chartDataV: {
      type: Object,
      default: () => ({
        columns: ["列1", "列2", "列3"],
        rows: [
          { 列1: "行1列1", 列2: "行1列2", 列3: "行1列3" },
          { 列1: "行2列1", 列2: "行2列2", 列3: "行2列3" },
          { 列1: "行3列1", 列2: "行3列2", 列3: "行3列3" },
          { 列1: "行4列1", 列2: "行4列2", 列3: "行4列3" },
          { 列1: "行5列1", 列2: "行5列2", 列3: "行5列3" },
          { 列1: "行6列1", 列2: "行6列2", 列3: "行6列3" },
        ],
      }),
    },
    scroll_boardD: {
      type: Object,
      default: () => ({
        rowNum: 5,
        headerBGC: "#00BAFF",
        oddRowBGC: "#003B51",
        evenRowBGC: "#0A2732",
        waitTime: 2000,
        headerHeight: 35,
        columnWidth: [50],
        align: "left",
        index: false,
        indexHeader: "#",
        carousel: "single",
        hoverPause: true,
      }),
    },
  },
  data() {
    return {
      config: {
        header: [],
        data: [],
      },
    };
  },
  mounted() {
    this.config.header = this.chartDataV.columns;
    this.config.data = this.converdata(
      this.chartDataV.rows,
      this.chartDataV.columns
    );
    // let newdata = Parser.vChartJson2Csv(
    //   this.chartDataV.rows,
    //   this.chartDataV.columns
    // );
    // let lastdata = Parser.csv2List(newdata.rows);
    // lastdata.splice(0, 1);
    // this.config.data = lastdata;
  },
  methods: {
    converdata(rows, columns) {
      let newdata = Parser.vChartJson2Csv(rows, columns);
      let lastdata = Parser.csv2List(newdata.rows);
      lastdata.splice(0, 1);
      return lastdata;
    },
  },
  watch: {
    chartDataV(data) {
      // TODO 对象监听
      // this.chartExtend.title = v_title;
      this.config.header = data.columns;
      this.config.data = this.converdata(data.rows, data.columns);
    },
  },
};
</script>
