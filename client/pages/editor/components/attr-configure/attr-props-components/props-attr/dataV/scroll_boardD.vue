<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="轮播表设置：">
      <div class="box1">
        表行数：
        <el-input-number style="width: 150px" v-model="scroll_boardD.rowNum" controls-position="right"
                         size="mini"></el-input-number>
      </div>
      <div class="box1">
        表头背景色：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-color-picker size="mini" v-model="scroll_boardD.headerBGC" show-alpha></el-color-picker>
      </div>
      <div class="box1">
        奇数行景色：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-color-picker size="mini" v-model="scroll_boardD.oddRowBGC" show-alpha>
      </el-color-picker>
      </div>
      <div class="box1">
        偶数行景色：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<el-color-picker size="mini" v-model="scroll_boardD.evenRowBGC" show-alpha>
      </el-color-picker>
      </div>
      <div class="box1">
        轮播时间间隔(ms)：
        <el-input-number style="width: 150px" v-model="scroll_boardD.waitTime" controls-position="right"
                         size="mini"></el-input-number>
      </div>
      <div class="box1">
        表头高度：
        <el-input-number style="width: 150px" v-model="scroll_boardD.headerHeight" controls-position="right"
                         size="mini"></el-input-number>
      </div>
      <div class="box1">
        列宽度：
        <el-input-number style="width: 150px" v-model="scroll_boardD.columnWidth" controls-position="right"
                         size="mini"></el-input-number>
      </div>
      <div class="box1">
        列对齐方式：
        <el-select v-model="scroll_boardD.align" placeholder="请选择" size="mini">
          <el-option
              v-for="item in options3"
              :key="item.value"
              :label="item.label"
              :value="item.value">
          </el-option>
        </el-select>
      </div>
      <div class="box1">
        显示行号：
        <el-switch
            v-model="scroll_boardD.index"
            active-color="#13ce66"
            inactive-color="#ff4949">
        </el-switch>
      </div>
      <div class="box1">
        轮播方式：
        <el-select v-model="scroll_boardD.carousel" placeholder="请选择" size="mini">
          <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value">
          </el-option>
        </el-select>
      </div>
      <div class="box1">
        悬浮暂停轮播：
        <el-switch
            v-model="scroll_boardD.hoverPause"
            active-color="#13ce66"
            inactive-color="#ff4949">
        </el-switch>
      </div>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  rowNum:5,//---	5
  headerBGC	:	'#00BAFF',	//---
  oddRowBGC	:	'#003B51'	,//---
  evenRowBGC	:'#0A2732',//String	偶数行背景色	---
  waitTime	:	2000,//轮播时间间隔(ms)	Number	---
  headerHeight:35,//	表头高度	Number	---	35
  columnWidth: [50],//	列宽度	Array<Number>	[1]	[]columnWidth可以配置每一列的宽度，默认情况下每一列宽度相等。
  align	:'left',//列对齐方式	Array<String>	[2]	[]align可以配置每一列的对齐方式，可选值有'left'|'center'|'right'，默认值为'left'
  index:false,	//显示行号	Boolean	true|false	false
  indexHeader:'#',//	行号表头	String	-	'#'
  carousel:'single',//	轮播方式	String	'single'|'page'	'single'
  hoverPause:true,//	悬浮暂停轮播	Boolean	---	true
}
*/
export default {
  name: "attr-qk-scroll_boardD",
  props: {
    scroll_boardD: Object,
  },
  data() {
    return {
      options3: [{
        value: 'left',
        label: '左'
      }, {
        value: 'center',
        label: '中'
      }, {
        value: 'right',
        label: '右'
      }],
      options: [{
        value: 'single',
        label: '单个'
      }, {
        value: 'page',
        label: '整页'
      },],
    }
  },
  created() {
  },
  methods: {}
}
</script>

<style lang="less" scoped>
.box1 {
  padding-bottom: 10px;
}
</style>
