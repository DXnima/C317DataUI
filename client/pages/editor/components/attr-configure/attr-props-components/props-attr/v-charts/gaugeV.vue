<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="表盘设置：" >
    <div style="font-size: 13px">
      表盘单位：<el-select v-model="value4" placeholder="请选择"  size="mini" style="width: 100px">
      <el-option
          v-for="item in options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
      </el-option>
    </el-select>
      <el-input v-model="input" placeholder="请输入名称" size="mini" style="width: 100px"></el-input>
    </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
   dataName:{'speed': 'km/h'}
}
*/
export default {
  name: "attr-qk-gaugeV",
  props: {
    gaugeV: Object,
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
  padding-bottom: 10px;
}
</style>
