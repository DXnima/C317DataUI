<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="3D柱配置：">
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">柱子设置：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           :step="0.1"
                           v-model="bar3D.barSize"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">主柱子粗细</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="bar3D.minHeight"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">最小高度</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">柱子倒角：</p>
        <div class="col-1 attr-item-edit-input">
          <el-slider v-model="bar3D.bevelSize"
                     style="margin-left: 15px"
                     :step="0.1"
                     show-input :min="0" :max="1"
                     :marks="{0:'',0.5:'', 1:''}"
                     input-size="mini"></el-slider>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否显示文本：</p>
        <div class="col-2 attr-item-edit-input">
          <el-switch
              v-model="bar3D.label.show"
              active-color="#13ce66"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">文本内容：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input style="margin-left: 10px;"
                    placeholder="在这里修改标题内容"
                    size="mini"
                    v-model="bar3D.label.text1">
          </el-input>
          <div class="attr-item-edit-input-des">内容</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input style="margin-left: 10px;"
                    placeholder="在这里修改标题内容"
                    size="mini"
                    v-model="bar3D.label.text2">
          </el-input>
          <div class="attr-item-edit-input-des">单位</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">文本字体：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="1"
                           v-model="bar3D.label.textStyle.fontSize"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体大小</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="bar3D.label.textStyle.fontWeight"
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
              v-model="bar3D.label.textStyle.color"/>
          <div class="attr-item-edit-input-des">文本颜色</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="bar3D.label.textStyle.backgroundColor"/>
          <div class="attr-item-edit-input-des">背景颜色</div>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  barSize: 0.4, //柱子粗细
  bevelSize: 0.3,//柱子的倒角尺寸。支持设置为从 0 到 1 的值。默认为 0，即没有倒角。
  minHeight: 1,//最小柱子高度
  label: {
    show: false,//是否显示文本
    text1:'内容',//显示内容
    text2:'单位',//显示单位
    textStyle:{
      color:'#ffffff',//文本颜色
      fontSize:12,//字体大小
      fontWeight:200,//字体粗细
      backgroundColor: "rgba(255,255,255,0)",//背景颜色
    }
  }
}
*/
export default {
  name: "attr-qk-bar3D",
  props: {
    bar3D: Object,
  },
  watch:{
    bar3D:{
      handler(val){
        // TODO 这里传递值
        this.$emit("update:bar3D", val);
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
