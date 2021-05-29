import Text from './basis/text'
import imageSrc from './basis/imageSrc'
import imageSrcList from './basis/imageSrcList'
import Url from './basis/url'
import musicSrc from './basis/musicSrc'
import Resize from './resize'
//添加v-charts 配置组件
import TitleV from './v-charts/titleV'
import ChartDataV from './v-charts/chartDataV.vue'
import CommonV from './v-charts/commonV.vue'
import XyConfigV from './v-charts/xyConfigV.vue'
import LabelMapV from './v-charts/labelMapV.vue'
import Line_column_barV from './v-charts/line_column_barV.vue'
import ScatterV from './v-charts/scatterV.vue'
import ItemStyleV from './v-charts/itemStyleV.vue'
import CandleV from './v-charts/candleV.vue'
import LabelV from './v-charts/labelV.vue'
import Pie_ringV from './v-charts/pie_ringV.vue'
import LabelLineV from './v-charts/labelLineV.vue'
import WaterfallV from './v-charts/waterfallV.vue'
import FunnelV from './v-charts/funnelV.vue'
import LineStyleV from './v-charts/lineStyleV.vue'
import RadarV from './v-charts/radarV.vue'
import Map_heatmapV from './v-charts/map_heatmapV.vue'
import MapV from './v-charts/mapV.vue'
import SankeyV from './v-charts/sankeyV.vue'
import HeatmapV from './v-charts/heatmapV.vue'
import GaugeV from './v-charts/gaugeV.vue'
import Tree_gaugeV from './v-charts/tree_gaugeV.vue'
import WordcloudV from './v-charts/wordcloudV.vue'
//dataV配置组件
import ColorD from "./dataV/colorD"
import DurD from "./dataV/durD"
import ReverseD from "./dataV/reverseD"
import ScanHaloDurD from './dataV/scan-halo-durD'
import TitleD from "./dataV/titleD"
import Scroll_boardD from "./dataV/scroll_boardD"
//d3Sankey配置
import D3Sankey from "./d3Sankey";
import ViewBox from "./viewBox";
//3dBar配置
import Map3D from "./map3D";
import Bar3D from "./bar3D";
//飞线配置
import BmapConfig from "./bmapConfig";
import LinesConfig from "./linesConfig";
import PointConfig from "./pointConfig";

export default {
	[Text.name]: Text,
	[imageSrc.name]: imageSrc,
	[Url.name]: Url,
	[musicSrc.name]: musicSrc,
	[imageSrcList.name]: imageSrcList,
	[Resize.name]: Resize,
	//v-chart配置组件
	[TitleV.name]: TitleV,
	[ChartDataV.name]: ChartDataV,
	[CommonV.name]: CommonV,
	[XyConfigV.name]: XyConfigV,
	[LabelMapV.name]: LabelMapV,
	[Line_column_barV.name]: Line_column_barV,
	[ScatterV.name]: ScatterV,
	[ItemStyleV.name]: ItemStyleV,
	[CandleV.name]: CandleV,
	[LabelV.name]: LabelV,
	[LabelLineV.name]: LabelLineV,
	[Pie_ringV.name]: Pie_ringV,
	[WaterfallV.name]: WaterfallV,
	[FunnelV.name]: FunnelV,
	[LineStyleV.name]: LineStyleV,
	[RadarV.name]: RadarV,
	[Map_heatmapV.name]: Map_heatmapV,
	[MapV.name]: MapV,
	[SankeyV.name]: SankeyV,
	[HeatmapV.name]: HeatmapV,
	[GaugeV.name]: GaugeV,
	[Tree_gaugeV.name]: Tree_gaugeV,
	[WordcloudV.name]: WordcloudV,
	//dataV配置组件
	[ColorD.name]: ColorD,
	[DurD.name]: DurD,
	[ReverseD.name]: ReverseD,
	[ScanHaloDurD.name]: ScanHaloDurD,
	[TitleD.name]: TitleD,
	[Scroll_boardD.name]: Scroll_boardD,
	//d3Sankey配置
	[D3Sankey.name]: D3Sankey,
	[ViewBox.name]: ViewBox,
	//3dBar配置
	[Map3D.name]: Map3D,
	[Bar3D.name]: Bar3D,
	//飞线配置
	[BmapConfig.name]: BmapConfig,
	[LinesConfig.name]: LinesConfig,
	[PointConfig.name]: PointConfig,
}
