<!--button.vue-->
<template>
    <ve-heatmap :data="chartDataV"
                :settings="{...commonV,...heatmapV}"
                :width="resize.width+'px'"
                :height="resize.height+'px'">
    </ve-heatmap>
</template>

<script>
export default {
  name: "C317Heatmap1V",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 400,
        width: 480
      })
    },
    chartDataV: {
      type: Object,
      default: () => ({
        columns: ['时间', '地点', '人数'],
        rows: [
          {'时间': '星期一', '地点': '北京', '人数': 1000},
          {'时间': '星期二', '地点': '上海', '人数': 400},
          {'时间': '星期三', '地点': '杭州', '人数': 800},
          {'时间': '星期二', '地点': '深圳', '人数': 200},
          {'时间': '星期三', '地点': '长春', '人数': 100},
          {'时间': '星期五', '地点': '南京', '人数': 300},
          {'时间': '星期四', '地点': '江苏', '人数': 800},
          {'时间': '星期一', '地点': '北京', '人数': 700},
          {'时间': '星期三', '地点': '上海', '人数': 300},
          {'时间': '星期二', '地点': '杭州', '人数': 500}
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['时间'],
        metrics:['地点', '人数'],
        digit:2,
        dataType:'normal'
      })
    },
    heatmapV:{
      type:Object,
      default:()=>({
        type:'cartesian',
        pointSize:10,
        blurSize:5,
        heatColor:['#ff4500', '#ff8c00', '#ffd700', '#90ee90',]
      })
    }
  }
};
</script>
