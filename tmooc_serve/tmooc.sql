SET NAMES UTF8;
DROP DATABASE IF EXISTS tmooc;
CREATE DATABASE tmooc CHARSET=UTF8;
USE tmooc;

/*轮播图片*/
CREATE TABLE img(
  id INT PRIMARY KEY AUTO_INCREMENT,
  iname VARCHAR(64)
);
/*添加数据*/
INSERT INTO img VALUES
(NULL,'img/index/531585F978164BDF845FE5A27361EBBB.png'),
(NULL,'img/index/B6AB6D014BAC40F1A354CB661BFD9EDE.png'),
(NULL,'img/index/B2371291A7CF432DBAE99F5AB6B6E903.png'),
(NULL,'img/index/2A3507B0F16646F4A03278D2DE73F7F2.png')

/*首页课程*/
CREATE TABLE course(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  price DECIMAL(7,2),
  pnum VARCHAR(12),
  img VARCHAR(64),
  href VARCHAR(64)
)
INSERT INTO course VALUES
(NULL,"Python趣味项目实操课（已结束）",0,"3,234人报名","img/index/FE366DE898C246BF9BEB5ED290CA2F01.png","details.html?id=1"),
(NULL,"玩转java已结束推荐观看java五天快速入门攻略",99,"525人购买","img/index/3BB2D0A3FC814FD0971D63E66652E68C.png","details.html?id=2"),
(NULL,"java五天快速入门攻略（限时免费）",159,"163人购买","img/index/07673F37EAD241AC9CEC34FF243FFFB0.png","details.html?id=3"),
(NULL,"发现杯赛项说明会（直播回看）",0,"817人报名","img/index/BB60D99E5EC6429694101D8A67DB555A.jpg","details.html?id=4"),
(NULL,"商业插画体验课—手绘Q版人物形象（回放）",0,"2,493人报名","img/index/0772D15394B14D81ACD0C7FFAB477122.png","details.html?id=5"),
(NULL,"商业插画零基础手绘教程",599,"1,774人报名","img/index/8D4204DFC45C40BCBF68150E442E1D18.png","details.html?id=6"),
(NULL,"AI智能系统",19,"895人报名","img/index/3BCE580FFCDB458CA3CFFAAFB12EBE92.png","details.html?id=7"),
(NULL,"SEM搜索引擎营销",599,"1,290人报名","img/index/34F62A1A69D14F4287E0C499E60C6213.png","details.html?id=8"),
(NULL,"PR基础特效集合",1,"2,075人报名","img/index/25D64D24BF544A2FB2FFD0FA328B70F0.png","details.html?id=9"),
(NULL,"一周上手小程序",1,"2,986人报名","img/index/B6C9118E3E604AC6BDA8A8F3DB2A981B.png","details.html?id=10"),
(NULL,"Python开发",0,"5,467人报名","img/index/6AC8CBD64A6146F7BB1C56E6A72F6F6E.jpg","details.html?id=11"),
(NULL,"大数据体验课",0,"2788人报名","img/index/B08EB37C0BBE417AA74ACEC21AE1202D.png","details.html?id=12"),
(NULL,"林妹妹说EXCEL",0,"2,312人报名","img/index/7A924FA4768745FAA4E5A2AD65FEE973.png","details.html?id=13"),
(NULL,"前端工程师提升课程：后台PHP语言学习",0,"2,447人报名","img/index/23B47E1BC4F9488089AA89F29461A06B.jpg","details.html?id=14"),
(NULL,"Photoshop",0,"9,342人报名","img/index/9525D7E969F541E89EBA3BA408E72768.png","details.html?id=15"),
(NULL,"商业插画培优课1812期",9800,"521人购买","img/index/15A8F7AABC6247A0930F3A2B860D1DD1.jpg","details.html?id=16"),
(NULL,"大数据培优课1812期",9800,"323人购买","img/index/4B687E4EC14343DCBA86637A18BD184D.jpg","details.html?id=17"),
(NULL,"微信小程序开发",2000,"487人购买","img/index/BBEDBF93737A49C58D8C5CB90595A8DA.png","details.html?id=18"),
(NULL,"HADOOP",2000,"324人购买","img/index/AA06FD15E6AB46BCB9348CCF301907B6.jpg","details.html?id=19"),
(NULL,"UED-交互设计",2000,"491人购买","img/index/10C32FCBE92E4EF49C4E7882829F221A.png","details.html?id=20")

