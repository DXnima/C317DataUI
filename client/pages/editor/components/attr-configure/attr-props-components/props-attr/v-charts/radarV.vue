<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="区域填充样式："  >
      <div class="box1">
        区域填充颜色：<el-color-picker size="mini"
                              v-model="radarV.areaStyle.color"
                              show-alpha>
      </el-color-picker>
        &nbsp;&nbsp;&nbsp; 阴影颜色：<el-color-picker size="mini"
                              v-model="radarV.areaStyle.shadowColor"
                              show-alpha>
      </el-color-picker>
      </div>
      <div class="box1">
        阴影模糊大小：<el-input-number style="width: 100px" v-model="radarV.areaStyle.shadowBlur" controls-position="right"  size="mini"></el-input-number>
      </div>

      <div class="box1">
        水平阴影偏移：<el-input-number style="width: 100px" v-model="radarV.areaStyle.shadowOffsetX" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        垂直阴影偏移：<el-input-number style="width: 100px" v-model="radarV.areaStyle.shadowOffsetY" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        透明度：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-input-number style="width: 100px" v-model="radarV.areaStyle.opacity" controls-position="right"  size="mini"></el-input-number>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*radar:{
  color :"#000",
      shadowColor: 'rgba(0, 0, 0, 0.5)',
      shadowBlur: 10,
      shadowOffsetX:1,
      shadowOffsetY:1,
      opacity : 1}*/
export default {
  name: "attr-qk-radarV",
  props: {
    radarV: Object,
  },
  data() {
    return {
      color: 'rgba(255, 69, 0, 0.68)',


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
