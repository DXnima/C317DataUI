<template>
    <ve-wordcloud :data="chartDataV"
                  :extend="{title:titleV}"
                  :width="resize.width+'px'"
                  :height="resize.height+'px'"
                  :settings="{...wordcloudV}"
    ></ve-wordcloud>
</template>

<script>
export default {
  name: "C317WordcloudV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 380,
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
        columns: ['word', 'count'],
        rows: getRows()
      })
    },
    wordcloudV:{
      type:Object,
      default:()=>({
        sizeMin:12,
        sizeMax	:60,
        shape:'circle',
        color:['#c23531','#2f4554', '#61a0a8', '#d48265',
               '#91c7ae','#a2ffc4', '#ca8622', '#bda29a',
               '#ff4500', '#ff8c00', '#ffd700', '#90ee90',
               '#00ced1', '#1e90ff', '#c71585', 'rgba(255, 69, 0, 0.68)',
               'hsla(209, 100%, 56%, 0.73)', '#c7158577'
        ]
      })
    },

  }
};
function getRows () {
  return [{
    'word': 'visualMap',
    'count': 22199
  }, {
    'word': 'continuous',
    'count': 10288
  }, {
    'word': 'contoller',
    'count': 620
  }, {
    'word': 'series',
    'count': 274470
  }, {
    'word': 'gauge',
    'count': 12311
  }, {
    'word': 'detail',
    'count': 1206
  }, {
    'word': 'piecewise',
    'count': 4885
  }, {
    'word': 'textStyle',
    'count': 32294
  }, {
    'word': 'markPoint',
    'count': 18574
  }, {
    'word': 'pie',
    'count': 38929
  }, {
    'word': 'roseType',
    'count': 969
  }, {
    'word': 'label',
    'count': 37517
  }, {
    'word': 'emphasis',
    'count': 12053
  }, {
    'word': 'yAxis',
    'count': 57299
  }, {
    'word': 'name',
    'count': 15418
  }, {
    'word': 'type',
    'count': 22905
  }, {
    'word': 'gridIndex',
    'count': 5146
  }, {
    'word': 'normal',
    'count': 49487
  }, {
    'word': 'itemStyle',
    'count': 33837
  }, {
    'word': 'min',
    'count': 4500
  }, {
    'word': 'silent',
    'count': 5744
  }, {
    'word': 'animation',
    'count': 4840
  }, {
    'word': 'offsetCenter',
    'count': 232
  }, {
    'word': 'inverse',
    'count': 3706
  }, {
    'word': 'borderColor',
    'count': 4812
  }, {
    'word': 'markLine',
    'count': 16578
  }, {
    'word': 'line',
    'count': 76970
  }, {
    'word': 'radiusAxis',
    'count': 6704
  }, {
    'word': 'radar',
    'count': 15964
  }, {
    'word': 'data',
    'count': 60679
  }, {
    'word': 'dataZoom',
    'count': 24347
  }, {
    'word': 'tooltip',
    'count': 43420
  }, {
    'word': 'toolbox',
    'count': 25222
  }, {
    'word': 'geo',
    'count': 16904
  }, {
    'word': 'parallelAxis',
    'count': 4029
  }]
}
</script>
