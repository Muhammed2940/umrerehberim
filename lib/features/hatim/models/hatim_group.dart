import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';

/// `last_event` alanı: `{type, uid, name, unit, round, at}` (tool/HATIM_SEMA.md).
/// `unit` parça numarasıdır (take/done/completed); diğer olaylarda 0.
class HatimEvent {
  final String type;
  final String uid;
  final String name;
  final int unit;
  final int round;
  final DateTime? at;

  const HatimEvent({
    required this.type,
    required this.uid,
    required this.name,
    required this.unit,
    required this.round,
    this.at,
  });

  static HatimEvent? fromMap(dynamic m) {
    if (m is! Map) return null;
    return HatimEvent(
      type: toStr(m['type']),
      uid: toStr(m['uid']),
      name: toStr(m['name']),
      unit: toInt(m['unit']),
      round: toInt(m['round'], 1),
      at: toDateTime(m['at']),
    );
  }
}

/// `hatim_groups/{gid}` belgesi.
class HatimGroup {
  static const unitCuz = 'cuz';
  static const unitSayfa = 'sayfa';
  static const statusActive = 'active';
  static const statusCompleted = 'completed';
  static const maxMembers = 200;

  final String id;
  final String name;
  final String niyet;
  final String unit;
  final int total;
  final bool isPublic;
  final String agencyId;
  final String ownerUid;
  final String ownerName;
  final List<String> members;
  final int memberCount;
  final int round;
  final int doneCount;
  final String status;
  final DateTime? deadline;
  final HatimEvent? lastEvent;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? completedAt;

  const HatimGroup({
    required this.id,
    required this.name,
    required this.niyet,
    required this.unit,
    required this.total,
    required this.isPublic,
    required this.agencyId,
    required this.ownerUid,
    required this.ownerName,
    required this.members,
    required this.memberCount,
    required this.round,
    required this.doneCount,
    required this.status,
    this.deadline,
    this.lastEvent,
    this.createdAt,
    this.updatedAt,
    this.completedAt,
  });

  bool get isCuz => unit == unitCuz;
  bool get isCompleted => status == statusCompleted;
  double get progress => total <= 0 ? 0 : (doneCount / total).clamp(0, 1).toDouble();
  bool isMember(String uid) => members.contains(uid);
  bool isOwner(String uid) => ownerUid == uid;

  static int totalFor(String unit) => unit == unitSayfa ? 604 : 30;

  factory HatimGroup.fromMap(String id, Map<String, dynamic> d) {
    final unit = toStr(d['unit'], unitCuz);
    final members = (d['members'] as List?)?.map((e) => e.toString()).toList() ?? const <String>[];
    return HatimGroup(
      id: id,
      name: toStr(d['name']),
      niyet: toStr(d['niyet']),
      unit: unit,
      total: toInt(d['total'], totalFor(unit)),
      isPublic: d['is_public'] == true,
      agencyId: toStr(d['agency_id']),
      ownerUid: toStr(d['owner_uid']),
      ownerName: toStr(d['owner_name']),
      members: members,
      memberCount: toInt(d['member_count'], members.length),
      round: toInt(d['round'], 1),
      doneCount: toInt(d['done_count']),
      status: toStr(d['status'], statusActive),
      deadline: toDateTime(d['deadline']),
      lastEvent: HatimEvent.fromMap(d['last_event']),
      createdAt: toDateTime(d['created_at']),
      updatedAt: toDateTime(d['updated_at']),
      completedAt: toDateTime(d['completed_at']),
    );
  }

  factory HatimGroup.fromDoc(DocumentSnapshot<Map<String, dynamic>> doc) =>
      HatimGroup.fromMap(doc.id, doc.data() ?? const {});
}
