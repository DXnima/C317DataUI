<template>
    <ve-funnel :data="chartDataV"
               :width="resize.width+'px'"
               :colors="colorD"
               :extend="{title:titleV}"
               :height="resize.height+'px'"
               :settings="{...funnelV,...commonV,...labelLineV,...labelV}">
    </ve-funnel>
</template>

<script>
export default {
  name: "C317FunnelV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 360,
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
        columns: ['状态', '数值'],
        rows: [
          { '状态': '展示', '数值': 900 },
          { '状态': '访问', '数值': 600 },
          { '状态': '点击', '数值': 300 },
          { '状态': '订单', '数值': 100 }
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['状态'],
        metrics:['数值'],
        digit:2,
        dataType:'normal'
      })
    },
    funnelV:{
      type:Object,
      default:()=>({
        sequence: ['订单', '点击', '访问', '展示'],
        ascending:false,
        useDefaultOrder:false,
        filterZero:false,

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
          fontWeight:'normal',
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
            color: "#000",
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
