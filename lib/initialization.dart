// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:mtg_ssm/initialization.config.dart';

@InjectableInit()
void initializeServices() => GetIt.I.init();
