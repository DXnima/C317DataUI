<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="图表标题：">
      <el-input style="margin-bottom: 15px"
          placeholder="在这里修改标题内容"
          v-model="title.text">
      </el-input>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">x轴位置：</p>
        <div class="sizeAndPosition-wrapper">
          <el-select class="select" v-model="title.x" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options1"
                :key="item.value"
                :label="item.label"
                :value="item.value">
            </el-option>
          </el-select>
        </div>
        <p class="attr-item-title">y轴位置：</p>
        <div class="sizeAndPosition-wrapper">
          <el-select class="select" v-model="title.y" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options2"
                :key="item.value"
                :label="item.label"
                :value="item.value">
            </el-option>
          </el-select>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">对齐方式：</p>
        <div class="sizeAndPosition-wrapper">
          <el-select v-model="title.textAlign" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options3"
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
              v-model="title.textStyle.color"
          ></el-color-picker>
        </div>
        <p class="attr-item-title">字体大小：</p>
        <div class="sizeAndPosition-wrapper">
          <el-input-number
              v-model="title.textStyle.fontSize"
              :min="1"
              :max="100"
              :step="2"
              controls-position="right"
              size="mini"
              style="width: 80px;">
          </el-input-number>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">字体粗细：</p>
        <div class="sizeAndPosition-wrapper">
          <el-select v-model="title.textStyle.fontWeight" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options4"
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
  text: "标题",
  x: "middle", //在图片中的x轴位置 left, right, middle
  y: "bottom", //在图片中的y轴位置 top, bottom
  textAlign: "center", //整体的水平对齐 auto, left, right, center
  textStyle: {
    color:'#333',
    fontSize: 12,
    fontWeight:'normal' //'normal' 'bold' 'bolder' 'lighter'
  }
}
*/
export default {
  name: "attr-qk-titleV",
  props: {
    titleV: Object,
  },
  data() {
    return {
      options1: [
        {value: 'left', label: '左'},
        {value: 'middle', label: '中'},
        {value: 'right', label: '右'}
      ],
      options2: [
        {value: 'top', label: '上'},
        {value: 'bottom', label: '下'}
      ],
      options3: [
        {value: 'auto', label: '自动对齐'},
        {value: 'left', label: '左对齐'},
        {value: 'right', label: '右对齐'},
        {value: 'center', label: '居中对齐'}
      ],
      options4: ['normal', 'bold', 'bolder', 'lighter'],
      title: this.titleV
    };
  },
  watch: {
    titleV() {
      this.tempText = this.titleV.text;
    },
    title() {
      // TODO 这里传递值
      this.$emit("update:titleV", this.title);
    }
  },
};
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
