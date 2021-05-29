<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="起始点设置：" >
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否显示文本：</p>
        <div class="col-2 attr-item-edit-input">
          <el-switch
              v-model="pointConfig.label.show"
              active-color="#13ce66"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">起点文本：</p>
        <el-input style="margin-left: 10px;width: 200px"
                  placeholder="在这里修改标题内容"
                  size="mini"
                  v-model="pointConfig.text1">
        </el-input>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">终点文本：</p>
        <el-input style="margin-left: 10px;width: 200px"
                  placeholder="在这里修改标题内容"
                  size="mini"
                  v-model="pointConfig.text2">
        </el-input>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">文本样式：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="pointConfig.label.color"/>
          <div class="attr-item-edit-input-des">字体颜色</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-select v-model="pointConfig.label.position" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options1"
                :key="item.value"
                :label="item.label"
                :value="item.value">
            </el-option>
          </el-select>
          <div class="attr-item-edit-input-des">字体位置</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">文本字体：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="pointConfig.label.fontSize"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体大小</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           v-model="pointConfig.label.fontWeight"
                           :min="1"
                           :max="1000"
                           :step="100"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">字体粗细</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">是否开启鼠标滑过动画效果：</p>
        <div class="col-2 attr-item-edit-input">
          <el-switch
              v-model="pointConfig.hoverAnimation"
              active-color="#13ce66"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">涟漪特效：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="pointConfig.rippleEffect.color"/>
          <div class="attr-item-edit-input-des">涟漪颜色</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-select style="width: 80px" v-model="pointConfig.rippleEffect.brushType" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options2"
                :key="item.value"
                :label="item.label"
                :value="item.value">
            </el-option>
          </el-select>
          <div class="attr-item-edit-input-des">波纹方式</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">涟漪动画：</p>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="pointConfig.rippleEffect.period"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">动画周期(秒)</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           :step="0.1"
                           v-model="pointConfig.rippleEffect.scale"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">动画波纹缩放比例</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">图形颜色：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="pointConfig.itemStyle.color"/>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">阴影样式：</p>
        <div class="col-2 attr-item-edit-input">
          <el-color-picker
              show-alpha
              size="mini"
              v-model="pointConfig.itemStyle.shadowColor"/>
          <div class="attr-item-edit-input-des">阴影颜色</div>
        </div>
        <div class="col-2 attr-item-edit-input">
          <el-input-number size="mini"
                           :min="0"
                           v-model="pointConfig.itemStyle.shadowBlur"
                           controls-position="right"/>
          <div class="attr-item-edit-input-des">阴影模糊大小</div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">选取图形方式：</p>
        <div class="col-2 attr-item-edit-input">
          <el-select style="width: 180px" v-model="imageType" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options3"
                :key="item.value"
                :label="item.label"
                :value="item.value">
            </el-option>
          </el-select>
        </div>
      </div>
      <div class="attr-item-edit-wrapper" v-if="imageType==='type'">
        <p class="attr-item-title">基础形状选取：</p>
        <div class="col-2 attr-item-edit-input">
          <el-select style="width: 180px" v-model="pointConfig.symbol" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options4"
                :key="item.value"
                :label="item.label"
                :value="item.value">
            </el-option>
          </el-select>
        </div>
      </div>
      <div v-if="imageType==='path'">
        <p class="attr-item-title">输入路径：</p>
        <el-input
            type="textarea"
            :rows="2"
            placeholder="可以通过 'image://url' 设置为图片或者通过 'path://' 将图标设置为任意的矢量路径"
            @paste.native.capture.prevent="handlePaste"
            v-model="pointConfig.symbol">
        </el-input>
        <div class="attr-item-edit-input-des">
          可以通过 'image://url' 设置为图片或者通过 'path://' 将图标设置为任意的矢量路径，
          <el-link type="primary" href="https://echarts.apache.org/zh/option.html#series-effectScatter.symbol" target="_blank">官方文档</el-link>
        </div>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  text1:'起点文本',
  text2:'终点文本',
  //涟漪特效相关配置
  rippleEffect: {
    color:'#fea523',//涟漪的颜色
    period: 4,//动画的周期，秒数
    scale: 2.5,//动画中波纹的最大缩放比例
    brushType: 'fill'//波纹的绘制方式，可选 'stroke' 和 'fill'
  },
  hoverAnimation: true,//是否开启鼠标 hover 的提示动画效果
  label: {
    color: "#fff" ,
    fontWeight: 100 ,
    fontSize: 12,
    position: 'right',
    show: true
  },
  symbol:'circle',
  itemStyle: {
    color: '#fe2368',
    shadowBlur: 10,
    shadowColor: '#31a5e3'
  }
}
*/
export default {
  name: "attr-qk-pointConfig",
  props: {
    pointConfig: Object,
  },
  data(){
    return{
      options1:[
        {value: 'top', label: '顶部'},
        {value: 'left', label: '左侧'},
        {value: 'right', label: '右侧'},
        {value: 'bottom', label: '底部'},
        {value: 'inside', label: '内部'},
        {value: 'insideLeft', label: '内部左侧'},
        {value: 'insideRight', label: '内部右侧'},
        {value: 'insideTop', label: '内部上侧'},
        {value: 'insideBottom', label: '内部下侧'},
        {value: 'insideTopLeft', label: '内部左上'},
        {value: 'insideBottomLeft', label: '内部左下'},
        {value: 'insideTopRight', label: '内部右上 '},
        {value: 'insideBottomRight', label: '内部右下'}
      ],
      options2:[
        {value: 'stroke', label: '笔划'},
        {value: 'fill', label: '填充'}
        ],
      imageType:'type',
      options3:[
        {value: 'type', label: '基础形状'},
        {value: 'path', label: '输入路径'}
      ],
      options4:[
        {value: 'circle', label: '圆'},
        {value: 'rect', label: '矩形'},
        {value: 'roundRect', label: '圆形矩形'},
        {value: 'triangle', label: '三角形'},
        {value: 'diamond', label: '菱形'},
        {value: 'pin', label: '针'},
        {value: 'arrow', label: '箭头'},
        {value: 'none', label: '无'}
      ]
    }
  },
  methods:{
    handlePaste(e){
      this.pointConfig.symbol = e.clipboardData.getData('Text');
    }
  },
  watch:{
    pointConfig:{
      handler(val){
        // TODO 这里传递值
        this.$emit("update:pointConfig", val);
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
