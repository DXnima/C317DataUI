<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="散点图设置：">
      <div class="box1">
        坐标轴显示：&nbsp;&nbsp;&nbsp;<el-switch
          v-model="scatterV.axisVisible"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <div class="box1">
        脱离0值比例：&nbsp;&nbsp;<el-switch
          v-model="scatterV.scale"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <div class="box1">
        提示框触发方式：<el-select v-model="scatterV.tooltipTrigger" placeholder="请选择" size="mini" style="width: 100px">
        <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        气泡最大值：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <el-input-number style="width: 100px" v-model="scatterV.symbolSizeMax" controls-position="right" size="mini" ></el-input-number>
      </div>
      <div class="box1">
        标记图形：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-select v-model="scatterV.symbol" placeholder="请选择" size="mini" style="width: 100px">
        <el-option
            v-for="item in options2"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        标记的大小：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <el-input-number style="width: 100px" v-model="scatterV.symbolSize" controls-position="right"  size="mini" ></el-input-number>
      </div>
      <div class="box1">
        标记的旋转角度： <el-input-number style="width: 100px" v-model="scatterV.symbolRotate" controls-position="right"  size="mini"  ></el-input-number>
        <div class="x" style="text-align: right;width: 150px">X</div>
      </div>
      <div class="box1">
        标记位置偏移：&nbsp;&nbsp;&nbsp; <el-input-number style="width: 100px" v-model="scatterV.symbolOffset[0]" controls-position="right"  size="mini"  ></el-input-number>

        &nbsp;<el-input-number style="width: 100px" v-model="scatterV.symbolOffset[1]" controls-position="right"  size="mini" ></el-input-number>
        <div class="x" style="text-align: right;width: 150px">X</div>
      </div>

    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
  tooltipTrigger: 'axis',//	提示框的触发方式		可选值: item, axis
  axisVisible:true,//	是否显示坐标轴		-
  symbolSizeMax:50,//	气泡最大值		默认为50
  symbol:'circle',//	标记的图形		内容参考文档
  symbolSize:0,//	标记的大小		内容参考文档
  symbolRotate:0,//	标记的旋转角度		内容参考文档
  symbolOffset: [0, 0],//	标记相对于原本位置的偏移		内容参考文档
  scale:false	//是否是脱离 0 值比例		-
}
*/
export default {
  name: "attr-qk-scatterV",
  props: {
    scatterV: Object,
  },
  data() {
    return {
      options: [{
        value: 'item',
        label: '单数'
      }, {
        value: 'axis',
        label: '复数'
      }],
      options2: [
        {
          value: 'circle',
          label: '圆形'
        },
        {
          value: 'roundRect',
          label: '圆方形'
        },
        {
          value: 'triangle',
          label: '三角形'
        },
        {
          value: 'diamond',
          label: '菱形'
        }, {
          value: 'pin',
          label: '气球形'
        },
        {
          value: 'arrow',
          label: '纸飞机形'
        },
        {
          value: 'rect',
          label: '正方形'
        },
        {
          value: 'none',
          label: '无'
        }]
    }
  }
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
