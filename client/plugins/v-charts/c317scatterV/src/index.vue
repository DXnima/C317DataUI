<template>
    <ve-scatter :data="chartDataV"
                :extend="{title:titleV}"
                :colors="colorD"
                :width="resize.width+'px'"
                :height="resize.height+'px'"
                :settings="{...commonV,...scatterV}"
    ></ve-scatter>
</template>

<script>
export default {
  name: "C317ScatterV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 350,
        width: 480
      })
    },
    titleV: {
      type: Object,
      default: () => ({
        text: "标题",
        x: "middle",
        y: "bottom",
        textAlign: "center",
        textStyle: {
          color:'#333',
          fontSize: 12,
          fontWeight:'normal'
        }
      }),
    },
    chartDataV: {
      type: Object,
      default: () => ({
        columns: ['日期', '访问用户', '下单用户', '年龄'],
        rows: [
          { '日期': '1/1', '访问用户': 123, '年龄': 3, '下单用户': 1244 },
          { '日期': '1/2', '访问用户': 1223, '年龄': 6, '下单用户': 2344 },
          { '日期': '1/3', '访问用户': 7123, '年龄': 9, '下单用户': 3245 },
          { '日期': '1/4', '访问用户': 4123, '年龄': 12, '下单用户': 4355 },
          { '日期': '1/5', '访问用户': 3123, '年龄': 15, '下单用户': 4564 },
          { '日期': '1/6', '访问用户': 2323, '年龄': 20, '下单用户': 6537 }
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['日期'],
        metrics:['访问用户', '下单用户','年龄'],
        digit:2,
        dataType:'normal'
      })
    },
    scatterV:{
      type:Object,
      default:()=>({
        tooltipTrigger: 'axis',//	提示框的触发方式		可选值: item, axis
        axisVisible:true,//	是否显示坐标轴		-
        symbolSizeMax:50,//	气泡最大值		默认为50
        symbol:'circle',//	标记的图形		内容参考文档
        symbolSize:0,//	标记的大小		内容参考文档
        symbolRotate:0,//	标记的旋转角度		内容参考文档
        symbolOffset: [0, 0],//	标记相对于原本位置的偏移		内容参考文档
        scale:false	//是否是脱离 0 值比例		-
      })
    },
    colorD:{
      type:Array,
      default:()=>(['#c23531','#2f4554', '#61a0a8',
        '#d48265', '#91c7ae','#749f83',
        '#ca8622', '#bda29a','#6e7074',
        '#546570', '#c4ccd3'])
    },
  }
};
</script>
