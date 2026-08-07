//Create party, eventually enemy
sBattleImport();
//Enemy creation
for (k=0; global.bene[k]!=""; k+=1) {
sDelimit(global.bene[k]);
cfc=instance_create(__view_get( e__VW.XView, 0 )+8+real(arr[2]),__view_get( e__VW.YView, 0 )+4+real(arr[3]),asset_get_index(arr[0]));
with (cfc) level=real(oBCamera.arr[1]);
//with (cfc) refEnemy(orgname,real(oBCamera.arr[1]));
}
