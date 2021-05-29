<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="K线图设置：">
      <div class="box1">
        展示移动平均线指标：&nbsp;&nbsp;&nbsp;&nbsp;<el-switch
          v-model="candleV.showMA"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <div class="box1">
        移动平均线指标周期：<p></p>
        <el-input-number style="width: 130px" v-model="candleV.MA[0]" controls-position="right"   size="mini" ></el-input-number>
        &nbsp;&nbsp;<el-input-number style="width: 130px" v-model="candleV.MA[1]" controls-position="right" size="mini" ></el-input-number>
        <el-input-number style="width: 130px" v-model="candleV.MA[2]" controls-position="right" size="mini" ></el-input-number>
        &nbsp;&nbsp;<el-input-number style="width: 130px" v-model="candleV.MA[3]" controls-position="right" size="mini" ></el-input-number>
      </div>
      <div class="box1">
        展示成交量：<el-switch
          v-model="candleV.showVol"
          active-color="#13ce66"
          inactive-color="#ff4949">
      </el-switch>
      </div>
      <div class="box1">
        下降颜色：<el-color-picker size="mini"
          v-model="candleV.downColor"
          show-alpha
          :predefine="predefineColors">
      </el-color-picker>
        &nbsp;&nbsp; 上升颜色：<el-color-picker size="mini"
                              v-model="candleV.upColor"
                              show-alpha
                              :predefine="predefineColors">
      </el-color-picker>
      </div>

    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
  showMA:false,//	是否展示移动平均线指标		默认 为 false
  MA:[5, 10, 20, 30],//	移动平均线指标周期		默认 [5, 10, 20, 30]
  showVol:false,//	是否展示成交量		默认为 false
  //颜色设置有问题
 downColor:'#ec0000',//	下降颜色		默认为 #ec0000
  upColor:'#00da3c'//	上升颜色		默认为 #00da3c
}
*/
export default {
  name: "attr-qk-candleV",
  props: {
    candleV: Object,
    chartDataV:Object,
  },
  data() {
    return {

      color: '#00da3c',
      predefineColors: [
        '#ff4500',
        '#ff8c00',
        '#ffd700',
        '#90ee90',
        '#00ced1',
        '#1e90ff',
        '#c71585',
        'rgba(255, 69, 0, 0.68)',
        'rgb(255, 120, 0)',
        'hsv(51, 100, 98)',
        'hsva(120, 40, 94, 0.5)',
        'hsl(181, 100%, 37%)',
        'hsla(209, 100%, 56%, 0.73)',
        '#c7158577'
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
