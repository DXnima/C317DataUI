<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="瀑布图设置：" >
      <div class="box1">
        总量： <el-input-number style="width: 100px" v-model="waterfallV.totalNum" controls-position="right"  size="mini"  ></el-input-number>
      </div>
      <div class="box1">
        总量的显示文案：<el-input v-model="waterfallV.totalName" placeholder="请输入内容" size="mini"></el-input>

      </div>
      <div class="box1">
        剩余的显示文案：<el-input v-model="waterfallV.remainName" placeholder="请输入内容" size="mini"></el-input>

      </div>

    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*totalNum:24,	//总量	默认瀑布图总量为所有数据的和
    totalName:'总时间',//	总量的显示文案		默认显示总计
    remainName:'剩余时间'//	剩余的显示文案		默认显示其他*/
export default {
  name: "attr-qk-waterfallV",
  props: {
    waterfallV: Object,
  },
  data() {
    return {


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
