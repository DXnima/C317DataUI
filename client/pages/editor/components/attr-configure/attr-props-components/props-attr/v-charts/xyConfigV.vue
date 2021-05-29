<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="XY轴配置：">
     <div class="box1">
      横轴数据类型：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-select v-model="xyConfig.xAxisType" placeholder="请选择" size="mini" style="width: 150px">
      <el-option
          v-for="item in options1"
          :key="item.value"
          :label="item.label"
          :value="item.value">
      </el-option>
    </el-select>
     </div>

      <div class="box1">
      上下坐标轴标题：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div v-for="(item,index) in xyConfig.xAxisName" :key="index">
          <el-input v-model="xyConfig.xAxisName[index]" placeholder="请输入内容" size="mini" style="width: 100px"></el-input>
        </div>
      </div>

      <div class="box1">
      左右坐标轴数据类型：<el-select v-model="xyConfig.yAxisType" placeholder="请选择" size="mini" style="width: 150px" multiple>
      <el-option
          v-for="item in options3"
          :key="item.value"
          :label="item.label"
          :value="item.value">
      </el-option>
    </el-select>
      </div>

      <div class="box1">
      左右坐标轴标题：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div v-for="(item,index) in xyConfig.yAxisName" :key="index">
          <el-input v-model="xyConfig.yAxisName[index]" placeholder="请输入内容" size="mini" style="width: 100px"></el-input>
        </div>
      </div>

      <div class="box1">
      左右坐标轴最小值:
        <p></p><el-input-number  style="width: 100px" v-model="xyConfig.min[0]" controls-position="right"  size="mini" ></el-input-number>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-input-number style="width: 100px" v-model="xyConfig.min[1]" controls-position="right" size="mini" ></el-input-number>
      </div>

      <div class="box1">
      左右坐标轴最大值:
        <p></p>
        <el-input-number style="width: 100px" v-model="xyConfig.max[0]" controls-position="right"  size="mini" ></el-input-number>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <el-input-number style="width: 100px" v-model="xyConfig.max[1]" controls-position="right"  size="mini" ></el-input-number>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  xAxisType:'value',//横轴的数据类型,可选值: category, value, time, log
  xAxisName:['下单用户', '访问用户'],//上下坐标轴标题
  yAxisType:['KMB', 'percent'],//左右坐标轴数据类型可选值: KMB, normal, percent
  yAxisName:['数值', '比率'],//左右坐标轴标题
  min:[100, 300],//左右坐标轴最小值
  max:[100, 300],//左右坐标轴最大值
  legendName:{
    '访问用户': '访问用户 total: 10000'
  }//设置图表上方图例的别名
}
*/
export default {
  name: "attr-qk-xyConfigV",
  props: {
    xyConfigV: Object,
  },
  data() {
    return {
      input: '',
      options1: [{
        value: 'value',
        label: 'value'
      }, {
        value: 'category',
        label: 'category'
      }, {
        value: 'time',
        label: 'time'
      }, {
        value: 'log',
        label: 'log'
      },],
      options3: [{
        value: 'KMB',
        label: 'kmb 格式'
      }, {
        value: 'normal',
        label: '千分位'
      }, {
        value: 'percent',
        label: '百分比格式'
      }],
      xyConfig:this.xyConfigV
    }
  },
  watch:{
    xyConfigV(d){
      this.xyConfig=d;
    },
    xyConfig(){
      // TODO 这里传递值
      this.$emit("update:xyConfigV", this.xyConfig);
    }
  }

}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
  size: 15px;
}
</style>
