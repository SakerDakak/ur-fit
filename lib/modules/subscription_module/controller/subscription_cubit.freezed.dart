// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionState {
  List<PackageModel> get packages;
  int? get selectedPackage;
  String? get paymentUrl;
  DiscountValueModel? get discountValue;
  String? get coupon;
  RequestState get getPackagesState;
  RequestState get getPaymentUrlState;
  RequestState get paymentResponseState;
  RequestState get couponState;
  String get errMessage;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      _$SubscriptionStateCopyWithImpl<SubscriptionState>(
          this as SubscriptionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionState &&
            const DeepCollectionEquality().equals(other.packages, packages) &&
            (identical(other.selectedPackage, selectedPackage) ||
                other.selectedPackage == selectedPackage) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.getPackagesState, getPackagesState) ||
                other.getPackagesState == getPackagesState) &&
            (identical(other.getPaymentUrlState, getPaymentUrlState) ||
                other.getPaymentUrlState == getPaymentUrlState) &&
            (identical(other.paymentResponseState, paymentResponseState) ||
                other.paymentResponseState == paymentResponseState) &&
            (identical(other.couponState, couponState) ||
                other.couponState == couponState) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(packages),
      selectedPackage,
      paymentUrl,
      discountValue,
      coupon,
      getPackagesState,
      getPaymentUrlState,
      paymentResponseState,
      couponState,
      errMessage);

  @override
  String toString() {
    return 'SubscriptionState(packages: $packages, selectedPackage: $selectedPackage, paymentUrl: $paymentUrl, discountValue: $discountValue, coupon: $coupon, getPackagesState: $getPackagesState, getPaymentUrlState: $getPaymentUrlState, paymentResponseState: $paymentResponseState, couponState: $couponState, errMessage: $errMessage)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) _then) =
      _$SubscriptionStateCopyWithImpl;
  @useResult
  $Res call(
      {List<PackageModel> packages,
      int? selectedPackage,
      String? paymentUrl,
      DiscountValueModel? discountValue,
      String? coupon,
      RequestState getPackagesState,
      RequestState getPaymentUrlState,
      RequestState paymentResponseState,
      RequestState couponState,
      String errMessage});

  $DiscountValueModelCopyWith<$Res>? get discountValue;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._self, this._then);

  final SubscriptionState _self;
  final $Res Function(SubscriptionState) _then;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
    Object? selectedPackage = freezed,
    Object? paymentUrl = freezed,
    Object? discountValue = freezed,
    Object? coupon = freezed,
    Object? getPackagesState = null,
    Object? getPaymentUrlState = null,
    Object? paymentResponseState = null,
    Object? couponState = null,
    Object? errMessage = null,
  }) {
    return _then(_self.copyWith(
      packages: null == packages
          ? _self.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
      selectedPackage: freezed == selectedPackage
          ? _self.selectedPackage
          : selectedPackage // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentUrl: freezed == paymentUrl
          ? _self.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discountValue: freezed == discountValue
          ? _self.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as DiscountValueModel?,
      coupon: freezed == coupon
          ? _self.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      getPackagesState: null == getPackagesState
          ? _self.getPackagesState
          : getPackagesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPaymentUrlState: null == getPaymentUrlState
          ? _self.getPaymentUrlState
          : getPaymentUrlState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      paymentResponseState: null == paymentResponseState
          ? _self.paymentResponseState
          : paymentResponseState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      couponState: null == couponState
          ? _self.couponState
          : couponState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountValueModelCopyWith<$Res>? get discountValue {
    if (_self.discountValue == null) {
      return null;
    }

    return $DiscountValueModelCopyWith<$Res>(_self.discountValue!, (value) {
      return _then(_self.copyWith(discountValue: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SubscriptionState].
extension SubscriptionStatePatterns on SubscriptionState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SubscriptionState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SubscriptionState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SubscriptionState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<PackageModel> packages,
            int? selectedPackage,
            String? paymentUrl,
            DiscountValueModel? discountValue,
            String? coupon,
            RequestState getPackagesState,
            RequestState getPaymentUrlState,
            RequestState paymentResponseState,
            RequestState couponState,
            String errMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionState() when $default != null:
        return $default(
            _that.packages,
            _that.selectedPackage,
            _that.paymentUrl,
            _that.discountValue,
            _that.coupon,
            _that.getPackagesState,
            _that.getPaymentUrlState,
            _that.paymentResponseState,
            _that.couponState,
            _that.errMessage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<PackageModel> packages,
            int? selectedPackage,
            String? paymentUrl,
            DiscountValueModel? discountValue,
            String? coupon,
            RequestState getPackagesState,
            RequestState getPaymentUrlState,
            RequestState paymentResponseState,
            RequestState couponState,
            String errMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionState():
        return $default(
            _that.packages,
            _that.selectedPackage,
            _that.paymentUrl,
            _that.discountValue,
            _that.coupon,
            _that.getPackagesState,
            _that.getPaymentUrlState,
            _that.paymentResponseState,
            _that.couponState,
            _that.errMessage);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<PackageModel> packages,
            int? selectedPackage,
            String? paymentUrl,
            DiscountValueModel? discountValue,
            String? coupon,
            RequestState getPackagesState,
            RequestState getPaymentUrlState,
            RequestState paymentResponseState,
            RequestState couponState,
            String errMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionState() when $default != null:
        return $default(
            _that.packages,
            _that.selectedPackage,
            _that.paymentUrl,
            _that.discountValue,
            _that.coupon,
            _that.getPackagesState,
            _that.getPaymentUrlState,
            _that.paymentResponseState,
            _that.couponState,
            _that.errMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SubscriptionState implements SubscriptionState {
  const _SubscriptionState(
      {final List<PackageModel> packages = const [],
      this.selectedPackage = null,
      this.paymentUrl = null,
      this.discountValue = null,
      this.coupon = null,
      this.getPackagesState = RequestState.initial,
      this.getPaymentUrlState = RequestState.initial,
      this.paymentResponseState = RequestState.initial,
      this.couponState = RequestState.initial,
      this.errMessage = ''})
      : _packages = packages;

  final List<PackageModel> _packages;
  @override
  @JsonKey()
  List<PackageModel> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  @JsonKey()
  final int? selectedPackage;
  @override
  @JsonKey()
  final String? paymentUrl;
  @override
  @JsonKey()
  final DiscountValueModel? discountValue;
  @override
  @JsonKey()
  final String? coupon;
  @override
  @JsonKey()
  final RequestState getPackagesState;
  @override
  @JsonKey()
  final RequestState getPaymentUrlState;
  @override
  @JsonKey()
  final RequestState paymentResponseState;
  @override
  @JsonKey()
  final RequestState couponState;
  @override
  @JsonKey()
  final String errMessage;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionStateCopyWith<_SubscriptionState> get copyWith =>
      __$SubscriptionStateCopyWithImpl<_SubscriptionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionState &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            (identical(other.selectedPackage, selectedPackage) ||
                other.selectedPackage == selectedPackage) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.getPackagesState, getPackagesState) ||
                other.getPackagesState == getPackagesState) &&
            (identical(other.getPaymentUrlState, getPaymentUrlState) ||
                other.getPaymentUrlState == getPaymentUrlState) &&
            (identical(other.paymentResponseState, paymentResponseState) ||
                other.paymentResponseState == paymentResponseState) &&
            (identical(other.couponState, couponState) ||
                other.couponState == couponState) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_packages),
      selectedPackage,
      paymentUrl,
      discountValue,
      coupon,
      getPackagesState,
      getPaymentUrlState,
      paymentResponseState,
      couponState,
      errMessage);

  @override
  String toString() {
    return 'SubscriptionState(packages: $packages, selectedPackage: $selectedPackage, paymentUrl: $paymentUrl, discountValue: $discountValue, coupon: $coupon, getPackagesState: $getPackagesState, getPaymentUrlState: $getPaymentUrlState, paymentResponseState: $paymentResponseState, couponState: $couponState, errMessage: $errMessage)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionStateCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$SubscriptionStateCopyWith(
          _SubscriptionState value, $Res Function(_SubscriptionState) _then) =
      __$SubscriptionStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<PackageModel> packages,
      int? selectedPackage,
      String? paymentUrl,
      DiscountValueModel? discountValue,
      String? coupon,
      RequestState getPackagesState,
      RequestState getPaymentUrlState,
      RequestState paymentResponseState,
      RequestState couponState,
      String errMessage});

  @override
  $DiscountValueModelCopyWith<$Res>? get discountValue;
}

/// @nodoc
class __$SubscriptionStateCopyWithImpl<$Res>
    implements _$SubscriptionStateCopyWith<$Res> {
  __$SubscriptionStateCopyWithImpl(this._self, this._then);

  final _SubscriptionState _self;
  final $Res Function(_SubscriptionState) _then;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? packages = null,
    Object? selectedPackage = freezed,
    Object? paymentUrl = freezed,
    Object? discountValue = freezed,
    Object? coupon = freezed,
    Object? getPackagesState = null,
    Object? getPaymentUrlState = null,
    Object? paymentResponseState = null,
    Object? couponState = null,
    Object? errMessage = null,
  }) {
    return _then(_SubscriptionState(
      packages: null == packages
          ? _self._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
      selectedPackage: freezed == selectedPackage
          ? _self.selectedPackage
          : selectedPackage // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentUrl: freezed == paymentUrl
          ? _self.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discountValue: freezed == discountValue
          ? _self.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as DiscountValueModel?,
      coupon: freezed == coupon
          ? _self.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      getPackagesState: null == getPackagesState
          ? _self.getPackagesState
          : getPackagesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPaymentUrlState: null == getPaymentUrlState
          ? _self.getPaymentUrlState
          : getPaymentUrlState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      paymentResponseState: null == paymentResponseState
          ? _self.paymentResponseState
          : paymentResponseState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      couponState: null == couponState
          ? _self.couponState
          : couponState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountValueModelCopyWith<$Res>? get discountValue {
    if (_self.discountValue == null) {
      return null;
    }

    return $DiscountValueModelCopyWith<$Res>(_self.discountValue!, (value) {
      return _then(_self.copyWith(discountValue: value));
    });
  }
}

// dart format on
