import 'package:nike_app/features/tabs/presentation/viewmodels/tabs_view_model.dart';
import 'package:nike_app/services/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tabs_provider.g.dart';

@riverpod
TabsViewModel tabViewModel(TabViewModelRef ref,
    {required LocationService locationService}) {
  return TabsViewModel(locationService);
}
