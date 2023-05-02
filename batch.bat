
mkdir .\Hidden-derictory
mkdir .\Not-hidden-derictory
fsutil file createnew .\Not-hidden-derictory\copyhelp.txt 1000
help xcopy >  .\Not-hidden-derictory\copyhelp.txt
xcopy .\Not-hidden-derictory\copyhelp.txt  .\Hidden-derictory\copied_copyhelp.txt

