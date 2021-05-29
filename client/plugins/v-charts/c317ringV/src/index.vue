<template>
    <ve-ring :data="chartDataV"
             :extend="{title:titleV}"
             :colors="colorD"
             :width="resize.width+'px'"
             :height="resize.height+'px'"
             :settings="{...commonV,...labelV,...labelLineV}"
    ></ve-ring>
</template>

<script>
export default {
  name: "C317RingV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 340,
        width: 380
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
        columns: ['日期', '访问用户'],
        rows: [
          { '日期': '1/1', '访问用户': 1393 },
          { '日期': '1/2', '访问用户': 3530 },
          { '日期': '1/3', '访问用户': 2923 },
          { '日期': '1/4', '访问用户': 1723 },
          { '日期': '1/5', '访问用户': 3792 },
          { '日期': '1/6', '访问用户': 4593 }
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['日期'],
        metrics:['访问用户'],
        digit:2,
        dataType:'normal'
      })
    },
    labelV:{
      type:Object,
      default:()=>({
        label:{
          show:true,
          position: 'outside',
          color:'#000000',
          fontStyle:'normal',
          fontWeight:'normal',
          fontSize:12
        }
      })
    },
    labelLineV:{
      type:Object,
      default:()=>({
        labelLine: {
          show: true,
          length: 10,
          length2: 10,
          lineStyle: {
            color: "#000000",
            width: 1,
            type: 'solid',
          }
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
