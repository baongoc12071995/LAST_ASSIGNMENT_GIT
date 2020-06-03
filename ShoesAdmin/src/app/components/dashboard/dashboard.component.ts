import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { ThongKeService } from '../../services/thongke.service';
import { Top10Products } from '../../models/top10Products';
import { SumOfMoneyInMonth } from '../../models/sumOfMoneyInMonth';
import { SumLoaiGiayByMonthAndYear } from '../../models/SumLoaiGiayByMonthAndYear';
import { LoaigiayService } from '../../services/loaigiay.service';
import { LoaiGiay } from '../../models/loaiGiay';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css'],
  providers: [ThongKeService, LoaigiayService]
})
export class DashboardComponent implements OnInit {




  currentMonth = new Date().getMonth() + 1;
  currentYear = new Date().getFullYear();

  dataDB: Top10Products[] = [];
  data1 = [];
  thangOfChart1: number;
  namOfChart1: number;
  monthSelected: any;
  yearSelected: any;

  _loaiGiayInMonth: SumLoaiGiayByMonthAndYear[] = [];
  data2 = [];
  thangOfChart2: number;
  namOfChart2: number;
  monthSelected2: any;
  yearSelected2: any;

  _loaiGiayInYear: SumOfMoneyInMonth[] = [];
  data3 = [];
  namOfChart3: number;
  loaiGiayOfChart3: string;
  yearSelected3: any;
  loaiGiaySelected3: any;

  _sumOfMoneyInMonth: SumOfMoneyInMonth[] = [];
  data4 = [];
  namOfChart4: number;
  yearSelected4: any;

  // chart-1: Top 10 products
  id1 = 'chart1';
  width = '100%';
  height = 400;
  type = 'bar3d';
  dataFormat = 'json';
  dataSource1 = {
    "chart": {
      "caption": "Poly's Shop",
      "subCaption": "",
      "yAxisName": "Doanh thu (VNĐ)",
      "numberSuffix": "VNĐ",
      "paletteColors": "#0075c2",
      "bgColor": "#ffffff",
      "showBorder": "0",
      "showCanvasBorder": "0",
      "usePlotGradientColor": "0",
      "plotBorderAlpha": "10",
      "placeValuesInside": "1",
      "valueFontColor": "#ffffff",
      "showAxisLines": "1",
      "axisLineAlpha": "25",
      "divLineAlpha": "10",
      "alignCaptionWithCanvas": "0",
      "showAlternateVGridColor": "0",
      "captionFontSize": "14",
      "subcaptionFontSize": "14",
      "subcaptionFontBold": "0",
      "toolTipColor": "#ffffff",
      "toolTipBorderThickness": "0",
      "toolTipBgColor": "#000000",
      "toolTipBgAlpha": "80",
      "toolTipBorderRadius": "2",
      "toolTipPadding": "5"
    },
    "data": this.data1
  }
  // chart-2: Loai giay trong thang
  id2 = 'chart2';
  type2 = 'doughnut3D';
  dataSource2 = {
    "chart": {
      "caption": "Poly's Shop",
      "subCaption": "",
      "numberSuffix": "VNĐ",
      "showBorder": "0",
      "use3DLighting": "0",
      "enableSmartLabels": "0",
      "startingAngle": "310",
      "showLabels": "0",
      "showPercentValues": "0",
      "showLegend": "1",
      "defaultCenterLabel": "Total revenue: $64.08K",
      "centerLabel": "Revenue from label: value",
      "centerLabelBold": "1",
      "showTooltip": "0",
      "decimals": "0",
      "useDataPlotColorForLabels": "1",
      "theme": "fint"
    },
    "data": this.data2
  }
  // chart-3: Loai giay trong nam
  id3 = 'chart3';
  type3 = 'column3D';
  dataSource3 = {
    "chart": {
      "caption": "Poly's Shop",
      "subCaption": "",
      "xAxisName": "Tháng",
      "yAxisName": "Doanh thu (VNĐ)",
      "numberSuffix": "VNĐ",
      "paletteColors": "#2980b9,#f39c12",
      "bgColor": "#ffffff",
      "showBorder": "0",
      "showCanvasBorder": "0",
      "usePlotGradientColor": "0",
      "plotBorderAlpha": "10",
      "placeValuesInside": "1",
      "valueFontColor": "#0000FF",
      "showAxisLines": "1",
      "axisLineAlpha": "25",
      "divLineAlpha": "10",
      "alignCaptionWithCanvas": "0",
      "showAlternateVGridColor": "0",
      "captionFontSize": "14",
      "subcaptionFontSize": "14",
      "subcaptionFontBold": "0",
      "toolTipColor": "#ffffff",
      "toolTipBorderThickness": "0",
      "toolTipBgColor": "#000000",
      "toolTipBgAlpha": "80",
      "toolTipBorderRadius": "2",
      "toolTipPadding": "5"
    },
    "data": this.data3
  }
  // chart-4: Doanh thu trong nam
  id4 = 'chart4';
  dataSource4 = {
    "chart": {
      "caption": "Poly's Shop",
      "subCaption": "",
      "xAxisName": "Tháng",
      "yAxisName": "Doanh thu (VNĐ)",
      "numberSuffix": "VNĐ",
      "paletteColors": "#e84118,#44bd32",
      "bgColor": "#ffffff",
      "showBorder": "0",
      "showCanvasBorder": "0",
      "usePlotGradientColor": "0",
      "plotBorderAlpha": "10",
      "placeValuesInside": "1",
      "valueFontColor": "#0000FF",
      "showAxisLines": "1",
      "axisLineAlpha": "25",
      "divLineAlpha": "10",
      "alignCaptionWithCanvas": "0",
      "showAlternateVGridColor": "0",
      "captionFontSize": "14",
      "subcaptionFontSize": "14",
      "subcaptionFontBold": "0",
      "toolTipColor": "#ffffff",
      "toolTipBorderThickness": "0",
      "toolTipBgColor": "#000000",
      "toolTipBgAlpha": "80",
      "toolTipBorderRadius": "2",
      "toolTipPadding": "5"
    },
    "data": this.data4
  }


