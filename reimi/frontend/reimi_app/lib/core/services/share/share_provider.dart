import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/services/share/share_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'share_provider.g.dart';

@riverpod
ShareService shareService(Ref ref) {
  return const ShareService();
}
