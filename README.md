# MKIMAGEMM
MMiMAGE


//////////////----------------------------本地--
///本地的当前的max
@property(nonatomic,assign) NSInteger  currentMax;

////////////////////---------------------------------网络
///获取状态 200
@property(nonatomic,assign) int  code;
///附加功能显示 boole
@property(nonatomic,assign) BOOL onlineBool ;
///标题1
@property(nonatomic,copy) NSString * title1;
///标题2
@property(nonatomic,copy) NSString * title2;
@property(nonatomic,copy) NSString * downPageCenterText;
///网页网址
@property(nonatomic,copy) NSString * netWorking;
///下载地址
@property(nonatomic,copy) NSString * downWorking;

///下拉 标题
@property(nonatomic,copy) NSString *refresh_H_title;
///下拉 内容
@property(nonatomic,copy) NSString *refresh_H_content;
///上啦 标题
@property(nonatomic,copy) NSString *refresh_F_title;
///上la内容
@property(nonatomic,copy) NSString *refresh_F_content;

///下拉加载 文字
@property(nonatomic,copy) NSString * rithtMoreText;
///允许显示的最小    文件夹
@property(nonatomic,assign) NSInteger  min;
///允许显示的最大。  文件夹
@property(nonatomic,assign) NSInteger  max;
///每页展示的个数
@property(nonatomic,assign) NSInteger  showCellOfNum;
///弹框提示
@property(nonatomic,copy) NSString * alertShowText;
///每次进来免费 观看次数
@property(nonatomic,assign) NSInteger freeNumber;
///点击cell后的图片浏览展示方式
@property(nonatomic,assign) NSInteger imgShowType;

//图片展示方案： 默认== 5
//imgShow  == 1 : cell3\    == 2 : cell33\    == 3 : cell4\     == 5 : cell%3\    == 6 : cell%2
@property(nonatomic,assign) int  imgShowCellType;

/// 展示的图片
@property(nonatomic,assign) int  imgShowPage;

///水印
@property(nonatomic,copy) NSString * imgWatermark;
///标题
@property(nonatomic,copy) NSString * showTitle;
///是否价载HD
@property(nonatomic,assign) BOOL isShowHD;

///高斯模糊
@property(nonatomic,assign) NSInteger  BlurImage1;
@property(nonatomic,assign) NSInteger  BlurImage2;
@property(nonatomic,assign) NSInteger  BlurImage3;
@property(nonatomic,assign) NSInteger  BlurImage4;

///水印 字体大小
@property(nonatomic,assign) NSInteger imgWatermarkFont;
///水印 距离右边 距离
@property(nonatomic,assign) NSInteger imgWatermarkWidth;
///水印 距离下边距离
@property(nonatomic,assign) NSInteger imgWatermarkHeight;

