<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="百度地图设置：" >
      <div class="attr-item-edit-wrapper marginB10">
        <p class="attr-item-title">中心点：</p>
        <div class="attr-item-edit-input">
          <el-input v-model="bmapConfig.x" placeholder="请输入名称" size="mini" style="width: 100px"
                    @paste.native.capture.prevent="handlePasteX"></el-input>
          <div class="attr-item-edit-input-des">经度</div>
        </div>
        --<div class="attr-item-edit-input">
        <el-input v-model="bmapConfig.y" placeholder="请输入名称" size="mini" style="width: 100px"
                  @paste.native.capture.prevent="handlePasteY"></el-input>
        <div class="attr-item-edit-input-des">纬度</div>
      </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否缩放：</p>
        <div class="sizeAndPosition-wrapper">
          <el-switch
              v-model="bmapConfig.roam"
              active-color="#13ce66"
              inactive-color="#ff4949">
          </el-switch>
        </div>
        <p class="attr-item-title">地图等级：</p>
        <div class="sizeAndPosition-wrapper">
          <el-input-number v-model="bmapConfig.zoom" controls-position="right"  size="mini" :min="1"></el-input-number>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">地图样式：</p>
        <div class="attr-item-edit-input">
          <el-input v-model="bmapConfig.styleId" placeholder="请输入名称" size="mini"
                    @paste.native.capture.prevent="handlePasteStyle"></el-input>
          <div class="attr-item-edit-input-des">
            <el-link type="success" href="http://lbsyun.baidu.com/customv2/index.html" target="_blank">个性化地图样式编辑器</el-link>
          </div>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  roam: true,
  x: 104.83531246,
  y: 36.0267395887,
  zoom: 6,
  styleId: "1c9508432f1bd060b4485d79045d5bdd"
}
*/
export default {
  name: "attr-qk-bmapConfig",
  props: {
    bmapConfig: Object
  },
  methods:{
    handlePasteX(e){
      this.bmapConfig.x = e.clipboardData.getData('Text');
    },
    handlePasteY(e){
      this.bmapConfig.y = e.clipboardData.getData('Text');
    },
    handlePasteStyle(e){
      this.bmapConfig.styleId = e.clipboardData.getData('Text');
    },
  },
  watch:{
    bmapConfig:{
      handler(val){
        // TODO 这里传递值
        this.$emit("update:bmapConfig", val);
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
