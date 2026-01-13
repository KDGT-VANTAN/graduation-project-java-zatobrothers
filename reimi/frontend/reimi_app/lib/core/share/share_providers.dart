import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'share_service.dart';

part 'share_providers.g.dart';

@riverpod
ShareService shareService(Ref ref) {
  return const ShareService();
}
