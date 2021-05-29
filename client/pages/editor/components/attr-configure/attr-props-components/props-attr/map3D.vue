<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="3D地图配置：">
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否缩放：</p>
        <div class="col-2 attr-item-edit-input">
          <el-switch
              v-model="map3D.roam"
              active-color="#13ce66"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">地图颜色：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="map3D.itemStyle.color"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">描边样式：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           :step="0.1"
                           v-model="map3D.itemStyle.borderWidth"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">描边宽度</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="map3D.itemStyle.borderColor"/>
          <div class="attr-item-edit-input-des">描边颜色</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否显示文本：</p>
        <div class="col-2 attr-item-edit-input">
          <el-switch
              v-model="map3D.label.show"
              active-color="#13ce66"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">文本字体：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="1"
                           v-model="map3D.label.textStyle.fontSize"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体大小</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="map3D.label.textStyle.fontWeight"
                           :min="1"
                           :max="1000"
                           :step="100"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体粗细</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">颜色设置：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="map3D.label.textStyle.color"/>
          <div class="attr-item-edit-input-des">文本颜色</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="map3D.label.textStyle.backgroundColor"/>
          <div class="attr-item-edit-input-des">背景颜色</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否显示光照阴影：</p>
        <div class="col-2 attr-item-edit-input">
          <el-switch
              v-model="map3D.light.main.shadow"
              active-color="#13ce66"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">光照样式：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           :step="0.1"
                           v-model="map3D.light.main.intensity"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">光照强度</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="map3D.light.main.color"/>
          <div class="attr-item-edit-input-des">光照颜色</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">光源上下角度：</p>
        <div class="col-1 attr-item-edit-input">
          <el-slider v-model="map3D.light.main.alpha"
                     style="margin-left: 15px"
                     show-input
                     :min="-180"
                     :max="180"
                     :marks="{0:'',90:'', '-90':''}"
                     input-size="mini"></el-slider>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">光源左右角度：</p>
        <div class="col-1 attr-item-edit-input">
          <el-slider v-model="map3D.light.main.beta"
                     style="margin-left: 15px"
                     show-input
                     :min="-180"
                     :max="180"
                     :marks="{0:'',90:'', '-90':''}"
                     input-size="mini"></el-slider>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  roam: true,//是否缩放
  itemStyle: {
    color: "#475368",//颜色
    borderWidth: 0.4,//描边宽度
    borderColor: "#212429",//描边颜色
  },
  label: {
    show: true,//是否显示文本
    textStyle: {
      color: "#fff", //文本颜色
      fontSize: 10, //字体大小
      fontWeight:200,//字体粗细
      backgroundColor: "rgba(255,255,255,0)",//背景颜色
    }
  },
  light: {
    //光照阴影
    main: {
      color: "#ffffff", //光照颜色
      intensity: 1.2, //光照强度
      shadow: true, //是否显示阴影
      alpha: 55,//主光源绕 x 轴，即上下旋转的角度
      beta: 10,//主光源绕 y 轴，即左右旋转的角度
    }
  }
}
*/
export default {
  name: "attr-qk-map3D",
  props: {
    map3D: Object,
  },
  watch:{
    map3D:{
      handler(val){
        // TODO 这里传递值
        this.$emit("update:map3D", val);
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
