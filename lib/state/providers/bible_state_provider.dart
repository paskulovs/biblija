import 'package:biblija/state/notifiers/bible_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bibleStateProvider = AsyncNotifierProvider<BibleStateNotifier, BibleState>(() => BibleStateNotifier());