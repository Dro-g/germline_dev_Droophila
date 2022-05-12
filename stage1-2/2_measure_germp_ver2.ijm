dir = getDirectory("Choose a Directory");
upd_mi = 12;
upd_ma = 53;
x = getTitle();
duptit = x + "-1";
C1_dup = "C1-" + duptit;
C2_dup = "C2-" + duptit; 
C3_dup = "C3-" + duptit; 
C4_dup = "C4-" + duptit; 
close(C1_dup);
close(C2_dup);
close(C3_dup);
close(C4_dup);
selectWindow(x);
run("Split Channels");
C1 = "C1-" + x;
C2 = "C2-" + x;
C3 = "C3-" + x;
C4 = "C4-" + x;
selectWindow(C1);
getDimensions(width, height, channels, totalslices, frames);
for(i = 1; i < upd_mi ; i++){
	setSlice(1);
	run("Delete Slice", "delete=slice");
};
subnum = totalslices - upd_ma
for(j = 1; j < subnum + 1; j++){
	Stack.getDimensions(w, h, c, s, f);
	setSlice(s);
	run("Delete Slice", "delete=slice");
};
selectWindow(C2);
getDimensions(width, height, channels, totalslices, frames);
for(i = 1; i < upd_mi ; i++){
	setSlice(1);
	run("Delete Slice", "delete=slice");
};
subnum = totalslices - upd_ma
for(j = 1; j < subnum + 1; j++){
	Stack.getDimensions(w, h, c, s, f);
	setSlice(s);
	run("Delete Slice", "delete=slice");
};
selectWindow(C3);
getDimensions(width, height, channels, totalslices, frames);
for(i = 1; i < upd_mi ; i++){
	setSlice(1);
	run("Delete Slice", "delete=slice");
};
subnum = totalslices - upd_ma
for(j = 1; j < subnum + 1; j++){
	Stack.getDimensions(w, h, c, s, f);
	setSlice(s);
	run("Delete Slice", "delete=slice");
};
selectWindow(C4);
getDimensions(width, height, channels, totalslices, frames);
for(i = 1; i < upd_mi ; i++){
	setSlice(1);
	run("Delete Slice", "delete=slice");
};
subnum = totalslices - upd_ma
for(j = 1; j < subnum + 1; j++){
	Stack.getDimensions(w, h, c, s, f);
	setSlice(s);
	run("Delete Slice", "delete=slice");
};
selectWindow(C4);
run("Duplicate...", "title=[vasa_processed] duplicate");
selectWindow("vasa_processed");
run("Median...", "radius=2 stack");
run("Mean...", "radius=2 stack");
setAutoThreshold("MaxEntropy dark");
setOption("BlackBackground", true);
run("Convert to Mask", "method=MaxEntropy background=Dark calculate black");
run("Fill Holes", "stack");
redilect_gre_raw = "area mean integrated median limit redirect=[" + C3 + "] decimal=2";
run("Set Measurements...", redilect_gre_raw);
run("Analyze Particles...", "size=80-Infinity show=Outlines display clear include stack");
green_raw = x + "_green";
IJ.renameResults(green_raw);
dir_green = dir + green_raw + ".csv";
saveAs("Results", dir_green);
close("Drawing of vasa_processed");
selectWindow("vasa_processed");
redilect_mag_raw = "area mean integrated median limit redirect=[" + C4 + "] decimal=2";
run("Set Measurements...", redilect_mag_raw);
run("Analyze Particles...", "size=80-Infinity show=Outlines display clear include stack");
mag_raw = x + "_mag";
IJ.renameResults(mag_raw);
dir_mag = dir + mag_raw + ".csv";
saveAs("Results", dir_mag);
sav_draw = dir + "Drawing of vasa processed.tif";
selectWindow("Drawing of vasa_processed");
saveAs("Tiff", sav_draw);
sav_seg = dir + "vasa_processed.tif";
selectWindow("vasa_processed");
saveAs("Tiff", sav_seg);
sav_C1 = dir + C1 + ".tif";
selectWindow(C1);
//saveAs("Tiff", sav_C1);
sav_C2 = dir + C2 + ".tif";
selectWindow(C2);
//saveAs("Tiff", sav_C2);
sav_C3 = dir + C3 + ".tif";
selectWindow(C3);
saveAs("Tiff", sav_C3);
sav_C4 = dir + C4 + ".tif";
selectWindow(C4);
saveAs("Tiff", sav_C4);





