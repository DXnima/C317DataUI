<template>
  <el-collapse style="border-bottom: none;">
  <el-collapse-item title="引导线样式：" >
    <div class="box1">
      引导线显示：&nbsp;&nbsp;&nbsp;&nbsp;<el-switch
          v-model="labelLineV.labelLine.show"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      <el-link type="warning">提示：标签样式显示了才可用</el-link>
    </div>
    <div class="box1">
      视觉引导线第一段的长度：<el-input-number style="width: 130px" v-model="labelLineV.labelLine.length" controls-position="right"  size="mini"></el-input-number>
    </div>
    <div class="box1">
      视觉引导线第二段的长度：<el-input-number style="width: 130px" v-model="labelLineV.labelLine.length2" controls-position="right"  size="mini"></el-input-number>
    </div>
    <div class="box1">
      颜色：<el-color-picker size="mini" show-alpha
        v-model="labelLineV.labelLine.lineStyle.color">
    </el-color-picker>
    </div>
    <div class="box1">
      线宽：<el-input-number style="width: 130px" v-model="labelLineV.labelLine.lineStyle.width" controls-position="right"  size="mini"></el-input-number>
    </div>
    <div class="box1">
      线的类型：
      <el-select v-model="labelLineV.labelLine.lineStyle.type" placeholder="请选择" size="mini" style="width: 100px">
        <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>

    </div>
  </el-collapse-item>
  </el-collapse>
</template>

<script>
/*labelLine:{
  show:true,
      length:10,
      length2:10,
      lineStyle:{
    color :"#000",
        width:1,
        type:'solid',
  }*/
export default {
  name: "attr-qk-labelLineV",
  props: {
    labelLineV: Object,
  },
  data() {
    return {
      options: [{
        value: 'solid',
        label: 'solid'
      },
        {
          value: 'dashed',
          label: 'dashed'
        },
        {
          value: 'dotted',
          label: 'dotted'
        }],
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
