<template>
    <ve-liquidfill :data="chartDataV"
                   :width="resize.width+'px'"
                   :height="resize.height+'px'"
    ></ve-liquidfill>
</template>

<script>
export default {
  name: "C317LiquidfillV", // 这个名字很重要，它就是未来的标签名
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 340,
        width: 380
      })
    },
    chartDataV: {
      type: Object,
      default: () => ({
        columns: ['city', 'percent'],
        rows: [{
          city: '上海',
          percent: 0.6
        }]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension:['日期'],//维度,默认columns第一项为维度
        metrics:['访问用户', '下单用户'],//指标默认columns第二项起为指标
        digit:2,//设置数据类型为percent时保留的位数默认为2
        dataType:'normal'//	数据类型		可选值: KMB, normal, percent
      })
    },

  }
};
</script>
