x = getTitle();
duptit = x + "-1";
tit =  "title=[" + duptit + "] duplicate";
run("Duplicate...", tit);
selectWindow(duptit);
run("Split Channels");
dir = getDirectory("Choose a Directory");
mkdir = dir + x;
File.makeDirectory(mkdir);