<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="热力图设置：" >
      <div v-if="heatmapV.type==='bmap'">
        <div class="attr-item-edit-wrapper">
          <p class="attr-item-title">地图key：</p>
          <div class="attr-item-edit-input">
            <el-input v-model="heatmapV.key" placeholder="请输入名称" size="mini" @paste.native.capture.prevent="handlePasteKey"></el-input>
            <div class="attr-item-edit-input-des">
              <el-link type="success" href="http://lbsyun.baidu.com/apiconsole/key?application=key" target="_blank">百度地图key申请地址</el-link>
            </div>
          </div>
        </div>
        <div class="attr-item-edit-wrapper marginB10">
          <p class="attr-item-title">中心点：</p>
          <div class="attr-item-edit-input">
            <el-input v-model="heatmapV.bmap.center[0]" placeholder="请输入名称" size="mini" style="width: 100px" @paste.native.capture.prevent="handlePasteX"></el-input>
            <div class="attr-item-edit-input-des">经度</div>
          </div>
          --<div class="attr-item-edit-input">
            <el-input v-model="heatmapV.bmap.center[1]" placeholder="请输入名称" size="mini" style="width: 100px" @paste.native.capture.prevent="handlePasteY"></el-input>
            <div class="attr-item-edit-input-des">纬度</div>
          </div>
        </div>
        <div class="attr-item-edit-wrapper">
          <p class="attr-item-title">地图等级：</p>
          <div class="sizeAndPosition-wrapper">
            <el-input-number v-model="heatmapV.bmap.zoom" controls-position="right"  size="mini" :min="1"></el-input-number>
          </div>
          <p class="attr-item-title">是否缩放：</p>
          <div class="sizeAndPosition-wrapper">
            <el-switch
                v-model="heatmapV.bmap.roam"
                active-color="#13ce66"
                inactive-color="#ff4949">
            </el-switch>
          </div>
        </div>
        <div class="attr-item-edit-wrapper">
          <p class="attr-item-title">地图样式：</p>
          <div class="attr-item-edit-input">
            <el-input v-model="heatmapV.bmap.mapStyleV2.styleId" placeholder="请输入名称" size="mini" @paste.native.capture.prevent="handlePasteStyle"></el-input>
            <div class="attr-item-edit-input-des">
              <el-link type="success" href="http://lbsyun.baidu.com/customv2/index.html" target="_blank">个性化地图样式编辑器</el-link>
            </div>
          </div>
        </div>
        <div class="attr-item-edit-wrapper">
          <p class="attr-item-title">点大小：</p>
          <div class="sizeAndPosition-wrapper">
            <el-input-number v-model="heatmapV.pointSize" controls-position="right"  size="mini" :min="1"></el-input-number>
          </div>
          <p class="attr-item-title">模糊大小：</p>
          <div class="sizeAndPosition-wrapper">
            <el-input-number v-model="heatmapV.blurSize" controls-position="right"  size="mini" :min="1"></el-input-number>
          </div>
        </div>
      </div>
      <div class="attr-item-edit-wrapper">
        <p class="attr-item-title">颜色区间：</p>
        <div class="sizeAndPosition-wrapper">
          <div v-for="(item,index) in heatmapV.heatColor" :key="index">
            <el-color-picker
                show-alpha
                style="float: left;margin-right: 4px"
                size="mini"
                v-model="heatmapV.heatColor[index]"
            ></el-color-picker>
          </div>
        </div>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*
{
  type:'cartesian',//	热力图的类型		可选值：cartesian(默认值，直角坐标系), amap(高德地图)，bmap(百度地图)
  key: 'oBvDtR6nzWtVchkY4cLHtnah1VVZQKRK',//	百度地图 access_key		可由此获取
  bmap: {
    center: [120.14322240845, 30.236064370321],
    zoom: 14,
    roam: true,
    mapStyleV2: {
      //设置百度地图自定义样式
      styleId: '38e07b3839299a908926696ebfe153c3'
    }
  },//	百度地图配置项		参考文档配置
  pointSize:10,//	点大小		默认为 10
  blurSize:5,//	模糊大小		默认为 5
  heatColor:'#2a333d'//	visualMap 中的最大值颜色区间		-
}
*/
export default {
  name: "attr-qk-heatmapV",
  props: {
    heatmapV: Object,
  },
  data() {
    return {
      options: [
        {
          value: 'cartesian',
          label: '直角坐标系'
        },
        {
          value: 'bmap',
          label: '百度地图'
        }
      ]
    }
  },
  methods:{
    handlePasteKey(e){
      this.heatmapV.key=e.clipboardData.getData('Text');
    },
    handlePasteX(e){
      this.heatmapV.bmap.center[0]=e.clipboardData.getData('Text');
    },
    handlePasteY(e){
      this.heatmapV.bmap.center[1]=e.clipboardData.getData('Text');
    },
    handlePasteStyle(e){
      this.heatmapV.bmap.mapStyleV2.styleId=e.clipboardData.getData('Text');
    },
  }
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
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
