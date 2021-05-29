<template>
    <ve-pie :data="chartDataV"
            :width="resize.width+'px'"
            :height="resize.height+'px'"
            :extend="{title:titleV}"
            :colors="colorD"
            :settings="{...commonV,...pie_ringV,...labelLineV,...labelV}"
    ></ve-pie>
</template>

<script>
export default {
  name: "C317PieV",
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
        dataType: 'percent'
      })
    },
    pie_ringV:{
      type:Object,
      default:()=>({
        legendLimit:	500,
        selectedMode:	false,
        hoverAnimation:true,
        radius:	100,
        offsetY	:154,
        roseType:'',
        limitShowNum:	6
      })
    },
    labelV:{
      type:Object,
      default:()=>({
        label:{
          show:false,
          position: 'outside',
          color:'#000000',
          fontSize:12,
          fontStyle:'normal',
          fontWeight:'normal',
        }

      })
    },
    labelLineV:{
      type:Object,
      default:()=>({
        labelLine:{
          show:true,
          length:10,
          length2:10,
          lineStyle:{
            color :"#000",
            width:1,
            type:'solid',
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