/*免费课程*/
CREATE TABLE frees(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  price DECIMAL(7,2),
  pnum VARCHAR(12),
  img VARCHAR(64),
  href VARCHAR(64)
)
/*添加数据*/
INSERT INTO frees VALUES
(NULL,"林妹妹说PPT",0,"3,234人报名","img/free/C3BAC270CB5048339DD308A07B737816.png","details.html?id=1"),
(NULL,"林妹妹说PR",0,"1,397人报名","img/free/35ABB8E4C22047158920884F4AC47D43.png","details.html?id=2"),
(NULL,"林妹妹说WORD",0,"1,601人报名","img/free/9333D6FD2A1841F5A54B77FFB7415908.png","details.html?id=3"),
(NULL,"林妹妹说EXCEL",0,"3,234人报名","img/free/8346B440529A43E88242BB5299FBA065.png","details.html?id=4"),
(NULL,"软件测试理论基础",0,"1,370人报名","img/free/79E0C9EA5E3241748D7A545AB5C20FC9.png","details.html?id=5"),
(NULL,"PHP函数库",0,"958人报名","img/free/E986F927ED3542F5913E089B3B189327.png","details.html?id=6"),
(NULL,"PHP入门之数据库",0,"2,125人报名","img/free/9E69978B37AD42B59C9D61C899C2267B.png","details.html?id=7"),
(NULL,"PHP核心编程",0,"766人报名","img/free/ADBC8FF849B54964A852949738C0D30D.png","details.html?id=8"),
(NULL,"ACC之新秀会计",0,"1,353人报名","img/free/E4EFB73EFFD2491BABDB7C6B518FC4F8.png","details.html?id=9"),
(NULL,".NET之Web前端",0,"846人报名","img/free/B93C2B94E9AE4ABB8F626C1682FAEEF9.png","details.html?id=10"),
(NULL,".NET入门之ASP.NET MVC",0,"438人报名","img/free/0F1E23C4C43A4C6B9D145BD4F1ABDE48.png","details.html?id=11"),
(NULL,".NET之框架集",0,"687人报名","img/free/3FAE62C2E2B147E7BFB6934FE9ADBDB0.png","details.html?id=5"),
(NULL,".NET之面向对象",0,"575人报名","img/free/3C2C5269136E4AE4924FE987E7457969.png","details.html?id=5"),
(NULL,".NET之语言基础",0,"1,353人报名","img/free/B2F98A17ADA94B8E86BB57865C2A55F4.png","details.html?id=5"),
(NULL,"商业插画体验课—手绘Q版人物形象（回放）",0,"2,540人报名","img/free/C9852F6A3E634455BC9E7721780E7911.png","details.html?id=5"),
(NULL,"2018 Python 基础（已结束）",0,"9,850人报名","img/free/3D19CBBA23F14574B3AC32AEE900F05E.png","details.html?id=5"),
(NULL,"课程解读之UED",0,"1,089人报名","img/free/ACD72513339C46CEA270582ACDB6F64C.png","details.html?id=5"),
(NULL,"课程解读之WEB前端",0,"2,708人报名","img/free/43BF8C05EEBA450BA4DD7BD6B01FF777.png","details.html?id=5"),
(NULL,"课程解读之Andriod",0,"1,073人报名","img/free/5F5BFE5D54814206963F4621B0DD19CD.png","details.html?id=5"),
(NULL,"课程解读之UID",0,"2,422人报名","img/free/0257F490C7B7473CAC102621463C59E4.png","details.html?id=5"),
(NULL,"从零开始服务器构建",0,"541人报名","img/free/91260C8AC8454794ABED557B4B64B9D3.jpg","details.html?id=5"),
(NULL,"Java高手加薪课",0,"1,514人报名","img/free/BA95172766C648E694B2EB6298D0268D.png","details.html?id=5"),
(NULL,"课程解读之网络营销",0,"1,716人报名","img/free/AB2A1F27648843D598CE80DB7CBAF8EF.png","details.html?id=5"),
(NULL,"课程解读之软件测试",0,"1,530人报名","img/free/3C89B10083024D18B53CE6FDD050FF34.png","details.html?id=5"),
(NULL,"课程解读之嵌入式",0,"1,160人报名","img/free/F43A1D41A2594DE7875F27D17C3C4652.png","details.html?id=5"),
(NULL,"课程解读之大数据",0,"2,712人报名","img/free/4218B3941FBC4C03A0488F956EF414A2.png","details.html?id=5"),
(NULL,"课程解读之U3D",0,"1,889人报名","img/free/510E5703AA7D47A9B32370F884E0A8F1.png","details.html?id=5"),
(NULL,"课程解读之PHP",0,"708人报名","img/free/98304683E2C64817BF6B2AA991604C33.png","details.html?id=5"),
(NULL,"课程解读之Linux",0,"1,925人报名","img/free/8CAABEB7B0734E47BEB43711596476F9.png","details.html?id=5"),
(NULL,"课程解读之Java",0,"3,399人报名","img/free/76FF4FBDD8F24DB1814A439D490C1712.png","details.html?id=5"),
(NULL,"课程解读之C++",0,"1,441人报名","img/free/01627F3220C54D8BB55653B7D89403AB.png","details.html?id=5"),
(NULL,"淼哥职说—教你职场“前”规则",0,"2,959人报名","img/free/1E8112EA17054FBAABB965C915202686.png","details.html?id=5"),
(NULL,"Pygame之接球小游戏",0,"3,292人报名","img/free/18305CB6C4D344E5A196699330FD2B8E.png","details.html?id=5"),
(NULL,"中级会计职称",0,"665人报名","img/free/7A5B6D9B9F7F43239BE8FF2227003C32.png","details.html?id=5"),
(NULL,"初级会计职称",0,"1,106人报名","img/free/880B02EC5DD745F49324ADF726B3D09F.png","details.html?id=5"),
(NULL,"注册会计师",0,"655人报名","img/free/B56284A43EA84FA0AAA075FF4A343966.png","details.html?id=5"),
(NULL,"设计测试用例的方法",0,"1,098人报名","img/free/BDB18364ACEE4C348F9BED29D0541D5A.png","details.html?id=5"),
(NULL,"就业辅导之精准简历制作",0,"1,895人报名","img/free/2C58529ACB9A4B55A71A414779568A99.png","details.html?id=5"),
(NULL,"WEB全栈",0,"1,895人报名","img/free/FC759322588C48F1B6E116CB5B4E1E0B.png","details.html?id=5"),
(NULL,"MongoDB快速入门",0,"1,396人报名","img/free/25E9C02B0D3E49E686B28067DBF17C6A.png","details.html?id=5"),
(NULL,"前端开发框架",0,"2,358人报名","img/free/EAA4CA1D6AFE4BA5B9664AC6CE167092.png","details.html?id=5"),
(NULL,"ECMAScript",0,"690人报名","img/free/88E7B89CDBE14673BB36DA188EDCF90D.png","details.html?id=5"),
(NULL,"WEB前端之CSS3",0,"1,878人报名","img/free/EAFDECE78F1D43F1BE6A6CB98DD7030F.png","details.html?id=5"),
(NULL,"前端交互设计(UI Design)",0,"6,429人报名","img/free/5530901732D54F719B185DE7F93B7E74.png","details.html?id=5"),
(NULL,"Python开发",0,"6,282人报名","img/free/F5891730B12C4CB5BD76890564C1F7CF.png","details.html?id=5"),
(NULL,"windows系统",0,"3,585人报名","img/free/725FF658569243C78F204D0A8E9FF351.png","details.html?id=5"),
(NULL,"JAVA入门之语言基础",0,"6,458人报名","img/free/E0D0D4EA9C76444EAD309C613FF0EF62.png","details.html?id=5"),
(NULL,"JAVA入门之面向对象",0,"7,622人报名","img/free/473AE419EA1F4EF78FFC187F148832A1.png","details.html?id=5"),
(NULL,"JAVA入门之核心API",0,"2,837人报名","img/free/CE7116225714456F94CDF57C6C703FA0.png","details.html?id=5"),
(NULL,"JAVA入门之数据库",0,"1,961人报名","img/free/81F31F36968344D1A1245E64C83594D3.png","details.html?id=5"),
(NULL,"SPRING框架应用",0,"1,721人报名","img/free/C1F637D0A0AF4E8890D0580B3DC2B8F8.png","details.html?id=5"),
(NULL,"MYBATIS框架应用",0,"1,309人报名","img/free/77BCC46799C9425EB3FD2B7E89BC29B2.png","details.html?id=5"),
(NULL,"HIBERNATE框架应用",0,"767人报名","img/free/21693C71AF6747DB81F841120E55AF84.png","details.html?id=5"),
(NULL,"JAVA入门之信息安全",0,"882人报名","img/free/153C705936574D549D4749CE17A06A02.png","details.html?id=5"),
(NULL,"JAVA入门之代码调试",0,"1,355人报名","img/free/34BE07F7091042419E681728F9CE362F.png","details.html?id=5"),
(NULL,"IOS之测试课程",0,"444人报名","img/free/C6BA975E3466493084B75A7287589DC5.png","details.html?id=5"),
(NULL,"COCOS2D-X游戏开发",0,"1,394人报名","img/free/B4B5526B2F2449F5B81DB673B670E057.png","details.html?id=5"),
(NULL,"数据结构与算法",0,"848人报名","img/free/51775A68BE20458C81241E9017577FB6.png","details.html?id=5"),
(NULL,"Swift语言",0,"348人报名","img/free/209FD6901C1349C8815B8468B0C6AF1C.png","details.html?id=5"),
(NULL,"IOS入门之数据层及文件存储",0,"273人报名","img/free/B2E3303AB99C4AD78F4DF6C67FD70479.png","details.html?id=5"),
(NULL,"IOS入门之视图层",0,"270人报名","img/free/B8593FDF0B854A529A46E1A0E6C08830.png","details.html?id=5"),
(NULL,"IOS入门之控制器",0,"779人报名","img/free/14250FCFC5564B84BAADF1EECDDD130E.png","details.html?id=5"),
(NULL,"IOS入门之OC语言",0,"401人报名","img/free/2525D2DB83FA44659D901AA876EC270E.png","details.html?id=5"),
(NULL,"C++之数据结构",0,"1,091人报名","img/free/E5D8EC9315F846F69C5DE4956B2CCA21.png","details.html?id=5"),
(NULL,"C++入门之UNIX C",0,"1,260人报名","img/free/7E41DF01855F4F7BACC26EDE74DF0FE0.png","details.html?id=5"),
(NULL,"Android服务端技术",0,"385人报名","img/free/B2D08AD5368042C2995843CD390613D5.png","details.html?id=5"),
(NULL,"Android核心",0,"707人报名","img/free/7E72C6D964E94D44855760FDF4A50557.png","details.html?id=5"),
(NULL,"Android设计模式",0,"1,157人报名","img/free/0A0374EABD4340AF8A92A3D96F054931.png","details.html?id=5"),
(NULL,"Android之网络通信",0,"565人报名","img/free/3E65297CAFB641DF9F6FFD163C162B2A.png","details.html?id=5"),
(NULL,"Android之线程",0,"478人报名","img/free/5568D375BC3C4CCB9A28D9EF2DF907A8.png","details.html?id=5"),
(NULL,"Android四大组件",0,"475人报名","img/free/819CA18FC48348DCAC048068FDC6D553.png","details.html?id=5"),
(NULL,"Android基础",0,"879人报名","img/free/AD28E6DF694F4F3CB9F764FF768C87CE.png","details.html?id=5"),
(NULL,"Android之数据存储",0,"368人报名","img/free/814063718A8149948B233F4CA0B974D8.png","details.html?id=5"),
(NULL,"JAVA语言基础",0,"1,313人报名","img/free/95E2E8D383794EF2992B573D5C8F8DC9.png","details.html?id=5"),
(NULL,"Android开发环境",0,"707人报名","img/free/D03E73E4BCCF4A52BACF4387A990FAE5.png","details.html?id=5"),
(NULL,".NET之数据处理",0,"365人报名","img/free/4B7FD1F236A6433CB5B9141551C4D3B0.png","details.html?id=5"),
(NULL,"面向对象(OOP)",0,"849人报名","img/free/EACCD02606A847D7AB497F0014C4D095.png","details.html?id=5"),
(NULL,"计算机软件基础",0,"1,440人报名","img/free/015010FB71AF4E00905F591113492386.png","details.html?id=5"),
(NULL,"前端工程师提升课程：后台PHP语言学习",0,"2,637人报名","img/free/23B47E1BC4F9488089AA89F29461A06B.jpg","details.html?id=5"),
(NULL,"大数据体验课",0,"3,232人报名","img/free/B08EB37C0BBE417AA74ACEC21AE1202D.png","details.html?id=5"),
(NULL,"Photoshop",0,"10,681人报名","img/free/26EA97FA098C4E8D807C5A9C05C1421F.png","details.html?id=5"),
(NULL,"afm高级财务经理实操",0,"2,439人报名","img/free/4611B28F43274E81A559D4FE8F63D2E1.png","details.html?id=5"),
(NULL,"创业公司总经理：做好网络营销必须清楚这些事",0,"1,270人报名","img/free/02C095D7C9954BEB865FDA236B31693F.png","details.html?id=5"),
(NULL,"2018数据结构与算法",0,"2,946人报名","img/free/4A8A24641C114AB589F6EA830E0485AC.png","details.html?id=5"),
(NULL,"十年行业经验大咖教你更好的“营销”自己",0,"1,874人报名","img/free/7C702D07AD2D4CDDAAD706BEF5F49368.png","details.html?id=5"),
(NULL,"嵌入式入门之智能硬件",0,"1,445人报名","img/free/D32690F5FEAA43E69C6D2F9B58857B1C.png","details.html?id=5")

