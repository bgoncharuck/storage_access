# storage_access

Allow correct write/read of files as strings, using:
- path_provider
- permission_handler

#### Import:
```
import 'package:storage_access/storage_access.dart' as storage;
```
#### Write:
Returns `Future<bool>`, `true` if all okay
```
final fileWasSaved= await storage.write(
    data: "I am very important data",
    asFile: "how_to_prepare_horkers.xml"
);
if (fileWasSaved == false) beHeroAndFixIt();
```
#### Read:
Returns `Future<String>`, `null` on any error
```
final myTreasure= await storage.read(
    fromFile: "how_to_prepare_horkers.xml"
);
if (myTreasure != null) cookHorkers();
```
