<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="图形显示设置：" >
      <div class="box1">
        图例显示数量设置：<el-input-number style="width: 130px" v-model="pie_ringV.legendLimit" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        选中模式：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <el-select v-model="pie_ringV.selectedMode" placeholder="请选择" size="mini" style="width: 100px">
        <el-option
            v-for="item in options1"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>

      </div>
      <div class="box1">
        hover：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-switch
          v-model="pie_ringV.hoverAnimation"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <div class="box1">
        半径：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-input-number style="width: 130px" v-model="pie_ringV.radius" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        偏移量：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-input-number style="width: 130px" v-model="pie_ringV.offsetY" controls-position="right"  size="mini"></el-input-number>
      </div>
      <div class="box1">
        南丁格尔玫瑰图：
        <el-select  v-model="pie_ringV.roseType" placeholder="请选择" size="mini" style="width: 100px">
        <el-option
            v-for="item in options2"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        最大显示数量：&nbsp;&nbsp;&nbsp;&nbsp;<el-input-number style="width: 130px" v-model="pie_ringV.limitShowNum" controls-position="right"  size="mini" :min="0"></el-input-number>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
        legendLimit:	500,//legend显示数量限制		legend数量过多会导致饼图样式错误，限制legend最大值并且当超过此值时，隐藏legend可以解决这个问题
        selectedMode:	false,//选中模式		可选值：single, multiple，默认为false
        hoverAnimation:true,	//是否开启hover  在扇区上的放大动画效果		默认值为true
        radius:	100,//饼图半径		-
        offsetY	:45,//纵向偏移量		-
        roseType:'radius',//	显示为南丁格尔玫瑰图	默认不展示为南丁格尔玫瑰图，可设置为'radius', 'area'
        level: [
          ['1/1', '1/2', '1/3'],
          ['1/4', '1/5']
        ],//	多圆饼图时设置		-
        limitShowNum:	6//	设置超过此数字时使用‘其他’代替	此时数据会按照由大到小顺序显示
      }
*/
export default {
  name: "attr-qk-pie_ringV",
  props: {
    pie_ringV: Object
  },
  data() {
    return {
      options1: [{
        value: 'single',
        label: 'single'
      },
        {
          value: 'multiple',
          label: 'multiple'
        },
        {
          value: false,
          label: '无选中模式'
        }],
      options2: [{
        value: '',
        label: '不显示'
      },{
        value: 'radius',
        label: 'radius'
      },
        {
          value: 'area',
          label: 'area'
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