/*直播课程*/
CREATE TABLE lives(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  price DECIMAL(7,2),
  pnum VARCHAR(12),
  img VARCHAR(64),
  href VARCHAR(64)
)
/*添加数据*/
INSERT INTO lives VALUES
(NULL,"商业插画如何运用到公司的品牌产品设计中（可回放）",0,"3,403人报名","img/live/E4870C7CE360497DAFC404C765B713C9.png","details.html?id=4"),
(NULL,"手绘圣诞节海报-圣诞老人诞生记（可回放）",0,"2,238人报名","img/live/F429480D083E4EC499F25458F9DEC2F3.png","details.html?id=4"),
(NULL,"java五天快速入门攻略（限时免费）",0,"163人报名","img/live/E40E6AF3C0CA44309FB4C1CDF09C4590.png","details.html?id=4"),
(NULL,"玩转java（已结束推荐观看java五天快速入门攻略）",0,"525人报名","img/live/7FFD35156A1242C7B59C522402FB3E6C.png","details.html?id=4"),
(NULL,"发现杯赛项说明会（直播回看）",0,"886人报名","img/live/65FAB9A407D649ABA4A55DD04F22A426.jpg","details.html?id=4"),
(NULL,"网络营销小白如何让面试官“念念不忘”（已结束）",0,"1,500人报名","img/live/A643966D8EF9405397B1DB935E2D166D.png","details.html?id=4"),
(NULL,"腾讯设计师教你提高技能就职名企单位（已结束）",0,"1,619人报名","img/live/277E9B7E8EA244189FDF4840B4F8CAB2.png","details.html?id=4"),
(NULL,"资深设计总监教你掌握高效率的设计思维（已结束）",0,"1,289人报名","img/live/A47D33EDB10D49178B7C736F781F38BC.png","details.html?id=4"),
(NULL,"创业公司总经理：做好网络营销必须清楚这些事（已结束）",0,"1,012人报名","img/live/F781A063B901476EA2AFF14F4C4AF2A1.png","details.html?id=4"),
(NULL,"2018java面向对象第2期（已结束）",0,"3,280人报名","img/live/6C2B0FFC8B54468DBB91FFD7C4B4A3F0.png","details.html?id=4"),
(NULL,"Python趣味项目案例实操课（已结束）",0,"3,317人报名","img/live/FE366DE898C246BF9BEB5ED290CA2F01.png","details.html?id=4"),
(NULL,"商业插画体验课—手绘Q版人物形象（回放）",0,"2,582人报名","img/live/C9852F6A3E634455BC9E7721780E7911.png","details.html?id=4"),
(NULL,"人工智能与大数据（已结束）",0,"2,361人报名","img/live/35DCB44067D84D57A4A1D7B1FD7A552F.png","details.html?id=4"),
(NULL,"2018 Python 基础（已结束）",0,"9,876人报名","img/live/3D19CBBA23F14574B3AC32AEE900F05E.png","details.html?id=4"),
(NULL,"2018Java面向对象（已结束）",0,"3,925人报名","img/live/DC0806996E4E4E5A860C8A6A63E1D407.png","details.html?id=4"),
(NULL,"2018 Python基础第4期（已结束）",0,"3,696人报名","img/live/5B28F5E39F2B4B28A42F31C970457603.png","details.html?id=4"),
(NULL,"Java培优—门店管理系统（已结束）",0,"4,035人报名","img/live/24CD7D8F51AA42F4ACD13D4834EF67EA.png","details.html?id=4")

