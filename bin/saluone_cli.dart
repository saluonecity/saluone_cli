import 'dart:io';

// import 'package:saluone_cli/saluone_cli.dart' as saluone_cli;

void main(List<String> arguments) {

  var blocsFolder = Directory("./lib/bloc/");
  var extensionsFolder = Directory("./lib/extensions/");
  var modelsFolder = Directory("./lib/models/");
  var servicesFolder = Directory("./lib/services/");
  var sharedFolder = Directory("./lib/shared/");
  var uiFolder = Directory("./lib/ui/");
  var pagesFolder = Directory("./lib/ui/pages/");
  var widgetsFolder = Directory("./lib/ui/widgets/");
  
  if (arguments[0] == "create" && arguments[1] == "folder") {

    //buat foldernya
    
    blocsFolder.createSync(recursive: true);

    extensionsFolder.createSync(recursive: true);

    modelsFolder.createSync(recursive: true);

    servicesFolder.createSync(recursive: true);

    sharedFolder.createSync(recursive: true);

    uiFolder.createSync(recursive: true);

    pagesFolder.createSync(recursive: true);

    widgetsFolder.createSync(recursive: true);
  }

  if (arguments[0] == "create" && arguments[1] == "file") {

    //buat filenya

    var viewFile = File("${blocsFolder.path}/bloc.dart");
    File(viewFile.path).createSync();

    var extensionsFile = File("${extensionsFolder.path}/extensions.dart");
    File(extensionsFile.path).createSync();

    var modelsFile = File("${modelsFolder.path}/models.dart");
    File(modelsFile.path).createSync();

    var servicesFile = File("${servicesFolder.path}/services.dart");
    File(servicesFile.path).createSync();

    var sharedFile = File("${sharedFolder.path}/shared.dart");
    File(sharedFile.path).createSync();

    var pagesFile = File("${pagesFolder.path}/pages.dart");
    File(pagesFile.path).createSync();

    var widgetsFile = File("${widgetsFolder.path}/widgets.dart");
    File(widgetsFile.path).createSync();
  }
}
