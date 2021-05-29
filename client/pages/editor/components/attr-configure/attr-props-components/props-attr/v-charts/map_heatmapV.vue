<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="地图位置设置：" >
      <div class="box1">
        地图数据源： <el-input placeholder="请输入内容" v-model="map_heatmapV.positionJsonLink">

      </el-input>
      </div>
      <div class="box1">
        位置请求： <el-input placeholder="请输入内容" v-model="map_heatmapV.mapURLProfix">

      </el-input>
      </div>

    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
  positionJsonLink:'https://unpkg.com/v-charts-custom-maps@0.2.1/hk-geo.json',//	地图数据源		-
  //specialAreas:object//	地图中的位置配置		将地图中的部分区域缩放到合适的位置，可以使得整个地图的显示更加好看, 用法参考文档
  mapURLProfix:'https://unpkg.com/echarts@3.6.2/map/json/'//	位置请求的 URL 前缀		默认为 https://unpkg.com/echarts@3.6.2/map/json/
}
*/
export default {
  name: "attr-qk-map_heatmapV",
  props: {
    map_heatmapV: Object,
  },
  data() {
    return {

      input1: '',
      num:[1],
    }
  },
  created() {
  },
  methods: {}
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
