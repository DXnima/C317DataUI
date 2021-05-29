<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="画布设置：">
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">画布位置：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="viewBox.x"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">X</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="viewBox.y"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">Y</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">画布尺寸：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="viewBox.width"
                           controls-position="right" :min="0"/>
          <div class="attr-item-edit-input-des">宽度</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="viewBox.height"
                           controls-position="right" :min="0"/>
          <div class="attr-item-edit-input-des">高度</div>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  x:0,//水平位置
  y:0,//垂直位置
  width:500,//宽度
  height:500//高度
}
*/
export default {
  name: "attr-qk-viewBox",
  props: {
    viewBox: Object,
  },
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
