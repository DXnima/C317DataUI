<template>
    <ve-histogram :data="chartDataV"
                  :width="resize.width+'px'"
                  :colors="colorD"
                  :extend="{title:titleV}"
                  :height="resize.height+'px'"
                  :settings="{...commonV,...xyConfigV,...line_column_barV}"
    >
    </ve-histogram>
</template>

<script>
export default {
  name: "C317HistogramV",
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
        columns: ['日期', '访问用户', '下单用户', '下单率'],
        rows: [
          {'日期': '1/1', '访问用户': 1393, '下单用户': 1093, '下单率': 0.32},
          {'日期': '1/2', '访问用户': 3530, '下单用户': 3230, '下单率': 0.26},
          {'日期': '1/3', '访问用户': 2923, '下单用户': 2623, '下单率': 0.76},
          {'日期': '1/4', '访问用户': 1723, '下单用户': 1423, '下单率': 0.49},
          {'日期': '1/5', '访问用户': 3792, '下单用户': 3492, '下单率': 0.323},
          {'日期': '1/6', '访问用户': 4593, '下单用户': 4293, '下单率': 0.78}
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['日期'],
        metrics:['访问用户', '下单用户'],
        digit:2,
        dataType:'normal'
      })
    },
    xyConfigV:{
      type:Object,
      default:()=>({
        xAxisType:'category',
        xAxisName:['x标题'],
        yAxisType: ['KMB', 'percent'],
        yAxisName:['y标题1', 'y标题2'],
        min:[0, 0],
        max:[0, 0],

      })
    },
    line_column_barV:{
      type:Object,
      default:()=>({
        axisSite: { left:['访问用户', '下单用户'],right: ['下单率'] },
        area:false,
        scale:[false, false],
        opacity:1//透明度
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