/*会员课程*/
CREATE TABLE vips(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  price DECIMAL(7,2),
  pnum VARCHAR(12),
  img VARCHAR(64),
  href VARCHAR(64)
)
/*添加数据*/
INSERT INTO vips VALUES
(NULL,"linux系统移植",19,"499人报名","img/vip/33ADECC90BDF41EE887D4B3A8D15CABE.png","details.html?id=3"),
(NULL,"Unity基础概念",19,"658人报名","img/vip/003A890AC03341D896E066BAC28111AF.png","details.html?id=3"),
(NULL,"Unity物理引擎",29,"393人报名","img/vip/CF0EFEADC6DF4958B861C59926C2830C.png","details.html?id=3"),
(NULL,"Unity3D之C#基础",19,"341人报名","img/vip/E20B19C959B4442481417549E8969F19.png","details.html?id=3"),
(NULL,"Unity3D入门之脚本开发",39,"412人报名","img/vip/354EE919ED8544C68EDE42E9CF4F84B8.png","details.html?id=3"),
(NULL,"UGUI",19,"1,172人报名","img/vip/C28974DFB8B34151B3211784462B8C58.png","details.html?id=3"),
(NULL,"Unity高级组件",39,"278人报名","img/vip/B6419EF39A5844C8A5BE7E4C5CEF1F40.png","details.html?id=3"),
(NULL,"NGUI",49,"878人报名","img/vip/04DA48EC46254D6A99381BF5440C160A.png","details.html?id=3"),
(NULL,"Unity3D之C#面向对象",29,"291人报名","img/vip/D63930B350DA4C0892470F170FF3C6C1.png","details.html?id=3"),
(NULL,"Unity3D入门之C#语言进阶",39,"282人报名","img/vip/7D3E5BA498A04FEA836081790C30F2B1.png","details.html?id=3"),
(NULL,"AI智能系统",19,"906人报名","img/vip/DDD70E804F39455A9F710FE3DC77C832.png","details.html?id=3"),
(NULL,"linux网络服务",99,"756人报名","img/vip/29FA9FDC39644C58AFFE2297276D862C.png","details.html?id=3"),
(NULL,"商业插画零基础手绘教程",599,"1,784人报名","img/vip/29FA9FDC39644C58AFFE2297276D862C.png","details.html?id=3"),
(NULL,"PR基础特效集合",1,"2,083人报名","img/vip/B9C2F95A282D4EAE9D2560EBB0F61207.png","details.html?id=3"),
(NULL,"一周上手小程序",1,"2,997人报名","img/vip/9314FC5334A640688BEEDB3FA0B3CDCD.png","details.html?id=3"),
(NULL,"SEM搜索引擎营销",599,"1,299人报名","img/vip/96FBC308EA9045D5A23A1AB51FC57E39.png","details.html?id=3"),
(NULL,"软件测试笔试面试题",9.9,"627人报名","img/vip/1EFE1953F2FD483CAF422B5AC523AFB1.png","details.html?id=3"),
(NULL,"性能测试工具（JMeter）",29,"521人报名","img/vip/0D87DBBA27B248D3906923F7B251A2D3.png","details.html?id=3"),
(NULL,"功能测试工具（QTP）",59,"339人报名","img/vip/C564BF79E60A4230B67F23553702F025.png","details.html?id=3"),
(NULL,"JAVA开发语言基础",29,"3,272人报名","img/vip/D852D37D03FF46CA9E43F5F738608837.png","details.html?id=3"),
(NULL,"商业办公软件课程",29,"419人报名","img/vip/E193CCAC163B4B8DB7B3969CD8F7BFB2.jpg","details.html?id=3"),
(NULL,"缺陷管理工具(QC)",149,"405人报名","img/vip/7BC6003C0E0C40EBA85AA0939B784249.png","details.html?id=3"),
(NULL,"嵌入式之开发实战",399,"1,058人报名","img/vip/E3FD2CB894274B109E9911322EC35E76.png","details.html?id=3"),
(NULL,"linux设备驱动开发",199,"477人报名","img/vip/848E0345BC6943679D70E3187D8A186D.png","details.html?id=3"),
(NULL,"linux云计算",119,"651人报名","img/vip/FDA95764E1C640D298F9C33A4B0CD392.png","details.html?id=3"),
(NULL,"linux集群与存储",39,"360人报名","img/vip/A2C95F3457DA4EB5B65B674FD8CD6C36.png","details.html?id=3"),
(NULL,"linux安全应用",69,"381人报名","img/vip/6F5BAEF27AC543A29A346DFF4C6A885F.png","details.html?id=3"),
(NULL,"linux监控",109,"351人报名","img/vip/17CB84E2ED3D4CCEAABAFA3E12F022AE.png","details.html?id=3"),
(NULL,"linux云计算之数据库",99,"576人报名","img/vip/76E6F6EC94804D10988E185BCE55F2F6.png","details.html?id=3"),
(NULL,"linux高级运维",49,"634人报名","img/vip/8D3A29A91B1C4C018C6C2A9F096275F2.png","details.html?id=3"),
(NULL,"linux云计算之Shell脚本",99,"614人报名","img/vip/377A1CECF5F2140B9B0FD22779124E0C4.png","details.html?id=3"),
(NULL,"linux系统管理",199,"752人报名","img/vip/94D557C1DBB44FDA909B3B2BDC433A28.png","details.html?id=3"),
(NULL,"标准C语言",9.9,"1,601人报名","img/vip/4ED66EBC0F7547D98AEB8AE3B83243C4.png","details.html?id=3"),
(NULL,"C++入门之QT",39,"679人报名","img/vip/F5E8E3025CCF437A99EF8FBC8D69E847.png","details.html?id=3"),
(NULL,"C++入门之STL/模版",69,"276人报名","img/vip/03BBB75B808C48F88D6FFB1EBF3A5DC2.png","details.html?id=3"),
(NULL,"C++入门之Win32",49,"374人报名","img/vip/9E9451428C4046A89E4262C6837CE956.png","details.html?id=3"),
(NULL,"C++入门之MFC",29,"470人报名","img/vip/EC4A1A5D011F436DB6FB6378A8B49D07.png","details.html?id=3"),
(NULL,"Unity3D之数据持久化",49,"264人报名","img/vip/BF41EFF39341485B9C06BAFFA7478C7F.png","details.html?id=3"),
(NULL,"性能测试工具（LR）",19,"324人报名","img/vip/AC71F348442D4AFBBE0EB4C9483F6F54.png","details.html?id=3")

