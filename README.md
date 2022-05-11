**overview**

These ImageJ macros measure intensity/area in the germplasm or the primordial germ cells (PGC) of the _Drosophila melanogaster_ embryo. 

These macros were designed with z-stack and 4 Ch merge images when I observe whole embryos and take pictures of germplasm or PGC using a confocal microscope. Especially Ch number 3 is images of what you want to measure and number 4 is Vasa staining (germplasm or PGC marker). If you use these macros, please modify the macros to suit your images.

**stage 1-2**

1. You open images in ImageJ and run "1_splitCh_ver1.ijm". You can choose the directory to save intensity data etc. In the directory, the macro makes a new directory named image-name. 
2. In the “2_measure_germp_ver2.ijm”, you can set the slices which you want to measure. The upper slice number is to “upd_ma” and the lower is to “upd_mx”. When you active the original image-name window, you can run the macro. If you choose the image-name directory, the intensity data will be saved in the directory. 
