#!/usr/bin/env perl

use File::Slurp;
use Imager;

my $image = Imager->new(xsize => 64, ysize => 64); #4,096
my $encrypteddata = read_file("4096");

# my @pairs = unpack '(a4096)*', $encrypteddata;
# $chopped_data = $_ for @pairs;

my @characters = split(//, $encrypteddata);
my $i = -1;
foreach my $character (@characters) 
{
    if($character =~ /^(a)$/i){$color = Imager::Color->new("#007071");$color->set("#007071");}
    if($character =~ /^(b)$/i){$color = Imager::Color->new("#008000");$color->set("#008000");}
    if($character =~ /^(c)$/i){$color = Imager::Color->new("#d9dddb");$color->set("#d9dddb");}
    if($character =~ /^(d)$/i){$color = Imager::Color->new("#20142c");$color->set("#20142c");}
    if($character =~ /^(e)$/i){$color = Imager::Color->new("#51326f");$color->set("#51326f");}
    if($character =~ /^(f)$/i){$color = Imager::Color->new("#26004c");$color->set("#26004c");}
    if($character =~ /^(g)$/i){$color = Imager::Color->new("#00004c");$color->set("#00004c");}
    if($character =~ /^(h)$/i){$color = Imager::Color->new("#0000ff");$color->set("#0000ff");}
    if($character =~ /^(i)$/i){$color = Imager::Color->new("#0cf27d");$color->set("#0cf27d");}
    if($character =~ /^(j)$/i){$color = Imager::Color->new("#f27d0c");$color->set("#f27d0c");}
    if($character =~ /^(k)$/i){$color = Imager::Color->new("#f15928");$color->set("#f15928");}
    if($character =~ /^(l)$/i){$color = Imager::Color->new("#005273");$color->set("#005273");}
    if($character =~ /^(m)$/i){$color = Imager::Color->new("#005273");$color->set("#005273");}
    if($character =~ /^(n)$/i){$color = Imager::Color->new("#f15928");$color->set("#f15928");}
    if($character =~ /^(o)$/i){$color = Imager::Color->new("#4aaeee");$color->set("#4aaeee");}
    if($character =~ /^(p)$/i){$color = Imager::Color->new("#5e193b");$color->set("#5e193b");}
    if($character =~ /^(q)$/i){$color = Imager::Color->new("#4d0026");$color->set("#4d0026");}
    if($character =~ /^(r)$/i){$color = Imager::Color->new("#4d004c");$color->set("#4d004c");}
    if($character =~ /^(s)$/i){$color = Imager::Color->new("#4c4d00");$color->set("#4c4d00");}
    if($character =~ /^(t)$/i){$color = Imager::Color->new("#306100");$color->set("#306100");}
    if($character =~ /^(u)$/i){$color = Imager::Color->new("#993cf3");$color->set("#993cf3");}
    if($character =~ /^(v)$/i){$color = Imager::Color->new("#fe0001");$color->set("#fe0001");}
    if($character =~ /^(w)$/i){$color = Imager::Color->new("#8ccc96");$color->set("#8ccc96");}
    if($character =~ /^(x)$/i){$color = Imager::Color->new("#003b58");$color->set("#003b58");}
    if($character =~ /^(y)$/i){$color = Imager::Color->new("#3a0078");$color->set("#3a0078");}
    if($character =~ /^(z)$/i){$color = Imager::Color->new("#c7ff85");$color->set("#c7ff85");}
    if($character =~ /^(0)$/i){$color = Imager::Color->new("#ba064e");$color->set("#ba064e");}
    if($character =~ /^(1)$/i){$color = Imager::Color->new("#efeaf4");$color->set("#efeaf4");}
    if($character =~ /^(2)$/i){$color = Imager::Color->new("#ffeff9");$color->set("#ffeff9");}
    if($character =~ /^(3)$/i){$color = Imager::Color->new("#ff66cc");$color->set("#ff66cc");}
    if($character =~ /^(4)$/i){$color = Imager::Color->new("#0abab5");$color->set("#0abab5");}
    if($character =~ /^(5)$/i){$color = Imager::Color->new("#f0f8ff");$color->set("#f0f8ff");}
    if($character =~ /^(6)$/i){$color = Imager::Color->new("#00c5cd");$color->set("#00c5cd");}
    if($character =~ /^(7)$/i){$color = Imager::Color->new("#00868b");$color->set("#00868b");}
    if($character =~ /^(8)$/i){$color = Imager::Color->new("#8b2252");$color->set("#8b2252");}
    if($character =~ /^(9)$/i){$color = Imager::Color->new("#ee3a8c");$color->set("#ee3a8c");}
    if($character =~ /^(=)$/i){$color = Imager::Color->new("#FFFFFF");$color->set("#FFFFFF");}
    if($character =~ /^(<)$/i){$color = Imager::Color->new("#666699");$color->set("#666699");}
    if($character =~ /^(>)$/i){$color = Imager::Color->new("#686870");$color->set("#686870");}

    $i++;
    if($i < 64){$image->box(xmin => $i, ymin => 0, xmax => $i, ymax => 0, filled => 1, color => $color);}
    if(($i > 64*1-1) && ($i < 64*2)){my $i = $i - 64;$image->box(xmin => $i, ymin => 1, xmax => $i, ymax => 1, filled => 1, color => $color);} 
    if(($i > 64*2-1) && ($i < 64*3)){my $i = $i - 128;$image->box(xmin => $i, ymin => 2, xmax => $i, ymax => 2, filled => 1, color => $color);} 
    if(($i > 64*3-1) && ($i < 64*4)){my $i = $i - 192;$image->box(xmin => $i, ymin => 3, xmax => $i, ymax => 3, filled => 1, color => $color);} 
    if(($i > 64*4-1) && ($i < 64*5)){my $i = $i - 256;$image->box(xmin => $i, ymin => 4, xmax => $i, ymax => 4, filled => 1, color => $color);} 
    if(($i > 64*5-1) && ($i < 64*6)){my $i = $i - 320;$image->box(xmin => $i, ymin => 5, xmax => $i, ymax => 5, filled => 1, color => $color);} 
    if(($i > 64*6-1) && ($i < 64*7)){my $i = $i - 384;$image->box(xmin => $i, ymin => 6, xmax => $i, ymax => 6, filled => 1, color => $color);} 
    if(($i > 64*7-1) && ($i < 64*8)){my $i = $i - 448;$image->box(xmin => $i, ymin => 7, xmax => $i, ymax => 7, filled => 1, color => $color);} 
    if(($i > 64*8-1) && ($i < 64*9)){my $i = $i - 512;$image->box(xmin => $i, ymin => 8, xmax => $i, ymax => 8, filled => 1, color => $color);} 
    if(($i > 64*9-1) && ($i < 64*10)){my $i = $i - 576;$image->box(xmin => $i, ymin => 9, xmax => $i, ymax => 9, filled => 1, color => $color);} 
    if(($i > 64*10-1) && ($i < 64*11)){my $i = $i - 640;$image->box(xmin => $i, ymin => 10, xmax => $i, ymax => 10, filled => 1, color => $color);} 
    if(($i > 64*11-1) && ($i < 64*12)){my $i = $i - 704;$image->box(xmin => $i, ymin => 11, xmax => $i, ymax => 11, filled => 1, color => $color);} 
    if(($i > 64*12-1) && ($i < 64*13)){my $i = $i - 768;$image->box(xmin => $i, ymin => 12, xmax => $i, ymax => 12, filled => 1, color => $color);} 
    if(($i > 64*13-1) && ($i < 64*14)){my $i = $i - 832;$image->box(xmin => $i, ymin => 13, xmax => $i, ymax => 13, filled => 1, color => $color);} 
    if(($i > 64*14-1) && ($i < 64*15)){my $i = $i - 896;$image->box(xmin => $i, ymin => 14, xmax => $i, ymax => 14, filled => 1, color => $color);} 
    if(($i > 64*15-1) && ($i < 64*16)){my $i = $i - 960;$image->box(xmin => $i, ymin => 15, xmax => $i, ymax => 15, filled => 1, color => $color);} 
    if(($i > 64*16-1) && ($i < 64*17)){my $i = $i - 1024;$image->box(xmin => $i, ymin => 16, xmax => $i, ymax => 16, filled => 1, color => $color);} 
    if(($i > 64*17-1) && ($i < 64*18)){my $i = $i - 1088;$image->box(xmin => $i, ymin => 17, xmax => $i, ymax => 17, filled => 1, color => $color);} 
    if(($i > 64*18-1) && ($i < 64*19)){my $i = $i - 1152;$image->box(xmin => $i, ymin => 18, xmax => $i, ymax => 18, filled => 1, color => $color);} 
    if(($i > 64*19-1) && ($i < 64*20)){my $i = $i - 1216;$image->box(xmin => $i, ymin => 19, xmax => $i, ymax => 19, filled => 1, color => $color);} 
    if(($i > 64*20-1) && ($i < 64*21)){my $i = $i - 1280;$image->box(xmin => $i, ymin => 20, xmax => $i, ymax => 20, filled => 1, color => $color);} 
    if(($i > 64*21-1) && ($i < 64*22)){my $i = $i - 1344;$image->box(xmin => $i, ymin => 21, xmax => $i, ymax => 21, filled => 1, color => $color);} 
    if(($i > 64*22-1) && ($i < 64*23)){my $i = $i - 1408;$image->box(xmin => $i, ymin => 22, xmax => $i, ymax => 22, filled => 1, color => $color);} 
    if(($i > 64*23-1) && ($i < 64*24)){my $i = $i - 1472;$image->box(xmin => $i, ymin => 23, xmax => $i, ymax => 23, filled => 1, color => $color);} 
    if(($i > 64*24-1) && ($i < 64*25)){my $i = $i - 1536;$image->box(xmin => $i, ymin => 24, xmax => $i, ymax => 24, filled => 1, color => $color);} 
    if(($i > 64*25-1) && ($i < 64*26)){my $i = $i - 1600;$image->box(xmin => $i, ymin => 25, xmax => $i, ymax => 25, filled => 1, color => $color);} 
    if(($i > 64*26-1) && ($i < 64*27)){my $i = $i - 1664;$image->box(xmin => $i, ymin => 26, xmax => $i, ymax => 26, filled => 1, color => $color);} 
    if(($i > 64*27-1) && ($i < 64*28)){my $i = $i - 1728;$image->box(xmin => $i, ymin => 27, xmax => $i, ymax => 27, filled => 1, color => $color);} 
    if(($i > 64*28-1) && ($i < 64*29)){my $i = $i - 1792;$image->box(xmin => $i, ymin => 28, xmax => $i, ymax => 28, filled => 1, color => $color);} 
    if(($i > 64*29-1) && ($i < 64*30)){my $i = $i - 1856;$image->box(xmin => $i, ymin => 29, xmax => $i, ymax => 29, filled => 1, color => $color);} 
    if(($i > 64*30-1) && ($i < 64*31)){my $i = $i - 1920;$image->box(xmin => $i, ymin => 30, xmax => $i, ymax => 30, filled => 1, color => $color);} 
    if(($i > 64*31-1) && ($i < 64*32)){my $i = $i - 1984;$image->box(xmin => $i, ymin => 31, xmax => $i, ymax => 31, filled => 1, color => $color);} 
    if(($i > 64*32-1) && ($i < 64*33)){my $i = $i - 2048;$image->box(xmin => $i, ymin => 32, xmax => $i, ymax => 32, filled => 1, color => $color);} 
    if(($i > 64*33-1) && ($i < 64*34)){my $i = $i - 2112;$image->box(xmin => $i, ymin => 33, xmax => $i, ymax => 33, filled => 1, color => $color);} 
    if(($i > 64*34-1) && ($i < 64*35)){my $i = $i - 2176;$image->box(xmin => $i, ymin => 34, xmax => $i, ymax => 34, filled => 1, color => $color);} 
    if(($i > 64*35-1) && ($i < 64*36)){my $i = $i - 2240;$image->box(xmin => $i, ymin => 35, xmax => $i, ymax => 35, filled => 1, color => $color);} 
    if(($i > 64*36-1) && ($i < 64*37)){my $i = $i - 2304;$image->box(xmin => $i, ymin => 36, xmax => $i, ymax => 36, filled => 1, color => $color);} 
    if(($i > 64*37-1) && ($i < 64*38)){my $i = $i - 2368;$image->box(xmin => $i, ymin => 37, xmax => $i, ymax => 37, filled => 1, color => $color);} 
    if(($i > 64*38-1) && ($i < 64*39)){my $i = $i - 2432;$image->box(xmin => $i, ymin => 38, xmax => $i, ymax => 38, filled => 1, color => $color);} 
    if(($i > 64*39-1) && ($i < 64*40)){my $i = $i - 2496;$image->box(xmin => $i, ymin => 39, xmax => $i, ymax => 39, filled => 1, color => $color);} 
    if(($i > 64*40-1) && ($i < 64*41)){my $i = $i - 2560;$image->box(xmin => $i, ymin => 40, xmax => $i, ymax => 40, filled => 1, color => $color);} 
    if(($i > 64*41-1) && ($i < 64*42)){my $i = $i - 2624;$image->box(xmin => $i, ymin => 41, xmax => $i, ymax => 41, filled => 1, color => $color);} 
    if(($i > 64*42-1) && ($i < 64*43)){my $i = $i - 2688;$image->box(xmin => $i, ymin => 42, xmax => $i, ymax => 42, filled => 1, color => $color);} 
    if(($i > 64*43-1) && ($i < 64*44)){my $i = $i - 2752;$image->box(xmin => $i, ymin => 43, xmax => $i, ymax => 43, filled => 1, color => $color);} 
    if(($i > 64*44-1) && ($i < 64*45)){my $i = $i - 2816;$image->box(xmin => $i, ymin => 44, xmax => $i, ymax => 44, filled => 1, color => $color);} 
    if(($i > 64*45-1) && ($i < 64*46)){my $i = $i - 2880;$image->box(xmin => $i, ymin => 45, xmax => $i, ymax => 45, filled => 1, color => $color);} 
    if(($i > 64*46-1) && ($i < 64*47)){my $i = $i - 2944;$image->box(xmin => $i, ymin => 46, xmax => $i, ymax => 46, filled => 1, color => $color);} 
    if(($i > 64*47-1) && ($i < 64*48)){my $i = $i - 3008;$image->box(xmin => $i, ymin => 47, xmax => $i, ymax => 47, filled => 1, color => $color);} 
    if(($i > 64*48-1) && ($i < 64*49)){my $i = $i - 3072;$image->box(xmin => $i, ymin => 48, xmax => $i, ymax => 48, filled => 1, color => $color);} 
    if(($i > 64*49-1) && ($i < 64*50)){my $i = $i - 3136;$image->box(xmin => $i, ymin => 49, xmax => $i, ymax => 49, filled => 1, color => $color);} 
    if(($i > 64*50-1) && ($i < 64*51)){my $i = $i - 3200;$image->box(xmin => $i, ymin => 50, xmax => $i, ymax => 50, filled => 1, color => $color);} 
    if(($i > 64*51-1) && ($i < 64*52)){my $i = $i - 3264;$image->box(xmin => $i, ymin => 51, xmax => $i, ymax => 51, filled => 1, color => $color);} 
    if(($i > 64*52-1) && ($i < 64*53)){my $i = $i - 3328;$image->box(xmin => $i, ymin => 52, xmax => $i, ymax => 52, filled => 1, color => $color);} 
    if(($i > 64*53-1) && ($i < 64*54)){my $i = $i - 3392;$image->box(xmin => $i, ymin => 53, xmax => $i, ymax => 53, filled => 1, color => $color);} 
    if(($i > 64*54-1) && ($i < 64*55)){my $i = $i - 3456;$image->box(xmin => $i, ymin => 54, xmax => $i, ymax => 54, filled => 1, color => $color);} 
    if(($i > 64*55-1) && ($i < 64*56)){my $i = $i - 3520;$image->box(xmin => $i, ymin => 55, xmax => $i, ymax => 55, filled => 1, color => $color);} 
    if(($i > 64*56-1) && ($i < 64*57)){my $i = $i - 3584;$image->box(xmin => $i, ymin => 56, xmax => $i, ymax => 56, filled => 1, color => $color);}
    if(($i > 64*57-1) && ($i < 64*58)){my $i = $i - 3648;$image->box(xmin => $i, ymin => 57, xmax => $i, ymax => 57, filled => 1, color => $color);} 
    if(($i > 64*58-1) && ($i < 64*59)){my $i = $i - 3712;$image->box(xmin => $i, ymin => 58, xmax => $i, ymax => 58, filled => 1, color => $color);} 
    if(($i > 64*59-1) && ($i < 64*60)){my $i = $i - 3776;$image->box(xmin => $i, ymin => 59, xmax => $i, ymax => 59, filled => 1, color => $color);} 
    if(($i > 64*60-1) && ($i < 64*61)){my $i = $i - 3840;$image->box(xmin => $i, ymin => 60, xmax => $i, ymax => 60, filled => 1, color => $color);} 
    if(($i > 64*61-1) && ($i < 64*62)){my $i = $i - 3904;$image->box(xmin => $i, ymin => 61, xmax => $i, ymax => 61, filled => 1, color => $color);} 
    if(($i > 64*62-1) && ($i < 64*63)){my $i = $i - 3968;$image->box(xmin => $i, ymin => 62, xmax => $i, ymax => 62, filled => 1, color => $color);} 
    if(($i > 64*63-1) && ($i < 64*64)){my $i = $i - 4032;$image->box(xmin => $i, ymin => 63, xmax => $i, ymax => 63, filled => 1, color => $color);} 
}

$image->write(file=>'output.bmp') or die 'Cannot save output.bmp: ', $image->errstr;

    # for $ppl(1..64)
    # {
    #     $ppl2 = $ppl + 1;
    #     $d64der = 64 * $ppl;
    #     print qq
    #     {
    #         if((\$i > 64*$ppl-1) && (\$i < 64*$ppl2)){my \$i = \$i - $d64der;\$image->box(xmin => \$i, ymin => $ppl, xmax => \$i, ymax => $ppl, filled => 1, color => \$color);} 
    #     }
    # }