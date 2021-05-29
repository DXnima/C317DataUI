<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="显示设置：" >
      <div class="box1" v-if="line_column_bar.axisSite.left">
        左轴的指标：<el-select v-model="value1" placeholder="请选择" size="mini" multiple>
        <el-option
            v-for="item in options"
            :key="item"
            :label="item"
            :value="item">
        </el-option>
      </el-select>
      </div>
      <div class="box1" v-if="line_column_bar.axisSite.right">
        右轴的指标：<el-select v-model="value2" placeholder="请选择" size="mini" multiple>
        <el-option
            v-for="item in options"
            :key="item"
            :label="item"
            :value="item">
        </el-option>
      </el-select>
      </div>
      <div class="box1" v-if="line_column_bar.axisSite.top">
        上轴的指标：<el-select v-model="value1" placeholder="请选择" size="mini" multiple>
        <el-option
            v-for="item in options"
            :key="item"
            :label="item"
            :value="item">
        </el-option>
      </el-select>
      </div>
      <div class="box1" v-if="line_column_bar.axisSite.bottom">
        下轴的指标：<el-select v-model="value2" placeholder="请选择" size="mini" multiple>
        <el-option
            v-for="item in options"
            :key="item"
            :label="item"
            :value="item">
        </el-option>
      </el-select>
      </div>
      <p></p>
      <!--<div class="box1">
        stack：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-select v-model="value2" placeholder="请选择" size="mini" style="width: 100px">
        <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>-->
      <p></p>
      <div class="box1">
        展示面积图：&nbsp;&nbsp;&nbsp;&nbsp;<el-switch
          v-model="line_column_bar.area"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <p></p>
      <div class="box1">
        0 值比例：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-switch
          v-model="line_column_bar.scale[0]"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
        &nbsp;&nbsp;&nbsp;&nbsp; <el-switch
          v-model="line_column_bar.scale[1]"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <p></p>
      <div class="box1">
        透明度:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <el-input-number style="width: 100px" v-model="line_column_bar.opacity" controls-position="right"  size="mini"></el-input-number>
      </div>

    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  axisSite: { left:['访问用户'],right: ['下单率'] },//指标所在的轴,默认不在right轴的指标都在left轴
  stack: { '用户': ['访问用户', '下单用户'] },//堆叠选项
  area:false,//是否展示为面积图默认为false
  scale:[false, false],//是否是脱离 0 值比例默认为[false, false]，表示左右两个轴都不会脱离0值比例。设置成 true 后坐标刻度不会强制包含零刻度
  opacity:1//透明度
}
*/
export default {
  name: "attr-qk-line_column_barV",
  props: {
    line_column_barV: Object,
    chartDataV:Object,
  },
  data() {
    return {
      options: [],
      value1: [],
      value2: [],
      line_column_bar: this.line_column_barV
    }
  },
  watch: {
    chartDataV(a) {
      this.value1=[a.columns[1]];
      this.options = a.columns;
    },
    value1(){
      if(this.line_column_bar.axisSite.left)
        this.line_column_bar.axisSite.left=this.value1;
      else if(this.line_column_bar.axisSite.top)
        this.line_column_bar.axisSite.top=this.value1
    },
    value2(){
      if(this.line_column_bar.axisSite.right)
        this.line_column_bar.axisSite.right=this.value2;
      else if(this.line_column_bar.axisSite.bottom)
        this.line_column_bar.axisSite.bottom=this.value2
    },
  }
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