/*培优课程*/
CREATE TABLE yous(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  price DECIMAL(7,2),
  pnum VARCHAR(12),
  img VARCHAR(64),
  href VARCHAR(64)
)
/*添加数据*/
INSERT INTO yous VALUES
(NULL,"达内在线商业插画培优课-1903期",7800,"327人购买","img/you/03FDB862E4D84F67B114E74D3B912C48.png","details.html?id=1"),
(NULL,"达内在线大数据培优课-1902期",9800,"462人购买","img/you/E09C75C4457346A9B26FA1FA9DBC4B9E.jpg","details.html?id=2"),
(NULL,"达内在线Java高手加薪班-1902期",7800,"619人购买","img/you/9424976A83C84E9CBD825A4B8433B8D7.png","details.html?id=3"),
(NULL,"游戏原画培优课-1901期",9800,"231人购买","img/you/8C3B392353B34884AADCE8EB5F4992E8.jpg","details.html?id=4"),
(NULL,"Java基础入门（添加客服，免费领取）",199,"247人购买","img/you/3F8E6CFD23254E0B84934B1D25C9A505.png","details.html?id=5"),
(NULL,"Linux云计算之Shell脚本编程",2000,"364人购买","img/you/F7187F83400E49ED85DC7C6CE460B85F.png","details.html?id=6"),
(NULL,"UED-交互设计",2000,"491人购买","img/you/CF1463E5D1D04453A6F76391800F8F46.png","details.html?id=7"),
(NULL,"EME之微信运营",2000,"502人购买","img/you/9FDD7258126B46A382D4746E9B09EEEB.png","details.html?id=8"),
(NULL,"微信小程序开发",2000,"487人购买","img/you/E3627EF6F68F44238A6B37E72BE6DB73.png","details.html?id=9"),
(NULL,"网络运维之Office2016从入门到实战",2000,"498人购买","img/you/6B12CB674B844D258CAF12A066EA86E1.png","details.html?id=10"),
(NULL,"HADOOP",2000,"324人购买","img/you/AA06FD15E6AB46BCB9348CCF301907B6.jpg","details.html?id=11"),
(NULL,"MongoDB",2000,"369人购买","img/you/21073D44F8A54A30AC16FF74E9C15D9B.jpg","details.html?id=12")

