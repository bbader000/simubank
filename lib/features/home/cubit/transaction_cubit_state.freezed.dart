// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionCubitState {

 List<Transaction> get transactions;
/// Create a copy of TransactionCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCubitStateCopyWith<TransactionCubitState> get copyWith => _$TransactionCubitStateCopyWithImpl<TransactionCubitState>(this as TransactionCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionCubitState&&const DeepCollectionEquality().equals(other.transactions, transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'TransactionCubitState(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $TransactionCubitStateCopyWith<$Res>  {
  factory $TransactionCubitStateCopyWith(TransactionCubitState value, $Res Function(TransactionCubitState) _then) = _$TransactionCubitStateCopyWithImpl;
@useResult
$Res call({
 List<Transaction> transactions
});




}
/// @nodoc
class _$TransactionCubitStateCopyWithImpl<$Res>
    implements $TransactionCubitStateCopyWith<$Res> {
  _$TransactionCubitStateCopyWithImpl(this._self, this._then);

  final TransactionCubitState _self;
  final $Res Function(TransactionCubitState) _then;

/// Create a copy of TransactionCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactions = null,}) {
  return _then(_self.copyWith(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}

}


/// @nodoc


class $TransactionCubitState extends TransactionCubitState {
  const $TransactionCubitState({final  List<Transaction> transactions = const []}): _transactions = transactions,super._();
  

 final  List<Transaction> _transactions;
@override@JsonKey() List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of TransactionCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$$TransactionCubitStateCopyWith<$TransactionCubitState> get copyWith => _$$TransactionCubitStateCopyWithImpl<$TransactionCubitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is $TransactionCubitState&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'TransactionCubitState(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $$TransactionCubitStateCopyWith<$Res> implements $TransactionCubitStateCopyWith<$Res> {
  factory $$TransactionCubitStateCopyWith($TransactionCubitState value, $Res Function($TransactionCubitState) _then) = _$$TransactionCubitStateCopyWithImpl;
@override @useResult
$Res call({
 List<Transaction> transactions
});




}
/// @nodoc
class _$$TransactionCubitStateCopyWithImpl<$Res>
    implements $$TransactionCubitStateCopyWith<$Res> {
  _$$TransactionCubitStateCopyWithImpl(this._self, this._then);

  final $TransactionCubitState _self;
  final $Res Function($TransactionCubitState) _then;

/// Create a copy of TransactionCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then($TransactionCubitState(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}


}

// dart format on
