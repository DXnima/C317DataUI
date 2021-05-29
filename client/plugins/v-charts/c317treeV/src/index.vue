<template>
    <ve-tree :data="chartData"
             :width="resize.width+'px'"
             :height="resize.height+'px'"
             :settings="{...tree_gaugeV}"
    ></ve-tree>
</template>

<script>
export default {
  name: "C317TreeV",
  props: {
    resize: {
      type: Object,
      default: () => ({
        height: 390,
        width: 530
      })
    },
    tree_gaugeV:{
      type:Object,
      default:()=>({
        seriesMap: {
          layout :'orthogonal',
          symbol : 'emptyCircle',
          symbolSize : 7
        }
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
  },
  data () {
    return {
      chartData: {
        columns: ['name', 'value'],
        rows: [
          {
            name: 'tree1',
            value: [{
              name: 'f',
              value: 1,
              link: 'https://ele.me',
              children: [
                {
                  name: 'a',
                  value: 1,
                  link: 'https://ele.me',
                  children: [
                    {
                      name: 'a-a',
                      link: 'https://ele.me',
                      value: 2
                    },
                    {
                      name: 'a-b',
                      link: 'https://ele.me',
                      value: 2
                    }
                  ]
                },
                {
                  name: 'b',
                  value: 1,
                  link: 'https://ele.me',
                  children: [
                    {
                      name: 'b-a',
                      link: 'https://ele.me',
                      value: 2
                    },
                    {
                      name: 'b-b',
                      link: 'https://ele.me',
                      value: 2
                    }
                  ]
                },
                {
                  name: 'c',
                  value: 3,
                  link: 'https://ele.me',
                  children: [
                    {
                      name: 'c-a',
                      link: 'https://ele.me',
                      value: 4
                    },
                    {
                      name: 'c-b',
                      link: 'https://ele.me',
                      value: 2
                    }
                  ]
                },
                {
                  name: 'd',
                  value: 3,
                  link: 'https://ele.me',
                  children: [
                    {
                      name: 'd-a',
                      link: 'https://ele.me',
                      value: 4
                    },
                    {
                      name: 'd-b',
                      link: 'https://ele.me',
                      value: 2
                    }
                  ]
                }
              ]
            }]
          }
        ]
      }
    }
  }
}
</script>