  _listMonths = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ]

  _listYears = [
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022'
  ]

  _listGiay: LoaiGiay[] = [];

  constructor(private http: Http, private thongKeService: ThongKeService,
    private loaiGiayService: LoaigiayService) {

  }

  ngOnInit() {
    this.getTop10(this.currentMonth, this.currentYear);
    this.getLoaiGiayInMonth(this.currentMonth, this.currentYear);
    this.getLoaiGiayInYear('Adidas', this.currentYear);
    this.getSumOfMoney(this.currentYear);
    this.getLoaiGiay();
  }

  //chart-1
  getTop10(month: any, year: any) {

    if (month != 0 && year != 0) {
      this.thongKeService.getTop10(month, year).subscribe(result => {
        this.data1 = [];
        this.dataDB = result;
        this.thangOfChart1 = month;
        this.namOfChart1 = year;

        this.monthSelected = this.thangOfChart1;
        this.yearSelected = this.namOfChart1;

        if (this.dataDB.length == 0) {
          this.dataSource1.chart.subCaption = 'Không có sản phẩm được bán trong tháng ' + this.thangOfChart1 + ' năm ' + this.namOfChart1;
          for (let i = 0; i < 10; i++) {
            let object = { 'label': '', 'value': 0 };
            this.data1.push(object);
          }
        } else {
          this.dataSource1.chart.subCaption = 'Top 10 sản phẩm bán chạy trong tháng ' + this.thangOfChart1 + ' năm ' + this.namOfChart1;
          for (let i = 0; i < this.dataDB.length; i++) {
            let object = { 'label': '', 'value': '' };
            object.label = this.dataDB[i].tenSanPham;
            object.value = this.dataDB[i].tongTien.toString();
            this.data1.push(object);
          }
        }
        this.dataSource1.data = this.data1;
      },
        error => console.error('Error: ' + error)
      );
    } else {
      this.dataSource1.chart.subCaption = '';
      this.dataSource1.data = [];
    }
  }

  //chart-2
  getLoaiGiayInMonth(month: any, year: any) {
    if (month != 0 && year != 0) {
      this.thongKeService.getLoaiGiayByMonthAndYear(month, year).subscribe(result => {
        this.data2 = [];
        this._loaiGiayInMonth = result;
        this.thangOfChart2 = month;
        this.namOfChart2 = year;

        this.monthSelected2 = this.thangOfChart2;
        this.yearSelected2 = this.namOfChart2;

        if (this._loaiGiayInMonth.length == 0) {
          //  
        } else {
          this.dataSource2.chart.subCaption = 'Doanh thu trong tháng ' + this.thangOfChart2 + ' năm ' + this.namOfChart2;
          for (let i = 0; i < this._loaiGiayInMonth.length; i++) {
            let object = { 'label': '', 'value': '' };
            object.label = this._loaiGiayInMonth[i].tenLoai;
            object.value = this._loaiGiayInMonth[i].tongTien.toString();
            this.data2.push(object);
          }
        }
        this.dataSource2.data = this.data2;
      },
        error => console.error('Error: ' + error)
      )
    } else {
      this.dataSource2.chart.subCaption = '';
      this.dataSource2.data = [];
    }

  }

  //chart-3
  getLoaiGiayInYear(cate: any, year: any) {
    if (cate != "none" && year != 0) {
      this.thongKeService.getLoaiGiayByMonthInYear(cate, year).subscribe(result => {
        this.data3 = [];
        this._loaiGiayInYear = result;
        this.namOfChart3 = year;
        this.loaiGiayOfChart3 = cate;

        this.loaiGiaySelected3 = this.loaiGiayOfChart3;
        this.yearSelected3 = this.namOfChart3;

        this.dataSource3.chart.subCaption = 'Doanh thu trong năm ' + this.namOfChart3 + ' của giày ' + this.loaiGiayOfChart3;
        for (let i = 0; i < this._loaiGiayInYear.length; i++) {
          let object = { 'label': '', 'value': '' };
          object.label = this._loaiGiayInYear[i].thang.toString();
          object.value = this._loaiGiayInYear[i].tongTien.toString();
          this.data3.push(object);
        }

        this.dataSource3.data = this.data3;
      },
        error => console.error('Error: ' + error)
      )
    } else {
      this.dataSource3.chart.subCaption = '';
      this.dataSource3.data = [];
    }

  }

  //chart-4
  getSumOfMoney(year: any) {
    if (this.yearSelected4 != 0) {
      this.thongKeService.getSumOfMoney(year).subscribe(result => {
        this.data4 = [];
        this._sumOfMoneyInMonth = result;
        this.namOfChart4 = year;
        this.yearSelected4 = this.namOfChart4;
        this.dataSource4.chart.subCaption = "Doanh thu trong năm " + this.namOfChart4;

        for (let i = 0; i < this._sumOfMoneyInMonth.length; i++) {
          let object = { 'label': '', 'value': '' };
          object.label = this._sumOfMoneyInMonth[i].thang.toString();
          object.value = this._sumOfMoneyInMonth[i].tongTien.toString();
          this.data4.push(object);
        }
        this.dataSource4.data = this.data4;
      },
        error => console.error('Error: ' + error)
      )
    } else {
      this.dataSource4.chart.subCaption = '';
      this.dataSource4.data = [];
    }

  }

  getLoaiGiay() {
    this.loaiGiayService.getLoaiGiay().subscribe(result => {
      this._listGiay = result;
    },
      error => console.error('Error: ' + this._listGiay))
  }

  findTop10() {
    this.getTop10(this.monthSelected, this.yearSelected);
  }

  findLoaiGiayInMonth() {
    this.getLoaiGiayInMonth(this.monthSelected2, this.yearSelected2);
  }

  findLoaiGiayInYear() {
    this.getLoaiGiayInYear(this.loaiGiaySelected3, this.yearSelected3);
  }
  findAnnualReport() {
    this.getSumOfMoney(this.yearSelected4);
  }
}
