<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="树图设置："  >
      <div class="box1">
        树图的布局：<el-select v-model="tree_gaugeV.seriesMap.layout" placeholder="请选择">
        <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        标记的图形：<el-select v-model="tree_gaugeV.seriesMap.symbol" placeholder="请选择">
        <el-option
            v-for="item in options1"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        标记的大小：<el-input-number style="width: 150px" v-model="tree_gaugeV.seriesMap.symbolSize" controls-position="right"  size="mini"></el-input-number>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
  seriesMap: {
    layout :'orthogonal',
    symbol : 'emptyCircle',
    symbolSize : 7
  }
}
*/
export default {
  name: "attr-qk-tree_gaugeV",
  props: {
    tree_gaugeV: Object,
  },
  data() {
    return {
      options: [{
        value: 'orthogonal',
        label: '正交布局'
      }, {
        value: 'radial',
        label: '径向布局'
      }],
      options1: [{
        value: 'circle',
        label: '圆形'
      }, {
        value: 'rect',
        label: '矩形'
      },
        {
          value: 'roundRect',
          label: '圆矩形'
        },{
          value: 'triangle',
          label: '三角形'
        },{
          value: 'diamond',
          label: '菱形'
        },
        {
          value: 'none',
          label: '无'
        }],
    }
  }
}
</script>

<style lang="less" scoped>
</style>
