/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.61 : Database - newshow
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`newshow` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `newshow`;

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `newstype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`id`,`title`,`content`,`photo`,`newstype`) values 
(1,'1孟晚舟庭审日记：加拿大检方律师违规接触证人','温哥华当地时间12月10日，孟晚舟引渡案继续在不列颠哥伦比亚省高等法院进行。当天出现了令人颇感意外的情况，就是检方证人违规矩与检方律师接触，继而产生串供嫌疑。另外，法庭方面还透露，代表孟晚舟的辩方律师将为“程序滥用”这个申诉理由，增加第四个辩护方向，即第四个辩护分支（branch）。','1.png',NULL),
(2,'哈尔滨市副市长王沿民接受审查调查','中央纪委国家监委网站讯 据黑龙江省纪委监委消息：哈尔滨市政府党组成员、副市长王沿民涉嫌严重违纪违法，目前正接受黑龙江省纪委监委纪律审查和监察调查。','2.png',NULL),
(3,'印度医院1天内9名婴儿死亡 院长称是“自然情况”','海外网12月11日电 据多家外媒报道，近日，位于印度拉贾斯坦邦的一家医院在24小时内有9名婴儿死亡，引发广泛关注。尽管该院院长声称相关的死亡事件“是自然情况”，但当地卫生部长已下令展开调查。',NULL,NULL),
(4,'执行“解封”新规！法国巴黎多处文化地标继续关闭','　当地时间12月11日，包括卢浮宫、奥赛博物馆、埃菲尔铁塔在内的多处巴黎文化地标均在社交媒体上确认，将在法国12月15日开始实施的“解封”第二阶段继续保持关闭，新的开放时间另行通知。此前，埃菲尔铁塔已确认于12月16日上午10点30分重新向公众开放，并已提前开始售票。',NULL,NULL),
(5,'特朗普提出新造舰计划对抗中国 美媒：又给拜登挖坑','　　据美国媒体《福布斯》网站报道，特朗普终于想出了一个美国舰队的计划，但为时已晚，除了伤害之外什么都做不了。',NULL,NULL),
(6,'省考试院发布考研防疫须知 考生须注册\"粤康码\"信息','　羊城晚报全媒体记者孙唯、通讯员粤考宣报道：12月7日，省教育考试院发布了广东省2021年全国硕士研究生统一招生考试考生防疫须知。防疫须知要求，所有考生须注册“粤康码”信息。12月12日起，对所有考生实行考前连续14天健康监测。',NULL,NULL),
(7,'硬脱欧风险迫在眉睫 为何交易员们一笑置之？','　在距离最后期限只剩三周之际，英国正在朝着无协议脱欧的趋势发展，然而市场对即将来临的经济冲击显然抱持着乐观态度。',NULL,NULL),
(8,'如何建设区域性中心城市？','《中共中央关于制定国民经济和社会发展第十四个五年规划和二〇三五年远景目标的建议》在“推进以人为核心的新型城镇化”一节中提出，优化行政区划设置，发挥中心城市和城市群带动作用，建设现代化都市圈。',NULL,NULL),
(9,'出口企业＂一柜难求＂','“商家的货早都备好了，但是迟迟拿不到货柜，无法运出。现在不论是上海、宁波，还是盐田、广州，所有港口都缺柜。”',NULL,NULL),
(10,'楚汉之争进行时：付费会员制渗透下的零售江湖','拉新的投入产出比太低，促活和留存成为发展的主旋律。存量时代，要求零售企业必须要拿出比以往更为精细化、差异化的服务，更为灵活多变的商品开发策略，以消费者为出发点设计链路模式。流量价值驱动模式已逐渐取代用户增长驱动模式，消费者的价值开发成为市场的关注重点。',NULL,NULL),
(11,'英伦敦北部发生汽车撞人事件 警方：与恐袭无关','　中新网12月11日电 据英国《太阳报》报道，当地时间11日早，英国伦敦北部的哈克尼区发生一起汽车撞人事件，致数人受伤。当地警方证实称，事件与恐袭无关。',NULL,NULL),
(12,'美内华达州发生严重车祸 造成5名自行车手死亡','(NULL)中新网12月11日电 据“中央社”报道，美国内华达州警方称，当地时间10日，该州博尔德市南部95号公路发生严重车祸，一辆厢型货车撞上了一群自行车手，造成5名自行车手死亡，3人受伤。',NULL,NULL),
(13,'美内华达州发生严重车祸 造成5名自行车手死亡','美内华达州发生严重车祸 造成5名自行车手死亡',NULL,NULL),
(14,'定了！广州公积金缴存基数 上限调整至3306元',NULL,NULL,NULL),
(22,'爱上对方发斯蒂芬',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
