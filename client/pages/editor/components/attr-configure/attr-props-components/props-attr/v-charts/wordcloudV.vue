<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="词云图设置：" >
      <div class="box1">
        最小字体大小： <el-input-number style="width: 100px" v-model="wordcloudV.sizeMin" controls-position="right"  size="mini"  ></el-input-number>
      </div>
      <div class="box1">
        最大字体大小： <el-input-number style="width: 100px" v-model="wordcloudV.sizeMax" controls-position="right"  size="mini"  ></el-input-number>
      </div>
      <div class="box1">
        标记图形：<el-select v-model="wordcloudV.shape" placeholder="请选择" size="mini">
        <el-option
            v-for="item in options2"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        词云图字体颜色 ：
        <div v-for="(item,index) in wordcloudV.color" :key="index">
          <el-color-picker
              show-alpha
              style="float: left;margin-right: 4px;top: 6px;margin-bottom: 10px"
              size="mini"
              v-model="wordcloudV.color[index]"
          ></el-color-picker>
        </div>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
  sizeMin:12,//	最小字体大小		默认为 12
  sizeMax	:60,//最大字体大小		默认为 60
  shape:'circle',//	词云图的形状		默认为 circle，可选值见备注
  color:"rgb(Math.round(Math.random * 160), Math.round(Math.random * 160), Math.round(Math.random * 160))"//	词云图字体颜色		默认为 "rgb(Math.round(Math.random * 160), Math.round(Math.random * 160), Math.round(Math.random * 160))"
}
*/
export default {
  name: "attr-qk-wordcloudV",
  props: {
    wordcloudV: Object,
  },
  data() {
    return {
      options2: [
        {
          value: 'circle',
          label: '圆形'
        },
        {
          value: 'cardioid',
          label: '心形'
        },
        {
          value: 'triangle',
          label: '三角形'
        },
        {
          value: 'diamond',
          label: '正方形'
        }, {
          value: 'triangle-forward',
          label: '向前三角形'
        },
        {
          value: 'pentagon',
          label: '五角形'
        },
        {
          value: 'star',
          label: '星形'
        }
      ]
    }
  }
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
