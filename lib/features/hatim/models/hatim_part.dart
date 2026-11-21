import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';

/// `hatim_groups/{gid}/parts/{round}_{n}` belgesi. Belge yoksa parça boştur.
class HatimPart {
  static const statusTaken = 'taken';
  static const statusDone = 'done';

  final String id;
  final int n;
  final int round;
  final String uid;
  final String name;
  final String status;
  final DateTime? takenAt;
  final DateTime? doneAt;

  const HatimPart({
    required this.id,
    required this.n,
    required this.round,
    required this.uid,
    required this.name,
    required this.status,
    this.takenAt,
    this.doneAt,
  });

  bool get isDone => status == statusDone;
  bool get isTaken => status == statusTaken;

  static String docId(int round, int n) => '${round}_$n';

  factory HatimPart.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const <String, dynamic>{};
    return HatimPart(
      id: doc.id,
      n: toInt(d['n']),
      round: toInt(d['round'], 1),
      uid: toStr(d['uid']),
      name: toStr(d['name']),
      status: toStr(d['status'], statusTaken),
      takenAt: toDateTime(d['taken_at']),
      doneAt: toDateTime(d['done_at']),
    );
  }
}
