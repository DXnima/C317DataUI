<template>
    <ve-sankey :data="chartDataV"
               :extend="{title:titleV}"
               :colors="colorD"
               :settings="{...commonV,...sankeyV,...lineStyleV,...labelV}"
               :width="resize.width+'px'"
               :height="resize.height+'px'"
    ></ve-sankey>
</template>

<script>
export default {
  name: "C317SankeyV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 400,
        width: 430
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
        columns: ['页面', '访问量'],
        rows: [
          {'页面': '首页', '访问量': 100000},
          {'页面': '列表页a', '访问量': 20000},
          {'页面': '列表页b', '访问量': 80000},
          {'页面': '内容页a-1', '访问量': 10000},
          {'页面': '内容页a-2', '访问量': 10000},
          {'页面': '内容页b-1', '访问量': 60000},
          {'页面': '内容页b-2', '访问量': 20000}
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['页面'],
        metrics:['页面', '访问量'],
        digit:2,
        dataType:'normal'
      })
    },
    sankeyV:{
      type:Object,
      default:()=>({
        links: [
          { source: '首页', target: '列表页a', value: 0.5 },
          { source: '首页', target: '列表页b', value: 0.5 },
          { source: '列表页a', target: '内容页a-1', value: 0.1 },
          { source: '列表页a', target: '内容页a-2', value: 0.4 },
          { source: '列表页b', target: '内容页b-1', value: 0.2 },
          { source: '列表页b', target: '内容页b-2', value: 0.3 }
        ]
      })
    },
    lineStyleV:{
      type:Object,
      default:()=>({
        lineStyle:{
          color :"rgba(165,165,165,0.4)",
          width:1,
          type :'solid',
          shadowColor: 'rgba(0, 0, 0, 0.2)',
          shadowBlur: 10,
          shadowOffsetX:1,
          shadowOffsetY:1,
          opacity : 1
        }
      })
    },
    labelV:{
      type:Object,
      default:()=>({
        label:{
          show:true,
          position: 'outside',
          color:'#000000',
          fontSize:12,
          fontStyle:'normal',
          fontWeight:'normal'
        }
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
