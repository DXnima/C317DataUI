<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="线条样式：" >
      <div class="box1">
        线的颜色：<el-color-picker size="mini"
                              v-model="lineStyleV.lineStyle.color"
                              show-alpha
                              :predefine="predefineColors">
      </el-color-picker>
        &nbsp;&nbsp;&nbsp;阴影颜色：<el-color-picker size="mini"
                              v-model="lineStyleV.lineStyle.shadowColor"
                              show-alpha
                              :predefine="predefineColors">
      </el-color-picker>
      </div>
      <div class="box1">
        &nbsp;&nbsp;&nbsp;线宽：&nbsp;&nbsp;&nbsp;&nbsp;<el-input-number style="width: 100px" v-model="lineStyleV.lineStyle.width" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        线的类型：<el-select v-model="lineStyleV.lineStyle.type" placeholder="请选择"  size="mini" style="width: 100px">
        <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        图形阴影模糊大小：<el-input-number style="width: 100px" v-model="lineStyleV.lineStyle.shadowBlur" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        阴影水平偏移距离：<el-input-number style="width: 100px" v-model="lineStyleV.lineStyle.shadowOffsetX" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        阴影垂直偏移距离：<el-input-number style="width: 100px" v-model="lineStyleV.lineStyle.shadowOffsetY" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        透明度：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-input-number style="width: 100px" v-model="lineStyleV.lineStyle.opacity" controls-position="right"  size="mini"></el-input-number>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*lineStyle:{
  color :"#000",
      width:1,
      type :'solid',
      shadowColor: 'rgba(0, 0, 0, 0.5)',
      shadowBlur: 10,
      shadowOffsetX:1,
      shadowOffsetY:1,
      opacity : 1
}*/
export default {
  name: "attr-qk-lineStyleV",
  props: {
    lineStyleV: Object,
  },
  data() {
    return {
      color: 'rgba(255, 69, 0, 0.68)',
      predefineColors: [
        '#ff4500',
        '#ff8c00',
        '#ffd700',
        '#90ee90',
        '#00ced1',
        '#1e90ff',
        '#c71585',
        'rgba(255, 69, 0, 0.68)',
        'rgb(255, 120, 0)',
        'hsv(51, 100, 98)',
        'hsva(120, 40, 94, 0.5)',
        'hsl(181, 100%, 37%)',
        'hsla(209, 100%, 56%, 0.73)',
        '#c7158577'
      ],

      num: 1,
      value4: [],
      options: [{
        value: 'solid',
        label: '实线'
      }, {
        value: 'dashed',
        label: '虚线'
      }, {
        value: 'dotted',
        label: '点线'
      }],
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
