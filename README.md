**overview**

These ImageJ macros measure the intensity per area in the germplasm or the primordial germ cells (PGC) of the _Drosophila melanogaster_ embryo. 

Using stage1-2 macros, you can measure it automatically. Using stage4-16 macros, you can create an ROI (region of interest) of a PGC based on the PGC marker staning semi-automatically. 

These macros were designed with z-stack and 4 Ch merge images when I observe whole embryos and take pictures of germplasm or PGC using a confocal microscope. Ch number 1 is DAPI, 2 is DIC, 3 is images of what you want to measure and 4 is Vasa staining (germplasm or PGC marker). If you use these macros, please modify the macros to suit your images.

**stage 1-2**

1. You open images in ImageJ and run `1_splitCh_ver1.ijm`. You can choose the directory to save intensity data etc. In the directory, the macro makes a new directory named image-name. 
2. In the `2_measure_germp_ver2.ijm`, you can set the slices which you want to measure. The upper slice number is to “upd_ma” and the lower is to “upd_mi”. When you active the original image-name window, you can run the macro. If you choose the image-name directory, the measured intensity csv file will be saved in the directory. 

**stage 4-16**

1. You open images in ImageJ and run `1_spCH_ver3.ijm`. You can see the Ch1 images, the Ch3 images, the Vasa (Ch4) images and the Ch1, 3, 4 merged images. 
2. You see the Ch1, 3, 4 merged images and set a slice which you want to measure. Using rectangle selection, you enclose a PGC roughly. Please include the whole PGC. 
3. You run `2-1_segmentation_ME_ver1.ijm`, and an ROI of PGC will be created and registered to the ROI manager based on the Max Entropy algorithm. 

_If the created ROI is not sufficient, you can create ROI using the machine learning algorithm (weka). See below._

3. Please redo the step2. You run `2-2-1_segmentation_weka_A_ver1.ijm`, you can see the weka window. 
4. You train the classfier. If you know how to use the weka, please see [https://imagej.net/plugins/tws/](https://imagej.net/plugins/tws/). After training, you push “Create result”. 
5. When you active the image-name window, you can run `2-2-2_segmentation_weka_B_ver1.ijm`. An ROI of PGC will be created and registered. 

