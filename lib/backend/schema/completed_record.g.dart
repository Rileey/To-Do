// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompletedRecord> _$completedRecordSerializer =
    new _$CompletedRecordSerializer();

class _$CompletedRecordSerializer
    implements StructuredSerializer<CompletedRecord> {
  @override
  final Iterable<Type> types = const [CompletedRecord, _$CompletedRecord];
  @override
  final String wireName = 'CompletedRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CompletedRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.toDoDate;
    if (value != null) {
      result
        ..add('toDoDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.toDoName;
    if (value != null) {
      result
        ..add('toDoName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toDoDescription;
    if (value != null) {
      result
        ..add('toDoDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toDoState;
    if (value != null) {
      result
        ..add('toDoState')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CompletedRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompletedRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'toDoDate':
          result.toDoDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'toDoName':
          result.toDoName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'toDoDescription':
          result.toDoDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'toDoState':
          result.toDoState = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CompletedRecord extends CompletedRecord {
  @override
  final DateTime toDoDate;
  @override
  final String toDoName;
  @override
  final String toDoDescription;
  @override
  final bool toDoState;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> reference;

  factory _$CompletedRecord([void Function(CompletedRecordBuilder) updates]) =>
      (new CompletedRecordBuilder()..update(updates)).build();

  _$CompletedRecord._(
      {this.toDoDate,
      this.toDoName,
      this.toDoDescription,
      this.toDoState,
      this.user,
      this.reference})
      : super._();

  @override
  CompletedRecord rebuild(void Function(CompletedRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompletedRecordBuilder toBuilder() =>
      new CompletedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompletedRecord &&
        toDoDate == other.toDoDate &&
        toDoName == other.toDoName &&
        toDoDescription == other.toDoDescription &&
        toDoState == other.toDoState &&
        user == other.user &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, toDoDate.hashCode), toDoName.hashCode),
                    toDoDescription.hashCode),
                toDoState.hashCode),
            user.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompletedRecord')
          ..add('toDoDate', toDoDate)
          ..add('toDoName', toDoName)
          ..add('toDoDescription', toDoDescription)
          ..add('toDoState', toDoState)
          ..add('user', user)
          ..add('reference', reference))
        .toString();
  }
}

class CompletedRecordBuilder
    implements Builder<CompletedRecord, CompletedRecordBuilder> {
  _$CompletedRecord _$v;

  DateTime _toDoDate;
  DateTime get toDoDate => _$this._toDoDate;
  set toDoDate(DateTime toDoDate) => _$this._toDoDate = toDoDate;

  String _toDoName;
  String get toDoName => _$this._toDoName;
  set toDoName(String toDoName) => _$this._toDoName = toDoName;

  String _toDoDescription;
  String get toDoDescription => _$this._toDoDescription;
  set toDoDescription(String toDoDescription) =>
      _$this._toDoDescription = toDoDescription;

  bool _toDoState;
  bool get toDoState => _$this._toDoState;
  set toDoState(bool toDoState) => _$this._toDoState = toDoState;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CompletedRecordBuilder() {
    CompletedRecord._initializeBuilder(this);
  }

  CompletedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _toDoDate = $v.toDoDate;
      _toDoName = $v.toDoName;
      _toDoDescription = $v.toDoDescription;
      _toDoState = $v.toDoState;
      _user = $v.user;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompletedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompletedRecord;
  }

  @override
  void update(void Function(CompletedRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompletedRecord build() {
    final _$result = _$v ??
        new _$CompletedRecord._(
            toDoDate: toDoDate,
            toDoName: toDoName,
            toDoDescription: toDoDescription,
            toDoState: toDoState,
            user: user,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
