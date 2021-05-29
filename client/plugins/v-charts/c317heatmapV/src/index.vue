<!--button.vue-->
<template>
    <ve-heatmap :data="chartDataV"
                :settings="{...heatmapV}"
                :width="resize.width+'px'"
                :height="resize.height+'px'">
    </ve-heatmap>
</template>

<script>
export default {
  name: "C317HeatmapV",
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
        columns: ['lat', 'lng'],
        rows: [
          {'lat': 120.14322240845, 'lng': 30.236064370321},
          {'lat': 120.14301682797, 'lng': 30.236035316745},
          {'lat': 120.14138577045, 'lng': 30.236113748704},
          {'lat': 120.1400398833, 'lng': 30.235973050702},
          {'lat': 120.13893453465, 'lng': 30.23517220446},
          {'lat': 120.1382899739, 'lng': 30.234062922977},
          {'lat': 120.13265960629, 'lng': 30.231641351722},
          {'lat': 120.13170681763, 'lng': 30.229925745619},
          {'lat': 120.13119614803, 'lng': 30.228996846637},
          {'lat': 120.13023980134, 'lng': 30.228226570416}
        ]
      })
    },
    heatmapV:{
      type:Object,
      default:()=>({
        type:'bmap',
        key: 'oBvDtR6nzWtVchkY4cLHtnah1VVZQKRK',
        v: '3.0',
        bmap: {
          center: [120.14322240845, 30.236064370321],
          zoom: 14,
          roam: true,
          mapStyleV2: {
            styleId: '38e07b3839299a908926696ebfe153c3'
          }
        },
        pointSize:10,
        blurSize:5,
        heatColor:['#ff4500', '#ff8c00', '#ffd700', '#90ee90',]
      })
    }
  }
};
</script>
