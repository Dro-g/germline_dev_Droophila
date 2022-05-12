x = getTitle();
selectWindow(x);
run("Select None");
Stack.getPosition(channel, slice, frame);
x_dup = x + "_dup";
x_dup_tit = "title=[" + x_dup + "] duplicate";
run("Duplicate...", x_dup_tit);
selectWindow(x_dup);
run("Split Channels");
C1_x_dup = "C1-" + x_dup;
C2_x_dup = "C2-" + x_dup;
C3_x_dup = "C3-" + x_dup;
selectWindow(C3_x_dup);
C3_x_dup_1 = "C3-" + x_dup + "_1";
C3_x_dup_1_tit = "title=[" + C3_x_dup_1 + "]";
run("Duplicate...", C3_x_dup_1_tit);
selectWindow(C3_x_dup_1);
run("Median...", "radius=1 stack");
run("Mean...", "radius=1 stack");
run("Restore Selection");
run("Clear Outside");
run("Select None");
setAutoThreshold("MaxEntropy dark");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Fill Holes");
run("Options...", "iterations=1 count=1 black");
run("Analyze Particles...", "size=10-Infinity show=Masks exclude include");
Mask_C3_x_dup_1 = "Mask of " + C3_x_dup_1;
selectWindow(Mask_C3_x_dup_1);
run("Invert");
run("Create Selection");
selectWindow(C3_x_dup);
setSlice(slice);
run("Restore Selection");
roiManager("Add");
close(C1_x_dup);
close(C2_x_dup);
close(C3_x_dup);
close(C3_x_dup_1);
close(Mask_C3_x_dup_1);