/*教学团队*/
CREATE TABLE team(
  id  INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(64),
  uname VARCHAR(10),
  info VARCHAR(252)
)
/*添加数据*/
INSERT INTO team VALUES
(NULL,"img/vipClass/t1.jpg","韩少云","达内公司创始人，中国高端IT培训的开创者，软件教育专家，培养了几十名知名讲师。15年软件从业经验，前亚信公司软件事业部副总工程师。"),
(NULL,"img/vipClass/t2.jpg","王春梅","硕士毕业于哈尔滨工业大学，曾就职于用友软件。在达内先后担任.NET主讲老师、副总裁助理、课程研发部总监、Web前端课程教研部教研总监、集团教学助理副总裁。"),
(NULL,"img/vipClass/t3.jpg","刘涛","达内集团教学助理副总裁 15年行业及教学经验；Adobe专家委员会委员、TOP100设计师；Macromedia认证讲师、全国计算机职业技能考试认证讲师；出版各类设计教材40余本。"),
(NULL,"img/vipClass/t4.jpg","刘苍松","具有10余年的Java 企业应用开发经验。曾经历任德国Software AG 技术顾问，美国Dachieve 系统架构师美国AngelEngineers Inc. 系统架构师。"),
(NULL,"img/vipClass/t5.jpg","张广","曾就职于营口港务局软件中心、东软集团、易车集团等知名企业，从事Java和Android软件开发以及项目管理工作。语言幽默风趣，讲解深入浅出。"),
(NULL,"img/vipClass/t6.jpg","李新刚","第一架构师、网络营销课程体系“首席研发专家”、网络营销研发团队“领导人物”、网络营销“技术专家”、行业级&企业级网络营销“特聘顾问”"),
(NULL,"img/vipClass/t7.jpg","赵东升","全国首批由国家工业和信息化部授予的中国服务外包技能考试注册讲师，世界知名白盒测试工具 Parasoft 公司认证高级测试工程师。")

