// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return $Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  int get id;
  int get userId;
  DateTime get date;
  String get merchant;
  int get amount;
  String get currency;
  String get description;
  String get category;
  @JsonKey(name: 'from_account')
  String get fromAccount;
  @JsonKey(name: 'to_account')
  String get toAccount;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<Transaction> get copyWith =>
      _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, date, merchant,
      amount, currency, description, category, fromAccount, toAccount);

  @override
  String toString() {
    return 'Transaction(id: $id, userId: $userId, date: $date, merchant: $merchant, amount: $amount, currency: $currency, description: $description, category: $category, fromAccount: $fromAccount, toAccount: $toAccount)';
  }
}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) _then) =
      _$TransactionCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int userId,
      DateTime date,
      String merchant,
      int amount,
      String currency,
      String description,
      String category,
      @JsonKey(name: 'from_account') String fromAccount,
      @JsonKey(name: 'to_account') String toAccount});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? date = null,
    Object? merchant = null,
    Object? amount = null,
    Object? currency = null,
    Object? description = null,
    Object? category = null,
    Object? fromAccount = null,
    Object? toAccount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchant: null == merchant
          ? _self.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      fromAccount: null == fromAccount
          ? _self.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _self.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class $Transaction implements Transaction {
  const $Transaction(
      {required this.id,
      required this.userId,
      required this.date,
      required this.merchant,
      required this.amount,
      required this.currency,
      required this.description,
      required this.category,
      @JsonKey(name: 'from_account') required this.fromAccount,
      @JsonKey(name: 'to_account') required this.toAccount});
  factory $Transaction.fromJson(Map<String, dynamic> json) =>
      _$$TransactionFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final DateTime date;
  @override
  final String merchant;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final String description;
  @override
  final String category;
  @override
  @JsonKey(name: 'from_account')
  final String fromAccount;
  @override
  @JsonKey(name: 'to_account')
  final String toAccount;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $$TransactionCopyWith<$Transaction> get copyWith =>
      _$$TransactionCopyWithImpl<$Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is $Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, date, merchant,
      amount, currency, description, category, fromAccount, toAccount);

  @override
  String toString() {
    return 'Transaction(id: $id, userId: $userId, date: $date, merchant: $merchant, amount: $amount, currency: $currency, description: $description, category: $category, fromAccount: $fromAccount, toAccount: $toAccount)';
  }
}

/// @nodoc
abstract mixin class $$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory $$TransactionCopyWith(
          $Transaction value, $Res Function($Transaction) _then) =
      _$$TransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      DateTime date,
      String merchant,
      int amount,
      String currency,
      String description,
      String category,
      @JsonKey(name: 'from_account') String fromAccount,
      @JsonKey(name: 'to_account') String toAccount});
}

/// @nodoc
class _$$TransactionCopyWithImpl<$Res> implements $$TransactionCopyWith<$Res> {
  _$$TransactionCopyWithImpl(this._self, this._then);

  final $Transaction _self;
  final $Res Function($Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? date = null,
    Object? merchant = null,
    Object? amount = null,
    Object? currency = null,
    Object? description = null,
    Object? category = null,
    Object? fromAccount = null,
    Object? toAccount = null,
  }) {
    return _then($Transaction(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchant: null == merchant
          ? _self.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      fromAccount: null == fromAccount
          ? _self.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _self.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
