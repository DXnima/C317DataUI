<template>
    <el-collapse style="border-bottom: none;">
      <el-collapse-item title="数据类型配置：">
        <div class="box1">
          维度：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-select v-model="value1" placeholder="请选择" size="mini" multiple>
        <el-option
            v-for="item in options"
            :key="item"
            :label="item"
            :value="item">
        </el-option>
      </el-select>
        </div>
        <p></p>
        <div class="box1">
          指标：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-select v-model="value2" placeholder="请选择" size="mini" multiple>
        <el-option
            v-for="item in options"
            :key="item"
            :label="item"
            :value="item">
        </el-option>
      </el-select>
        </div>
        <p></p>
        <div class="box1">
        数据类型：<el-select v-model="common.dataType" placeholder="请选择" size="mini">
        <el-option
            v-for="item in options3"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
        </div>
        <div class="box1" v-if="common.dataType==='percent'">
          小数点保留位数：<el-input-number v-model="common.digit" controls-position="right" :min="1" :max="10" size="mini" @change="change"></el-input-number>
        </div>
      </el-collapse-item>
    </el-collapse>
</template>

<script>
/*
{
  dimension:['日期'],//维度,默认columns第一项为维度
  metrics:['open', 'close', 'lowest', 'highest', 'vol'],//指标默认columns第二项起为指标
  digit:2,//设置数据类型为percent时保留的位数默认为2
  dataType:'normal'//	数据类型		可选值: KMB, normal, percent
}
*/
export default {
  name: "attr-qk-commonV",
  props: {
    commonV: Object,
    chartDataV:Object,
  },
  data() {
    return {
      options: [],
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
      value1:[],
      value2:[],
      common: this.commonV
    }
  },
  methods: {
    change(n){
      this.common.digit=n;
    }
  },
  watch:{
    chartDataV(a) {
      this.value1=[];
      this.value2=[];
      a.columns.forEach((item,index)=>{
        if (index === 0)
          this.value1=[a.columns[0]];
        else
          this.value2.push(item)
      })
      this.options=a.columns;
    },
    commonV(d){
      this.common=d;
    },
    value1(){
      this.common.dimension=this.value1;
    },
    value2(){
      this.common.metrics=this.value2;
    },
    common(){
      // TODO 这里传递值
      this.$emit("update:commonV", this.common);
    }
  }
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
