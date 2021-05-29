<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="指标设置：" >
      <div style="font-size: 13px">
      指标名称：<el-select v-model="value4" placeholder="请选择"  size="mini" style="width: 80px">
                <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                </el-option>
              </el-select>
        &nbsp;&nbsp;&nbsp;<el-input v-model="input" placeholder="请输入名称" size="mini" style="width: 150px"></el-input>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  labelMap:{
    'PV': '访问用户',
    'Order': '下单用户'
  }
}
*/
export default {
  name: "attr-qk-labelMapV",
  props: {
    labelMapV: Object,
  },
  data() {
    return {
      value4: [],
      input: '',
      options: [{
        value: '选项1',
        label: '黄金糕'
      }, {
        value: '选项2',
        label: '双皮奶'
      }, {
        value: '选项3',
        label: '蚵仔煎'
      }, {
        value: '选项4',
        label: '龙须面'
      }, {
        value: '选项5',
        label: '北京烤鸭'
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
  size: 10px;
}
</style>
