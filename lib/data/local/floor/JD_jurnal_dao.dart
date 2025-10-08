import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_jurnal_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@dao
abstract class JdJurnalDao {
  @Query('SELECT * FROM $KEY_JURNAL_TABLE ORDER BY $KEY_COL_CREATE_AT DESC')
  Future<List<JdJurnalEntity>> getAllJurnal();

  @Query('SELECT * FROM $KEY_JURNAL_TABLE WHERE id = :id')
  Future<JdJurnalEntity?> getJurnalById(String id);

  @Query('SELECT * FROM $KEY_JURNAL_TABLE WHERE $KEY_COL_IS_FAV = 1 ORDER BY $KEY_COL_CREATE_AT DESC')
  Future<List<JdJurnalEntity>> getFavoriteJurnal();

  @insert
  Future<void> insertJurnal(JdJurnalEntity jurnal);

  @update
  Future<void> updateJurnal(JdJurnalEntity jurnal);

  @delete
  Future<void> deleteJurnal(JdJurnalEntity jurnal);

  @Query('DELETE FROM $KEY_JURNAL_TABLE')
  Future<void> clearAll();
}