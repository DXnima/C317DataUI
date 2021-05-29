<template>
    <ve-map :data="chartDataV"
            :width="resize.width+'px'"
            :height="resize.height+'px'"
            :extend="{title:titleV}"
            :settings="{...commonV,...mapV}"
            :colors="colorD"
    ></ve-map>
</template>

<script>
export default {
  name: "C317MapV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 380,
        width: 500
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
        columns: ['位置', '税收', '人口', '面积'],
        rows: [
          { '位置': '吉林', '税收': 123, '人口': 123, '面积': 92134 },
          { '位置': '北京', '税收': 1223, '人口': 2123, '面积': 29234 },
          { '位置': '上海', '税收': 2123, '人口': 1243, '面积': 94234 },
          { '位置': '浙江', '税收': 4123, '人口': 5123, '面积': 29234 }
        ]
      })
    },
    commonV:{
      type:Object,
      default:()=>({
        dimension: '位置',
        metrics:['人口', '面积'],
        digit:2,
        dataType:{
          '面积': 'KMB'
        }
      })
    },
    mapV:{
      type:Object,
      default:()=>({
        selectData:false,
        zoom:1,
        center:[104.97, 37.71],
        roam:false,
        scaleLimit:{ min: 1, max: 1 },
        label: {
          show:false,
          position:'top',
          distance :5,
          color :"#111010",
          fontSize :12,
          align:'left',

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
