//stating variables
  int height = 1000;
  int width = 1000;
  int[][] colorPallette;
  
void setup()  {
  size(1000,1000);
     
//storing colors
  int[] Color1 = new int[3];
            Color1[0] = 241;
            Color1[1] = 90;
            Color1[2] = 90;
  int[] Color2 = new int[3];
          Color2[0] = 240;
          Color2[1] = 196;
          Color2[2] = 25;
  int[] Color3 = new int[3];
          Color3[0] = 78;
          Color3[1] = 186;
          Color3[2] = 111;
  int[] Color4 = new int[3];
          Color4[0] = 45;
          Color4[1] = 149;
          Color4[2] = 191;
  int[] Color5 = new int[3];
          Color5[0] = 149;
          Color5[1] = 91;
          Color5[2] = 165;
 
//storing a color pallette
  colorPallette = new int[][]{Color1, Color2, Color3, Color4, Color5 };
}

void draw(){
  background (255);
  
//drawing strobe light squares
  strokeWeight(0);
  int squareAmount = 4;
  int squareSize = height / squareAmount;
  
//generating the squares along the x axis and filling with random colors from the color pallette
  for(int i = 0; i < squareAmount; i++){
      for(int x = 0; x < squareAmount; x++){
           int colorArraySize = colorPallette.length;
           int randomColor = int(random(colorArraySize));
           fill((colorPallette[randomColor][0]), (colorPallette[randomColor][1]), (colorPallette[randomColor][2]));
           rect((x * squareSize), (i * squareSize), squareSize, squareSize);
           rect((i * squareSize), (x * squareSize), squareSize, squareSize);
      }    
  }

//Drawing the portrait  
  
//head
noFill();
stroke(0);
strokeWeight(11);
bezier(209,522,231,465,268,409,270,409);
bezier(222,554,143,924,473,890,473,890);
bezier(473,890,662,870,681,795,681,795);

//ear
noFill();
strokeWeight(11);
bezier(695,778,779,840,815,716,815,716);
bezier(815,716,833,631,762,618,762,618);
line(762,618,789,513);
//inner_ear
bezier(760,750,765,695,738,695,738,695);
bezier(738,695,730,655,790,661,786,675);

//mouth
noFill(); 
strokeWeight(12);
bezier(343,752,412,854,496,768,496,768);

//nose
noFill(); 
strokeWeight(7);
bezier(339,657,364,727,377,710,377,710);
bezier(390,705,431,692,438,693,438,693);

//eyes
bezier(269,480,332,420,384,464,384,464);
bezier(458,495,542,395,590,443,590,443);
strokeWeight(10);
bezier(262,624,317,491,372,528,372,528);
bezier(458,578,559,489,571,529,571,529);
stroke(43,29,14);
fill(0);
ellipse(363,578,55,105);
ellipse(560,578,58,110);

//hairline
stroke(43,29,14);
strokeWeight(12);
noFill();
bezier(306,374,315,406,327,394,327,394);
bezier(375,351,374,377,392,373,392,373);
bezier(440,341,433,362,449,364,449,364);
bezier(495,352,498,374,509,374,509,374);
bezier(546,366,554,386,562,381,562,381);
bezier(592,380,600,402,607,398,607,398);
bezier(641,398,650,422,664,413,664,413);
bezier(700,413,684,431,700,443,700,443);
bezier(700,443,701,467,694,479,694,479);
bezier(731,452,721,452,719,475,719,475);
bezier(818,300,824,281,832,282,832,282);
bezier(845,348,848,314,858,319,858,319);
line(874,378,890,361);

//hair
strokeWeight(10);
//strand1
bezier(137,211,156,165,-83,202,215,353); 
//strand2
bezier(269,410,171,477,191,395,191,395);
bezier(191,395,209,316,226,374,216,398);
bezier(216,398,205,421,111,386,111,386);
bezier(111,386,50,351,116,309,117,336);
//strand3
bezier(129,157,260,241,154,9,390,78);
//strand4
bezier(385,122,235,121,262,185,262,185);
bezier(262,185,287,254,308,211,308,211);
bezier(308,211,340,134,230,206,230,206);
bezier(230,206,150,277,230,329,230,329);
bezier(230,329,294,379,359,350,346,300);
bezier(346,300,328,162,205,266,200,315);
bezier(200,315,194,364,290,389,290,381);
//strand5
bezier(579,161,571,48,496,123,496,123);
bezier(496,123,497,-2,401,68,401,68);
bezier(401,68,343,142,445,168,445,168);
bezier(445,168,690,137,554,296,554,286);
bezier(558,283,468,364,415,304,409,300);
bezier(409,300,348,237,290,274,290,274);
//strand6
bezier(736,171,754,57,557,61,557,61);
//strand7
bezier(721,226,860,341,786,196,751,181);
bezier(751,181,644,134,629,164,629,164);
//strand8
bezier(728,354,729,260,705,243,705,243);
//strand9
bezier(709,401,747,332,608,346,613,310);
bezier(613,310,622,257,585,270,585,270);
//strand10
bezier(858,394,781,317,794,273,794,273);
//strand11
bezier(941,635,980,432,871,408,871,408);
bezier(895,625,931,580,927,557,927,557);
line(927,557,941,635);
//strand12
bezier(329,207,560,391,354,159,590,228);
//thinstrands
strokeWeight(8);
bezier(745,389,771,320,800,319,800,319);
bezier(765,457,798,355,812,356,812,356);
bezier(798,479,821,393,829,394,829,394);
bezier(849,500,857,392,858,394,858,394);
bezier(883,519,890,446,888,440,888,440);
bezier(908,468,902,564,902,564,902,564);
bezier(708,575,742,468,760,468,760,468);
bezier(730,603,764,493,779,496,779,496);
line(810,516,810,597);
bezier(836,522,835,613,849,606,849,606);
bezier(852,688,870,584,882,590,882,590);
bezier(843,737,900,655,890,639,890,639);
line(823,761,796,822);
line(691,830,708,803);
line(714,840,728,815);
bezier(737,863,757,808,762,818,762,818);

delay(1000);
}