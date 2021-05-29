<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="漏斗图设置：" >
<!--      <div class="box1">-->
<!--        数据显示顺序：<el-select v-model="funnelV.sequence" multiple placeholder="请选择" size="mini">-->
<!--        <el-option-->
<!--            v-for="item in options"-->
<!--            :key="item"-->
<!--            :label="item"-->
<!--            :value="item">-->
<!--        </el-option>-->
<!--      </el-select>-->
<!--      </div>-->
      <div class="box1">
        金字塔显示：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-switch
          v-model="funnelV.ascending"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <div class="box1">
        按大小顺序排序：：<el-switch
          v-model="funnelV.useDefaultOrder"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <div class="box1">
        过滤为0的数据：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-switch
          v-model="funnelV.filterZero"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
// sequence: ['订单', '点击', '访问', '展示'],//	数据显示顺序		默认按照数据大小顺序
//     ascending:false,//	是否显示为金字塔		默认为false
//     useDefaultOrder:false,//	是否自动按照数值大小排序		默认为false
//     // filterZero:false,//	是否过滤指标为0的数据		默认为false
/*
{
  sequence: ['订单', '点击', '访问', '展示'],//	数据显示顺序		默认按照数据大小顺序
  ascending:false,//	是否显示为金字塔		默认为false
  useDefaultOrder:false,//	是否自动按照数值大小排序		默认为false
  filterZero:false,//	是否过滤指标为0的数据		默认为false
}
*/
export default {
  name: "attr-qk-funnelV",
  props: {
    funnelV: Object,
    chartDataV:Object,
  },
  data() {
    return {


    }
  },

}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
