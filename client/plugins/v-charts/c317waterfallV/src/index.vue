<template>
    <ve-waterfall :data="chartDataV"
                  :colors="colorD"
                  :width="resize.width+'px'"
                  :height="resize.height+'px'"
                  :settings="{...waterfallV}"
    ></ve-waterfall>
</template>

<script>
export default {
  name: "C317WaterfallV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 360,
        width: 380
      })
    },
    chartDataV: {
      type: Object,
      default: () => ({
        columns: ['活动', '时间'],
        rows: [
          { '活动': '吃饭', '时间': 4 },
          { '活动': '睡觉', '时间': 10 },
          { '活动': '打豆豆', '时间': 5 }
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['活动'],
        metrics:['时间'],
        digit:2,
        dataType:'normal'
      })
    },
    waterfallV:{
      type:Object,
      default:()=>({
        totalNum:24,
        totalName:'总时间',
        remainName:'剩余时间'
      })
    },
    colorD:{
      type:Array,
      default:()=>(['#c23531'])
    }
  }
};
</script>
