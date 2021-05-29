<template>
    <ve-radar :data="chartDataV"
              :width="resize.width+'px'"
              :height="resize.height+'px'"
              :extend="{title:titleV}"
              :colors="colorD"
              :settings="{...commonV,...radarV,...labelV}"
    ></ve-radar>
</template>
<script>
export default {
  name: "C317RadarV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 360,
        width: 400
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
        columns: ['日期', '访问用户', '下单用户', '下单率'],
        rows: [
          { '日期': '1/1', '访问用户': 1393, '下单用户': 1093, '下单率': 0.32 },
          { '日期': '1/2', '访问用户': 3530, '下单用户': 3230, '下单率': 0.26 },
          { '日期': '1/3', '访问用户': 2923, '下单用户': 2623, '下单率': 0.76 },
          { '日期': '1/4', '访问用户': 1723, '下单用户': 1423, '下单率': 0.49 },
          { '日期': '1/5', '访问用户': 3792, '下单用户': 3492, '下单率': 0.323 },
          { '日期': '1/6', '访问用户': 4593, '下单用户': 4293, '下单率': 0.78 }
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['日期'],
        metrics:['访问用户', '下单用户', '下单率'],
        digit:2,
        dataType:'normal'
      })
    },

    // lineStyleV:{
    //   type:Object,
    //   default:()=>({
    //     lineStyle:{
    //       color :"#000",
    //       width:1,
    //       type :'solid',
    //       shadowColor: 'rgba(0, 0, 0, 0.5)',
    //       shadowBlur: 10,
    //       shadowOffsetX:1,
    //       shadowOffsetY:1,
    //       opacity : 1
    //     }
    //   })
    // },
    radarV:{
      type:Object,
      default:()=>({
        areaStyle:{
          color :"rgba(0, 0, 0, 0.01)",
          shadowColor: 'rgba(0, 0, 0, 0.5)',
          shadowBlur: 10,
          shadowOffsetX:1,
          shadowOffsetY:1,
          opacity : 1}

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
    colorD:{
      type:Array,
      default:()=>(['#c23531','#2f4554', '#61a0a8',
        '#d48265', '#91c7ae','#749f83',
        '#ca8622', '#bda29a','#6e7074',
        '#546570', '#c4ccd3'])
    },
  },

};
</script>
