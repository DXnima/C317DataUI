<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="地图设置：">
      <div class="box1">
        高亮显示数据对应位置：
        <el-switch
            v-model="mapV.selectData"
            active-color="#13ce66"
            inactive-color="#ff4949">
        </el-switch>
      </div>
      <div class="box1">
        视角的缩放比例： <el-input-number style="width: 100px" v-model="mapV.zoom" controls-position="right"  size="mini"  ></el-input-number>
      </div>
      <div class="box1">
        当前视角的中心点：<p></p> <el-input-number style="width: 100px" v-model="mapV.center[0]" controls-position="right"  size="mini"  ></el-input-number>
        &nbsp;&nbsp;&nbsp;<el-input-number style="width: 100px" v-model="mapV.center[1]" controls-position="right"  size="mini" ></el-input-number>
      </div>
      <div class="box1">
        鼠标缩放和平移漫游：
        <el-select v-model="mapV.roam" placeholder="请选择" size="mini" >
          <el-option
              v-for="item in options2"
              :key="item.value"
              :label="item.label"
              :value="item.value">
          </el-option>
        </el-select>
      </div>
      <div class="box1">
        滚轮缩放的极限控制：<p></p> <el-input-number style="width: 100px" v-model="mapV.scaleLimit.min" controls-position="right"  size="mini"  ></el-input-number>
        &nbsp;&nbsp;&nbsp;<el-input-number style="width: 100px" v-model="mapV.scaleLimit.max" controls-position="right"  size="mini" ></el-input-number>
      </div>
      <div class="box1">
      标签显示： <el-switch
            v-model="mapV.label.show"
            active-color="#13ce66"
            inactive-color="#ff4949">
        </el-switch>
      </div>
      <div class="box1">
       标签位置： <el-select v-model="mapV.label.position" placeholder="请选择">
          <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value">
          </el-option>
        </el-select>
      </div>
      <div class="box1">
        距离图形的距离： <el-input-number style="width: 100px" v-model="mapV.label.distance" controls-position="right"  size="mini"  ></el-input-number>
      </div>
      <div class="box1">
        文字颜色： <span class="demonstration">有默认值</span>
        <el-color-picker v-model="mapV.label.color" show-alpha></el-color-picker>
      </div>
      <div class="box1">
        文字大小： <el-input-number style="width: 100px" v-model="mapV.label.fontSize" controls-position="right"  size="mini"  ></el-input-number>
      </div>
      <div class="box1">
        文字水平对齐方式： <el-select v-model="mapV.label.align" placeholder="请选择">
        <el-option
            v-for="item in options1"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
      <div class="box1">
        文字垂直对齐方式： <el-select v-model="mapV.label.verticalAlign" placeholder="请选择">
        <el-option
            v-for="item in options3"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      </div>
    </el-collapse-item>

  </el-collapse>
</template>

<script>
/*selectData:false,//	是否高亮显示数据对应位置		默认为 false
zoom:1,//	视角的缩放比例		默认为1
    center:['1', '1', '1', '1'],//	当前视角的中心点		-
    roam:false,//	是否开启鼠标缩放和平移漫游		默认为false, 可选值有false, true, 'scale', 'move'
    scaleLimit:{ min: 1, max: 1 },//	滚轮缩放的极限控制		默认{ min: 1, max: 1 }
//mapGrid:{left: auto,right: auto,top: auto,bottom: auto},//	地图距离容器的边距		默认值为{left: auto,right: auto,top: auto,bottom: auto}
label: {
  show:false,
      position:'top',
      distance :5,
      color :"#fff",
      fontSize :12,
      align:'left',
      verticalAlign:'top'

}//	文本标签		默认为true, 内容参考文档*/
// //mapOrigin://	地图 geojson		-
export default {
  name: "attr-qk-mapV",
  props: {
    mapV: Object,
  },
  data() {
    return {
      options: [{
        value: 'top',
        label: '上'
      }, {
        value: 'bottom',
        label: '下'
      }, {
        value: 'left',
        label: '左'
      }, {
        value: 'right',
        label: '右'
      }, {
        value: 'inside',
        label: 'inside'
      }],
      options1: [{
        value: 'left',
        label: '左'
      },
        {
        value: 'center',
        label: '中'
      }, {
        value: 'right',
        label: '右'
      }],

      options2: [
        {
          value: 'scale',
          label: '缩放'
        },
        {
          value: 'move',
          label: '平移'
        },
        {
          value: true,
          label: '是'
        },
        {
          value: false,
          label: '否'
        },],
      options3: [{
        value: 'top',
        label: '上'
      }, {
        value: 'bottom',
        label: '下'
      }, {
        value: 'middle',
        label: '中'
      },],

    }
  },
  created() {
  },
  methods: {}
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
