<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="飞线设置：" >
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否显示图标：</p>
        <div class="sizeAndPosition-wrapper">
          <el-switch
              v-model="linesConfig.effect1.show"
              active-color="#13ce66"
              inactive-color="#ff4949">
          </el-switch>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">图标效果：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="linesConfig.effect1.period"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">箭头指向速度</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           :max="1"
                           :step="0.1"
                           v-model="linesConfig.effect1.trailLength"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">特效尾迹长度</div>
        </div>
      </div>
      <div class="marginB10">
        <p class="attr-item-title">飞线图标：</p>
          <el-input
              type="textarea"
              :rows="2"
              placeholder="可以通过 'image://url' 设置为图片或者通过 'path://' 将图标设置为任意的矢量路径"
              @paste.native.capture.prevent="handlePaste"
              v-model="linesConfig.effect1.symbol">
          </el-input>
          <div class="attr-item-edit-input-des">
            可以通过 'image://url' 设置为图片或者通过 'path://' 将图标设置为任意的矢量路径，
            <el-link type="primary" href="https://echarts.apache.org/zh/option.html#series-effectScatter.symbol" target="_blank">官方文档</el-link>
          </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">飞线图标大小：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="linesConfig.effect1.symbolSize"
                           controls-position="right"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">线条颜色：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="linesConfig.lineStyle1.normal.color"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">线条样式：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="linesConfig.lineStyle1.normal.width"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">线宽</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="linesConfig.lineStyle1.normal.curveness"
                           :min="-1"
                           :max="1"
                           :step="0.1"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">曲度</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="col-2 attr-item-title">是否显示尾迹：</p>
        <div class="sizeAndPosition-wrapper">
          <el-switch
              v-model="linesConfig.effect2.show"
              active-color="#13ce66"
              inactive-color="#ff4949">
          </el-switch>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">尾迹效果：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="linesConfig.effect2.period"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">指向速度</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           :max="1"
                           :step="0.1"
                           v-model="linesConfig.effect2.trailLength"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">尾迹长度</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">尾迹样式：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="linesConfig.effect2.color"/>
          <div class="attr-item-edit-input-des">特效尾迹颜色</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="linesConfig.effect2.symbolSize"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">尾迹图标大小</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">尾迹线条颜色：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="linesConfig.lineStyle2.normal.color"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">尾迹线条：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="linesConfig.lineStyle2.normal.width"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">线宽</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="linesConfig.lineStyle2.normal.curveness"
                           :min="-1"
                           :max="1"
                           :step="0.1"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">曲度</div>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  effect1: {
    show: true,
    period: 6,//箭头指向速度，值越小速度越快
    trailLength: 0,//特效尾迹长度[0,1]值越大，尾迹越长重
    symbol: 'path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z',//箭头图标
    symbolSize: 15//图标大小
  },
  lineStyle1: {
    normal: {
      color: "#fe2368",
      width: 1,
      curveness: 0.2
    }
  },
  effect2: {
    show: true,
    period: 6,//箭头指向速度，值越小速度越快
    trailLength: 0.7,//特效尾迹长度[0,1]值越大，尾迹越长重
    color: '#fff',//特效尾迹颜色
    symbolSize: 3//图标大小
  },
  lineStyle2: {
    normal: {
      color: "#2347fe",
      width: 1, //尾迹线条宽度
      curveness: 0.2, //尾迹线条曲直度
    }
  }
}
*/
export default {
  name: "attr-qk-linesConfig",
  props: {
    linesConfig: Object,
  },
  methods:{
    handlePaste(e){
      this.linesConfig.effect1.symbol = e.clipboardData.getData('Text');
    }
  },
  watch:{
    linesConfig:{
      handler(val){
        // TODO 这里传递值
        this.$emit("update:linesConfig", val);
      },
      deep:true
    }
  }
}
</script>

<style lang="scss" scoped>
.sizeAndPosition-wrapper {
  display: flex;
  width: 100%;
}

.align-type-item {
  flex: 1;
  cursor: pointer;
  text-align: center;
  &.clearFlex {
    width: 42px;
    flex: none;
  }
  i {
    line-height: 1;
    display: inline-block;
    padding: 6px;
    border-radius: 4px;
    background: rgba(37, 165, 137, 0.08);
  }
  &:hover {
    i {
      color: white;
      background: $primary;
    }
  }
}

.attr-item-edit-wrapper {
  display: flex;
  width: 100%;
  text-align: center;
  padding-bottom: 15px;
  .attr-item-title {
    text-align: left;
    min-width: 60px;
    font-size: 12px;
  }
  .attr-item-edit-input {
    &.col-2 {
      width: 90px;
      margin-left: 10px;
    }
    &.col-1 {
      width: 250px;
    }
    &.col-3 {
      width: 60px;
      margin-left: 10px;
    }
    &.col-4 {
      width: 50px;
      margin-left: 10px;
    }
    .attr-item-edit-input-des {
      text-align: center;
      line-height: 1;
      margin-top: 2px;
      font-size: 12px;
      color: $gray;
    }
  }
  .select{
    width: 80px;
  }
}
</style>
<style lang="scss">
.attr-item-edit-wrapper {
  .el-input-number.is-controls-right .el-input__inner {
    padding-left: 2px;
    padding-right: 32px;
    width: 90px;
  }
  .el-input-number--mini {
    width: 90px;
  }
  .el-slider__runway.show-input {
    margin-right: 108px;
  }
}
</style>