/*详情页*/
CREATE TABLE details(
  id INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(10),
  title VARCHAR(64),
  subtitle VARCHAR(128),
  img VARCHAR(128),
  num INT,
  hour INT,
  price DECIMAL(7,2),
  subimg VARCHAR(128),
  simg VARCHAR(128),
  stitle VARCHAR(64),
  sprice DECIMAL(7,2),
  snum VARCHAR(10)
) 
INSERT INTO details VALUES
(NULL,"后端开发","Python趣味项目案例实操课（已结束）","【直播时间：11.13-11.29】通过6个有意思的小案例配合讲解python基础及相关知识，过程生动有趣，让你告别单纯枯燥的语法学习！本课程提供学习交流群，帮助大家轻松学习，共同成长。","img/details/FE366DE898C246BF9BEB5ED290CA2F01.png",4563,6,0,"img/details/7C950EE008B64E3797304DE59A76914A.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"后端开发","玩转java（可回看，添加客服免费领）","推荐观看java入门基础课程《java五天快速入门攻略》http://www.tmooc.cn/course/100057.shtml，让知识快速衔接，以达成更好的学习效果！","img/details/7FFD35156A1242C7B59C522402FB3E6C.png",528,5,99,"img/details/5FB1779A5FCB478B9492EA20DF284AA8.jpg","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"后端开发","java五天快速入门攻略（可回看，添加客服免费领）","【不要159！点击课程简介扫码免费领】资深讲师配合达内教研总监亲授，录播视频+配套资料+作业点评，五天带你快速入门java！","img/details/E40E6AF3C0CA44309FB4C1CDF09C4590.png",164,5,159,"img/details/5FB1779A5FCB478B9492EA20DF284AA8.jpg","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"后端开发","发现杯赛项说明会（直播回看）","2018全国大学生互联网+创新大赛，暨第六届发现杯全国大学生参与赛项说明会。","img/details/7FFD35156A1242C7B59C522402FB3E6C.png",1689,8,0,"img/details/78F935D98F9C436893220F10B18B2EE1.jpg","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"数字艺术","商业插画体验课—手绘Q版人物形象（回放）","【直播时间：10月26日晚19:00】本节课你可以学会Q版头像绘画的特点，Q版女孩头像的草图与线稿绘制以及Q版女孩头像的上色技巧等知识。","img/details/C9852F6A3E634455BC9E7721780E7911.png",3871,1,0,"img/details/1FED78EFCBFC4B6F8C3A3548D02DC12A.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"数字艺术","商业插画零基础手绘教程","零基础入门，商业插画视觉设计总监结合实战进行步骤详解，更贴近插画初学者的学习习惯，让你快速、系统的学习手绘绘画技巧！","img/details/7FFD35156A1242C7B59C522402FB3E6C.png",2253,18,599,"img/details/7FFD35156A1242C7B59C522402FB3E6C.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"游戏","Unity基础概念","Unity基础概念","img/details/003A890AC03341D896E066BAC28111AF.png",945,7,19,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"营销","SEM搜索引擎营销","SEM搜索引擎营销","img/details/96FBC308EA9045D5A23A1AB51FC57E39.png",1516,61,599,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"数字艺术","PR基础特效集合","PR基础特效集合","img/details/B9C2F95A282D4EAE9D2560EBB0F61207.png",2410,9,1,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"前端开发","一周上手小程序","本系列课程抓住了小程序开发的要点，带你快速进行知识梳理和案例实操","img/details/9314FC5334A640688BEEDB3FA0B3CDCD.png",3570,37,1,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"后端开发","Python开发","Python开发","img/details/F5891730B12C4CB5BD76890564C1F7CF.png",7405,24,0,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"大数据","大数据体验课","大数据体验课","img/details/B08EB37C0BBE417AA74ACEC21AE1202D.png",528,5,99,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"其他职业课程","林妹妹说EXCEL","林妹妹来啦！根林妹妹一起学习excel表格的使用技巧吧！","img/details/8346B440529A43E88242BB5299FBA065.png",3733,21,0,"img/details/A34CC08E1B214506ABED730C6065C534.png","img/details/E193CCAC163B4B8DB7B3969CD8F7BFB2.jpg","商业办公软件",29,"336人报名"),
(NULL,"后端开发","前端工程师提升课程：后台PHP语言学习","一节课教你实现前端工程师职业技能的快速提升。","img/details/23B47E1BC4F9488089AA89F29461A06B.jpg",2788,62,0,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"数字艺术","Photoshop","Photoshop","img/details/26EA97FA098C4E8D807C5A9C05C1421F.png",12525,18,0,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"其他职业课程","达内在线商业插画培优课-1901期","【持续更新中】208课时的核心技能特训，专为UI设计师打造，提升原创设计实力，突破设计瓶颈，创造设计灵感，实现设计实力的飞跃！","img/details/38343EE11FE44E668CC5128F7297CCC1.png",738,25,9800,"img/details/924C9FA975394E2AAA8C9CDDDE926AA1.jpg","img/details/E193CCAC163B4B8DB7B3969CD8F7BFB2.jpg","商业办公软件",29,"336人报名"),
(NULL,"大数据","达内在线大数据培优课1901期","大数据在线培优，工程师加薪升职必修课！课程持续更新中……","img/details/064CFA779764405F982FCBFCFEF33B5A.jpg",0,430,9800,"img/details/B7FA1905AEDB4556A7BE1037BD2C321B.jpg","img/details/064CFA779764405F982FCBFCFEF33B5A.jpg","达内在线大数据培优课1901期",9800,"157人报名"),
(NULL,"前端开发","微信小程序开发","微信小程序开发","img/details/E3627EF6F68F44238A6B37E72BE6DB73.png",488,81,2000,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名"),
(NULL,"大数据","HADOOP","HADOOP","img/details/AA06FD15E6AB46BCB9348CCF301907B6.jpg",324,24,2000,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/064CFA779764405F982FCBFCFEF33B5A.jpg","达内在线大数据培优课1901期",9800,"157人报名"),
(NULL,"数字艺术","UED-交互设计","UED-交互设计","img/details/CF1463E5D1D04453A6F76391800F8F46.png",491,30,2000,"img/details/57E123A9360840B8A10BE575170AEC51.png","img/details/BA95172766C648E694B2EB6298D0268D.png","Java高手加薪课",0,"1,216人报名")

/*注册*/
CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  phone VARCHAR(11),
  pwd VARCHAR(16),
  rpwd VARCHAR(16)
)