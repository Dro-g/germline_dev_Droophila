x = getTitle();
Stack.getPosition(channel, slice, frame);
x_dup = x + "_dup";
C1_x_dup = "C1-" + x_dup;
C2_x_dup = "C2-" + x_dup;
C3_x_dup = "C3-" + x_dup;
C3_x_dup_1 = "C3-" + x_dup + "_1";
selectWindow(x);
selectWindow("Classified image");
run("8-bit");
run("Convert to Mask");
run("Fill Holes");
run("Options...", "iterations=1 count=1 black");
run("Analyze Particles...", "size=10-Infinity show=Masks exclude include");
run("Invert");
run("Create Selection");
selectWindow(C3_x_dup);
setSlice(slice);
run("Restore Selection");
roiManager("Add");
close("Trainable Weka Segmentation v3.3.2");
close("Mask of Classified image");
close(C1_x_dup);
close(C2_x_dup);
close(C3_x_dup);
close("Classified image");
setTool("rectangle");





