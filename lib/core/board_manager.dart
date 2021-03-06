import 'package:flutter/material.dart';

class BoardManager {
  Color getBoardFieldColor(String colorId) {
    if (containerXL.contains(colorId)) {
      return Colors.purple.shade800;
    } else if (containerL.contains(colorId)) {
      return Colors.purple.shade700;
    } else if (containerM.contains(colorId)) {
      return Colors.purple.shade500;
    } else if (containerS.contains(colorId)) {
      return Colors.purple.shade300;
    } else {
      return Colors.red;
    }
  }

  final containerXL = [
    '0',
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
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32',
    '33',
    '34',
    '35',
    '45',
    '46',
    '47',
    '57',
    '58',
    '59',
    '69',
    '70',
    '71',
    '81',
    '82',
    '83',
    '93',
    '94',
    '95',
    '105',
    '106',
    '107',
    '117',
    '118',
    '119',
    '129',
    '130',
    '131',
    '141',
    '142',
    '143'
  ];
  final containerL = [
    '36',
    '37',
    '38',
    '39',
    '40',
    '41',
    '42',
    '43',
    '44',
    '48',
    '49',
    '50',
    '51',
    '52',
    '53',
    '54',
    '55',
    '56',
    '60',
    '61',
    '62',
    '63',
    '64',
    '65',
    '66',
    '67',
    '68',
    '78',
    '79',
    '80',
    '90',
    '91',
    '92',
    '102',
    '103',
    '104',
    '114',
    '115',
    '116',
    '126',
    '127',
    '128',
    '138',
    '139',
    '140',
  ];
  final containerM = [
    '72',
    '73',
    '74',
    '75',
    '76',
    '77',
    '84',
    '85',
    '86',
    '87',
    '88',
    '89',
    '96',
    '97',
    '98',
    '99',
    '100',
    '101',
    '111',
    '112',
    '113',
    '123',
    '124',
    '125',
    '135',
    '136',
    '137',
  ];
  final containerS = [
    '108',
    '109',
    '110',
    '120',
    '121',
    '122',
    '132',
    '133',
    '134',
  ];
}
