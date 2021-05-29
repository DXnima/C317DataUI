<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="标签样式："  >
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">标签显示：</p>
        <div class="sizeAndPosition-wrapper">
          <el-switch
              v-model="labelV.label.show"
              active-color="#13ce66"
              inactive-color="#ff4949">
          </el-switch>
        </div>
        <p class="attr-item-title">位置：</p>
        <div class="sizeAndPosition-wrapper">
          <el-select v-model="labelV.label.position" placeholder="请选择" size="mini" style="width: 100px">
            <el-option
                v-for="item in options"
                :key="item.value"
                :label="item.label"
                :value="item.value">
            </el-option>
          </el-select>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">字体颜色：</p>
        <div class="sizeAndPosition-wrapper">
          <el-color-picker
              show-alpha
              style="float: left;margin-right: 4px;"
              size="mini"
              v-model="labelV.label.color"></el-color-picker>
        </div>
        <p class="attr-item-title">字体大小：</p>
        <div class="sizeAndPosition-wrapper">
          <el-input-number
              v-model="labelV.label.fontSize"
              :min="1"
              :max="100"
              :step="2"
              controls-position="right"
              size="mini"
              style="width: 80px;"
          ></el-input-number>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">字体风格：</p>
        <div class="sizeAndPosition-wrapper">
          <el-select v-model="labelV.label.fontStyle" placeholder="请选择" size="mini" style="width: 80px">
            <el-option
                v-for="item in options2"
                :key="item"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </div>
        <p class="attr-item-title">字体粗细：</p>
        <div class="sizeAndPosition-wrapper">
          <el-select v-model="labelV.label.fontWeight" placeholder="请选择" size="mini" style="width: 80px">
            <el-option
                v-for="item in options3"
                :key="item"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
    label:{
      show:false,//是否显示
      position: 'outside',//outside 饼图扇区外侧 'inside' 饼图扇区内部 inner center
      color:'#000000',//文字颜色
      fontSize:12//字体大小
      fontStyle:'normal',//'italic'  'oblique' 字体风格
      fontWeight:'normal',//'bold' 'bolder' 'lighter'
    }
}
*/
export default {
  name: "attr-qk-labelV",
  props: {
    labelV: Object,
  },
  data() {
    return {
      options: [
        {
          value: 'outside',
          label: '外侧'
        },
        {
          value: 'inside',
          label: '内部'
        },
        {
          value: 'center',
          label: '中间'
        }],
      options2: ['normal','italic','oblique'],
      options3: ['normal','bold','bolder','lighter'],
    }
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
