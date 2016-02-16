function [] = cat_all()

c00 = dir('*c02.jpg');
c01 = dir('*c03.jpg');

imwrite(cat(1, extract4from9(c00(1).name),extract4from9(c00(2).name),extract4from9(c00(3).name),extract4from9(c00(4).name)),'c02.jpg');

imwrite(cat(1, extract4from9(c01(1).name),extract4from9(c01(2).name),extract4from9(c01(3).name),extract4from9(c01(4).name)),'c03.jpg');

end