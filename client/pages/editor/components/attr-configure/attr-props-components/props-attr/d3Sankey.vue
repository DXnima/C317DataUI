<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="流向图配置：">
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">图表位置：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.translateX"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">X</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.translateY"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">Y</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">图表尺寸：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.bpWidth"
                           controls-position="right" :min="0"/>
          <div class="attr-item-edit-input-des">宽度</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.bpHeight"
                           controls-position="right" :min="0"/>
          <div class="attr-item-edit-input-des">高度</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">中间标题：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input style="margin-left: 10px;"
                    placeholder="在这里修改标题内容"
                    size="mini"
                    v-model="d3Sankey.title.text">
          </el-input>
          <div class="attr-item-edit-input-des">标题</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="d3Sankey.title.color"/>
          <div class="attr-item-edit-input-des">标题颜色</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">标题位置：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.title.x"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">X</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.title.y"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">Y</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">标题字体：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="1"
                           v-model="d3Sankey.title.size"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体大小</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.title.weight"
                           :min="1"
                           :max="1000"
                           :step="100"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体粗细</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">左标题：</p>
        <el-input style="margin-left: 10px;width: 200px"
                  placeholder="在这里修改标题内容"
                  size="mini"
                  v-model="d3Sankey.leftTitle">
        </el-input>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">左标题位置：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.leftX"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">X</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.leftY"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">Y</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">右标题：</p>
        <el-input style="margin-left: 10px;width: 200px"
                  placeholder="在这里修改标题内容"
                  size="mini"
                  v-model="d3Sankey.rightTitle">
        </el-input>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">右标题位置：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.rightX"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">X</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.rightY"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">Y</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">左右标题：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.textSize1"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体大小</div>
        </div>
        <div class="col-3 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="d3Sankey.textColor1"/>
          <div class="attr-item-edit-input-des">字体颜色</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">左右文本：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="d3Sankey.textSize2"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体大小</div>
        </div>
        <div class="col-3 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="d3Sankey.textColor2"/>
          <div class="attr-item-edit-input-des">字体颜色</div>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  translateX: 0,//水平位置
  translateY: 50,//垂直位置
  bpHeight: 400,//高度
  bpWidth: 400,//宽度
  barSize: 35,//图形宽度
  title:{
    text:'中间标题',//中间标题
    x:250,//x位置
    y:5,//y位置
    color:'#000000',//标题颜色
    size:14,//标题大小
    weight:700,//标题粗细
  },
  textColor1:'#000000',//左右文本颜色
  textColor1:'#000000',//文本颜色
  textSize1:16,//字体大小
  textSize2:14,//字体大小
  leftTitle: "标题1",//左标题
  leftX: -70,//左x位置
  leftY: 5,//左y位置
  rightTitle: "标题2",//右标题
  rightX: 500,//右x位置
  rightY: 5//右y位置
}
*/
export default {
  name: "attr-qk-d3Sankey",
  props: {
    d3Sankey: Object,
  },
  watch:{
    d3Sankey:{
      handler(val){
        // TODO 这里传递值
        this.$emit("update:d3Sankey", val);
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

