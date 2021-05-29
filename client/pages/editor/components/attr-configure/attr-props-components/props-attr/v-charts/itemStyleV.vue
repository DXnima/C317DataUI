<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="图形样式："  >
      <div class="box1">
        阳线颜色：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-color-picker size="mini"
          v-model="color"
          show-alpha
          :predefine="predefineColors">

      </el-color-picker>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;阴线颜色：&nbsp;&nbsp;<el-color-picker size="mini"
                              v-model="color"
                              show-alpha
                              :predefine="predefineColors">
      </el-color-picker>
      </div>

      <div class="box1">
        阳线边框颜色：<el-color-picker size="mini"
                              v-model="color"
                              show-alpha
                              :predefine="predefineColors">
      </el-color-picker>
        &nbsp;&nbsp;&nbsp;阴线边框颜色：<el-color-picker size="mini"
                                v-model="color"
                                show-alpha
                                :predefine="predefineColors">
      </el-color-picker>
      </div>

      <div class="box1">
        边框宽度：<el-input-number style="width: 80px" v-model="num" controls-position="right"  size="mini"></el-input-number>
        &nbsp;&nbsp;&nbsp;图形阴影：<el-input-number style="width: 80px" v-model="num" controls-position="right"  size="mini"></el-input-number>
      </div>

      <div class="box1">
        阴影颜色： &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<el-color-picker size="mini"
                                v-model="color"
                                show-alpha
                                :predefine="predefineColors">
      </el-color-picker>
      </div>
      <div class="box1">
        水平阴影偏移：<el-input-number style="width: 150px" v-model="num" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        垂直阴影偏移：<el-input-number style="width: 150px" v-model="num" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        透明度：&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <el-input-number style="width: 150px" v-model="num" controls-position="right"  size="mini"></el-input-number>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
  itemStyle:{
    color :"#000",
    borderColor : "#000",
    borderWidth:1,
    borderType:'solid',
    shadowColor: 'rgba(0, 0, 0, 0.5)',
    shadowBlur: 10,
    shadowOffsetX:1,
    shadowOffsetY:1,
    opacity : 1
  }
}
*/
export default {
  name: "attr-qk-itemStyleV",
  props: {
    itemStyleV: Object,
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

      num: 1
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
